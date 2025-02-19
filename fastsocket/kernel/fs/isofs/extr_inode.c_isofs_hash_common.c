
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int len; char* name; int hash; } ;
struct dentry {int dummy; } ;


 int full_name_hash (char const*,int) ;

__attribute__((used)) static int
isofs_hash_common(struct dentry *dentry, struct qstr *qstr, int ms)
{
 const char *name;
 int len;

 len = qstr->len;
 name = qstr->name;
 if (ms) {
  while (len && name[len-1] == '.')
   len--;
 }

 qstr->hash = full_name_hash(name, len);

 return 0;
}
