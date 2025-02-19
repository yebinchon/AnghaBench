
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int len; char* name; } ;
struct dentry {int dummy; } ;



__attribute__((used)) static int
adfs_compare(struct dentry *parent, struct qstr *entry, struct qstr *name)
{
 int i;

 if (entry->len != name->len)
  return 1;

 for (i = 0; i < name->len; i++) {
  char a, b;

  a = entry->name[i];
  b = name->name[i];

  if (a >= 'A' && a <= 'Z')
   a += 'a' - 'A';
  if (b >= 'A' && b <= 'Z')
   b += 'a' - 'A';

  if (a != b)
   return 1;
 }
 return 0;
}
