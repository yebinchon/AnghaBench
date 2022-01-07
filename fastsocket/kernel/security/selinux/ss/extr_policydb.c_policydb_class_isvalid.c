
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int nprim; } ;
struct policydb {TYPE_1__ p_classes; } ;



int policydb_class_isvalid(struct policydb *p, unsigned int class)
{
 if (!class || class > p->p_classes.nprim)
  return 0;
 return 1;
}
