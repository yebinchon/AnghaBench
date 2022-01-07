
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int (* toupper_t ) (int const) ;
struct qstr {int hash; int len; int * name; } ;
struct dentry {int dummy; } ;


 int affs_check_name (int *,int ) ;
 int end_name_hash (unsigned long) ;
 unsigned long init_name_hash () ;
 int min (int ,unsigned int) ;
 unsigned long partial_name_hash (int ,unsigned long) ;

__attribute__((used)) static inline int
__affs_hash_dentry(struct dentry *dentry, struct qstr *qstr, toupper_t toupper)
{
 const u8 *name = qstr->name;
 unsigned long hash;
 int i;

 i = affs_check_name(qstr->name,qstr->len);
 if (i)
  return i;

 hash = init_name_hash();
 i = min(qstr->len, 30u);
 for (; i > 0; name++, i--)
  hash = partial_name_hash(toupper(*name), hash);
 qstr->hash = end_name_hash(hash);

 return 0;
}
