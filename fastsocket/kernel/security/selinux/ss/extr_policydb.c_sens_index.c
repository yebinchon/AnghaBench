
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nprim; } ;
struct policydb {void** p_sens_val_to_name; TYPE_2__ p_levels; } ;
struct level_datum {TYPE_1__* level; int isalias; } ;
struct TYPE_3__ {int sens; } ;


 int EINVAL ;

__attribute__((used)) static int sens_index(void *key, void *datum, void *datap)
{
 struct policydb *p;
 struct level_datum *levdatum;

 levdatum = datum;
 p = datap;

 if (!levdatum->isalias) {
  if (!levdatum->level->sens ||
      levdatum->level->sens > p->p_levels.nprim)
   return -EINVAL;
  p->p_sens_val_to_name[levdatum->level->sens - 1] = key;
 }

 return 0;
}
