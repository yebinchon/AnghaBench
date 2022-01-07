
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qstr {int len; int name; } ;
struct nls_table {int dummy; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_4__ {struct nls_table* local_nls; } ;
struct TYPE_3__ {int i_sb; } ;


 TYPE_2__* CIFS_SB (int ) ;
 scalar_t__ nls_strnicmp (struct nls_table*,int ,int ,int ) ;

__attribute__((used)) static int cifs_ci_compare(struct dentry *dentry, struct qstr *a,
      struct qstr *b)
{
 struct nls_table *codepage = CIFS_SB(dentry->d_inode->i_sb)->local_nls;

 if ((a->len == b->len) &&
     (nls_strnicmp(codepage, a->name, b->name, a->len) == 0))
  return 0;
 return 1;
}
