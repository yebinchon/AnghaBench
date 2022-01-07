
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct df {int num_problems_defined; TYPE_2__** problems_in_order; } ;
struct TYPE_4__ {TYPE_1__* problem; } ;
struct TYPE_3__ {int (* free_fun ) (TYPE_2__*) ;} ;


 int free (struct df*) ;
 int stub1 (TYPE_2__*) ;

void
df_finish1 (struct df *df)
{
  int i;

  for (i = 0; i < df->num_problems_defined; i++)
    df->problems_in_order[i]->problem->free_fun (df->problems_in_order[i]);

  free (df);
}
