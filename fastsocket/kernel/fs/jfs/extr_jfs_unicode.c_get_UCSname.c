
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct nls_table {int dummy; } ;
struct TYPE_3__ {int len; int name; } ;
struct dentry {TYPE_1__ d_name; int d_sb; } ;
struct component_name {int namlen; int * name; } ;
struct TYPE_4__ {struct nls_table* nls_tab; } ;


 int ENAMETOOLONG ;
 int ENOMEM ;
 int GFP_NOFS ;
 int JFS_NAME_MAX ;
 TYPE_2__* JFS_SBI (int ) ;
 int jfs_strtoUCS (int *,int ,int,struct nls_table*) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;

int get_UCSname(struct component_name * uniName, struct dentry *dentry)
{
 struct nls_table *nls_tab = JFS_SBI(dentry->d_sb)->nls_tab;
 int length = dentry->d_name.len;

 if (length > JFS_NAME_MAX)
  return -ENAMETOOLONG;

 uniName->name =
     kmalloc((length + 1) * sizeof(wchar_t), GFP_NOFS);

 if (uniName->name == ((void*)0))
  return -ENOMEM;

 uniName->namlen = jfs_strtoUCS(uniName->name, dentry->d_name.name,
           length, nls_tab);

 if (uniName->namlen < 0) {
  kfree(uniName->name);
  return uniName->namlen;
 }

 return 0;
}
