
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int len; char* name; int hash; } ;
struct dentry {int dummy; } ;


 int end_name_hash (unsigned long) ;
 unsigned long init_name_hash () ;
 unsigned long partial_name_hash (char,unsigned long) ;
 char tolower (int ) ;

__attribute__((used)) static int
isofs_hashi_common(struct dentry *dentry, struct qstr *qstr, int ms)
{
 const char *name;
 int len;
 char c;
 unsigned long hash;

 len = qstr->len;
 name = qstr->name;
 if (ms) {
  while (len && name[len-1] == '.')
   len--;
 }

 hash = init_name_hash();
 while (len--) {
  c = tolower(*name++);
  hash = partial_name_hash(c, hash);
 }
 qstr->hash = end_name_hash(hash);

 return 0;
}
