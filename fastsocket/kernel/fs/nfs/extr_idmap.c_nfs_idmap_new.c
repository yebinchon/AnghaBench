
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nfs_client {struct idmap* cl_idmap; TYPE_2__* cl_rpcclient; } ;
struct TYPE_8__ {int h_type; } ;
struct TYPE_7__ {int h_type; } ;
struct idmap {TYPE_4__ idmap_group_hash; TYPE_3__ idmap_user_hash; int idmap_wq; int idmap_im_lock; int idmap_lock; int idmap_dentry; } ;
struct TYPE_5__ {int dentry; } ;
struct TYPE_6__ {TYPE_1__ cl_path; } ;


 int BUG_ON (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IDMAP_TYPE_GROUP ;
 int IDMAP_TYPE_USER ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int idmap_upcall_ops ;
 int init_waitqueue_head (int *) ;
 int kfree (struct idmap*) ;
 struct idmap* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int rpc_mkpipe (int ,char*,struct idmap*,int *,int ) ;

int
nfs_idmap_new(struct nfs_client *clp)
{
 struct idmap *idmap;
 int error;

 BUG_ON(clp->cl_idmap != ((void*)0));

 idmap = kzalloc(sizeof(*idmap), GFP_KERNEL);
 if (idmap == ((void*)0))
  return -ENOMEM;

 idmap->idmap_dentry = rpc_mkpipe(clp->cl_rpcclient->cl_path.dentry,
   "idmap", idmap, &idmap_upcall_ops, 0);
 if (IS_ERR(idmap->idmap_dentry)) {
  error = PTR_ERR(idmap->idmap_dentry);
  kfree(idmap);
  return error;
 }

 mutex_init(&idmap->idmap_lock);
 mutex_init(&idmap->idmap_im_lock);
 init_waitqueue_head(&idmap->idmap_wq);
 idmap->idmap_user_hash.h_type = IDMAP_TYPE_USER;
 idmap->idmap_group_hash.h_type = IDMAP_TYPE_GROUP;

 clp->cl_idmap = idmap;
 return 0;
}
