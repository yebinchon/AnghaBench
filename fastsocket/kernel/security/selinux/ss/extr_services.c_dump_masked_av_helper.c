
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perm_datum {int value; } ;


 int BUG_ON (int) ;

__attribute__((used)) static int dump_masked_av_helper(void *k, void *d, void *args)
{
 struct perm_datum *pdatum = d;
 char **permission_names = args;

 BUG_ON(pdatum->value < 1 || pdatum->value > 32);

 permission_names[pdatum->value - 1] = (char *)k;

 return 0;
}
