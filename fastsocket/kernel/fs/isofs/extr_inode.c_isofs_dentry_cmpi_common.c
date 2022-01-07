
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int len; char* name; } ;
struct dentry {int dummy; } ;


 scalar_t__ strnicmp (char*,char*,int) ;

__attribute__((used)) static int isofs_dentry_cmpi_common(struct dentry *dentry, struct qstr *a,
    struct qstr *b, int ms)
{
 int alen, blen;


 alen = a->len;
 blen = b->len;
 if (ms) {
  while (alen && a->name[alen-1] == '.')
   alen--;
  while (blen && b->name[blen-1] == '.')
   blen--;
 }
 if (alen == blen) {
  if (strnicmp(a->name, b->name, alen) == 0)
   return 0;
 }
 return 1;
}
