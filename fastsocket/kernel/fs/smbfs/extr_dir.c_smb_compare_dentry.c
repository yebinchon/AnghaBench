
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int len; int * name; } ;
struct dentry {int dummy; } ;


 scalar_t__ tolower (int ) ;

__attribute__((used)) static int
smb_compare_dentry(struct dentry *dir, struct qstr *a, struct qstr *b)
{
 int i, result = 1;

 if (a->len != b->len)
  goto out;
 for (i=0; i < a->len; i++) {
  if (tolower(a->name[i]) != tolower(b->name[i]))
   goto out;
 }
 result = 0;
out:
 return result;
}
