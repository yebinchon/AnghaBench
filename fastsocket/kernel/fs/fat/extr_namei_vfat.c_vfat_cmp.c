
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int name; } ;
struct dentry {int dummy; } ;


 scalar_t__ strncmp (int ,int ,unsigned int) ;
 unsigned int vfat_striptail_len (struct qstr*) ;

__attribute__((used)) static int vfat_cmp(struct dentry *dentry, struct qstr *a, struct qstr *b)
{
 unsigned int alen, blen;


 alen = vfat_striptail_len(a);
 blen = vfat_striptail_len(b);
 if (alen == blen) {
  if (strncmp(a->name, b->name, alen) == 0)
   return 0;
 }
 return 1;
}
