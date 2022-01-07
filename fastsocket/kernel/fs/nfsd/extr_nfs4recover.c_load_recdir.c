
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; int name; } ;
struct dentry {TYPE_1__ d_name; } ;


 int HEXDIR_LEN ;
 int nfs4_client_to_reclaim (int ) ;
 int printk (char*,int ) ;

__attribute__((used)) static int
load_recdir(struct dentry *parent, struct dentry *child)
{
 if (child->d_name.len != HEXDIR_LEN - 1) {
  printk("nfsd4: illegal name %s in recovery directory\n",
    child->d_name.name);

  return 0;
 }
 nfs4_client_to_reclaim(child->d_name.name);
 return 0;
}
