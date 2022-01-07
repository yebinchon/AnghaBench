
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {char const* name; int len; int hash; } ;
struct dentry {int dummy; } ;


 int EACCES ;
 int end_name_hash (unsigned long) ;
 unsigned long init_name_hash () ;
 unsigned long partial_name_hash (unsigned int,unsigned long) ;

__attribute__((used)) static int __lookup_one_len(const char *name, struct qstr *this,
  struct dentry *base, int len)
{
 unsigned long hash;
 unsigned int c;

 this->name = name;
 this->len = len;
 if (!len)
  return -EACCES;

 hash = init_name_hash();
 while (len--) {
  c = *(const unsigned char *)name++;
  if (c == '/' || c == '\0')
   return -EACCES;
  hash = partial_name_hash(c, hash);
 }
 this->hash = end_name_hash(hash);
 return 0;
}
