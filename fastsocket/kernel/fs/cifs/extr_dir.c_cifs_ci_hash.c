
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qstr {int len; int hash; int * name; } ;
struct nls_table {int dummy; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_4__ {struct nls_table* local_nls; } ;
struct TYPE_3__ {int i_sb; } ;


 TYPE_2__* CIFS_SB (int ) ;
 int end_name_hash (unsigned long) ;
 unsigned long init_name_hash () ;
 int nls_tolower (struct nls_table*,int ) ;
 unsigned long partial_name_hash (int ,unsigned long) ;

__attribute__((used)) static int cifs_ci_hash(struct dentry *dentry, struct qstr *q)
{
 struct nls_table *codepage = CIFS_SB(dentry->d_inode->i_sb)->local_nls;
 unsigned long hash;
 int i;

 hash = init_name_hash();
 for (i = 0; i < q->len; i++)
  hash = partial_name_hash(nls_tolower(codepage, q->name[i]),
      hash);
 q->hash = end_name_hash(hash);

 return 0;
}
