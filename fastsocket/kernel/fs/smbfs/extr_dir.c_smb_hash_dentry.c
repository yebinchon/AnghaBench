
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int len; int hash; int * name; } ;
struct dentry {int dummy; } ;


 int end_name_hash (unsigned long) ;
 unsigned long init_name_hash () ;
 unsigned long partial_name_hash (int ,unsigned long) ;
 int tolower (int ) ;

__attribute__((used)) static int
smb_hash_dentry(struct dentry *dir, struct qstr *this)
{
 unsigned long hash;
 int i;

 hash = init_name_hash();
 for (i=0; i < this->len ; i++)
  hash = partial_name_hash(tolower(this->name[i]), hash);
 this->hash = end_name_hash(hash);

 return 0;
}
