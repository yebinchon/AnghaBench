
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qstr {unsigned char* name; int hash; } ;
struct nls_table {int dummy; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_4__ {struct nls_table* nls_io; } ;
struct TYPE_3__ {int i_sb; } ;


 TYPE_2__* MSDOS_SB (int ) ;
 int end_name_hash (unsigned long) ;
 unsigned long init_name_hash () ;
 int nls_tolower (struct nls_table*,int ) ;
 unsigned long partial_name_hash (int ,unsigned long) ;
 unsigned int vfat_striptail_len (struct qstr*) ;

__attribute__((used)) static int vfat_hashi(struct dentry *dentry, struct qstr *qstr)
{
 struct nls_table *t = MSDOS_SB(dentry->d_inode->i_sb)->nls_io;
 const unsigned char *name;
 unsigned int len;
 unsigned long hash;

 name = qstr->name;
 len = vfat_striptail_len(qstr);

 hash = init_name_hash();
 while (len--)
  hash = partial_name_hash(nls_tolower(t, *name++), hash);
 qstr->hash = end_name_hash(hash);

 return 0;
}
