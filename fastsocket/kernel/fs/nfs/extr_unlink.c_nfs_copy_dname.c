
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int len; char* name; } ;
struct TYPE_6__ {TYPE_2__ name; } ;
struct nfs_unlinkdata {TYPE_3__ args; } ;
struct TYPE_4__ {int len; int name; } ;
struct dentry {TYPE_1__ d_name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NAME_ALLOC_LEN (int) ;
 char* kmemdup (int ,int ,int ) ;

__attribute__((used)) static int nfs_copy_dname(struct dentry *dentry, struct nfs_unlinkdata *data)
{
 char *str;
 int len = dentry->d_name.len;

 str = kmemdup(dentry->d_name.name, NAME_ALLOC_LEN(len), GFP_KERNEL);
 if (!str)
  return -ENOMEM;
 data->args.name.len = len;
 data->args.name.name = str;
 return 0;
}
