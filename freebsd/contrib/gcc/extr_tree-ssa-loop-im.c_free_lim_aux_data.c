
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lim_aux_data {struct lim_aux_data* next; struct lim_aux_data* depends; } ;
struct depend {struct depend* next; struct depend* depends; } ;


 int free (struct lim_aux_data*) ;

__attribute__((used)) static void
free_lim_aux_data (struct lim_aux_data *data)
{
  struct depend *dep, *next;

  for (dep = data->depends; dep; dep = next)
    {
      next = dep->next;
      free (dep);
    }
  free (data);
}
