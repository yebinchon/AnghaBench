
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qstr {unsigned int len; char* name; int hash; } ;
struct dentry {int d_sb; } ;
struct TYPE_2__ {int sb_cp_table; } ;


 int end_name_hash (unsigned long) ;
 int hpfs_adjust_length (char*,unsigned int*) ;
 TYPE_1__* hpfs_sb (int ) ;
 int hpfs_upcase (int ,char) ;
 unsigned long init_name_hash () ;
 unsigned long partial_name_hash (int ,unsigned long) ;

__attribute__((used)) static int hpfs_hash_dentry(struct dentry *dentry, struct qstr *qstr)
{
 unsigned long hash;
 int i;
 unsigned l = qstr->len;

 if (l == 1) if (qstr->name[0]=='.') goto x;
 if (l == 2) if (qstr->name[0]=='.' || qstr->name[1]=='.') goto x;
 hpfs_adjust_length((char *)qstr->name, &l);



 x:

 hash = init_name_hash();
 for (i = 0; i < l; i++)
  hash = partial_name_hash(hpfs_upcase(hpfs_sb(dentry->d_sb)->sb_cp_table,qstr->name[i]), hash);
 qstr->hash = end_name_hash(hash);

 return 0;
}
