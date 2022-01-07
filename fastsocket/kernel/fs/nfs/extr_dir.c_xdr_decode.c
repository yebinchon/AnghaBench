
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct nfs_entry {TYPE_4__* fattr; } ;
struct TYPE_11__ {int gencount; int timestamp; int plus; TYPE_3__* file; int * (* decode ) (struct xdr_stream*,struct nfs_entry*,int ,int ) ;} ;
typedef TYPE_5__ nfs_readdir_descriptor_t ;
typedef int __be32 ;
struct TYPE_10__ {int gencount; int time_start; } ;
struct TYPE_8__ {TYPE_1__* dentry; } ;
struct TYPE_9__ {TYPE_2__ f_path; } ;
struct TYPE_7__ {int d_inode; } ;


 scalar_t__ IS_ERR (int *) ;
 int NFS_SERVER (int ) ;
 int PTR_ERR (int *) ;
 int * stub1 (struct xdr_stream*,struct nfs_entry*,int ,int ) ;

__attribute__((used)) static
int xdr_decode(nfs_readdir_descriptor_t *desc, struct nfs_entry *entry, struct xdr_stream *stream)
{
 __be32 *p = desc->decode(stream, entry, NFS_SERVER(desc->file->f_path.dentry->d_inode), desc->plus);
 if (IS_ERR(p))
  return PTR_ERR(p);

 entry->fattr->time_start = desc->timestamp;
 entry->fattr->gencount = desc->gencount;
 return 0;
}
