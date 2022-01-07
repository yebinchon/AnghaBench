
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_3__* constraint_t ;
typedef int constraint_graph_t ;
typedef int bitmap ;
struct TYPE_12__ {int solution; int is_special_var; } ;
struct TYPE_10__ {scalar_t__ type; unsigned int var; int offset; } ;
struct TYPE_9__ {scalar_t__ type; unsigned int var; } ;
struct TYPE_11__ {TYPE_2__ rhs; TYPE_1__ lhs; } ;


 scalar_t__ ADDRESSOF ;
 scalar_t__ DEREF ;
 scalar_t__ SCALAR ;
 int SET_BIT (int ,unsigned int) ;
 int TEST_BIT (int ,unsigned int) ;
 int changed ;
 int changed_count ;
 int do_da_constraint (int ,TYPE_3__*,int ) ;
 int do_ds_constraint (TYPE_3__*,int ) ;
 int do_sd_constraint (int ,TYPE_3__*,int ) ;
 unsigned int find (unsigned int) ;
 int gcc_assert (int) ;
 TYPE_4__* get_varinfo (unsigned int) ;
 int set_union_with_increment (int ,int ,int ) ;

__attribute__((used)) static void
do_complex_constraint (constraint_graph_t graph, constraint_t c, bitmap delta)
{
  if (c->lhs.type == DEREF)
    {
      if (c->rhs.type == ADDRESSOF)
 {

   do_da_constraint (graph, c, delta);
 }
      else
 {

   do_ds_constraint (c, delta);
 }
    }
  else if (c->rhs.type == DEREF)
    {

      if (!(get_varinfo (c->lhs.var)->is_special_var))
 do_sd_constraint (graph, c, delta);
    }
  else
    {
      bitmap tmp;
      bitmap solution;
      bool flag = 0;
      unsigned int t;

      gcc_assert (c->rhs.type == SCALAR && c->lhs.type == SCALAR);
      t = find (c->rhs.var);
      solution = get_varinfo (t)->solution;
      t = find (c->lhs.var);
      tmp = get_varinfo (t)->solution;

      flag = set_union_with_increment (tmp, solution, c->rhs.offset);

      if (flag)
 {
   get_varinfo (t)->solution = tmp;
   if (!TEST_BIT (changed, t))
     {
       SET_BIT (changed, t);
       changed_count++;
     }
 }
    }
}
