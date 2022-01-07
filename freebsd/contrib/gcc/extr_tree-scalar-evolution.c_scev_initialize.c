
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct loops {unsigned int num; TYPE_1__** parray; } ;
struct TYPE_2__ {int nb_iterations; } ;


 int BITMAP_ALLOC (int *) ;
 int NULL_TREE ;
 int already_instantiated ;
 struct loops* current_loops ;
 int del_scev_info ;
 int eq_scev_info ;
 int hash_scev_info ;
 int htab_create (int,int ,int ,int ) ;
 int initialize_scalar_evolutions_analyzer () ;
 int scalar_evolution_info ;

void
scev_initialize (struct loops *loops)
{
  unsigned i;
  current_loops = loops;

  scalar_evolution_info = htab_create (100, hash_scev_info,
           eq_scev_info, del_scev_info);
  already_instantiated = BITMAP_ALLOC (((void*)0));

  initialize_scalar_evolutions_analyzer ();

  for (i = 1; i < loops->num; i++)
    if (loops->parray[i])
      loops->parray[i]->nb_iterations = NULL_TREE;
}
