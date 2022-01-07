
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_3__* edge ;
struct TYPE_7__ {TYPE_2__* dest; TYPE_1__* src; } ;
struct TYPE_6__ {int index; } ;
struct TYPE_5__ {int index; } ;
typedef int FILE ;


 int fprintf (int *,char*,int,int) ;
 int print_exprs (int *,char const*,int ,char const*,int ,char*) ;

__attribute__((used)) static void
print_exprs_edge (FILE *f, edge e, const char *str1, tree expr1,
    const char *str2, tree expr2)
{
  print_exprs (f, str1, expr1, str2, expr2, " across an abnormal edge");
  fprintf (f, " from BB%d->BB%d\n", e->src->index,
        e->dest->index);
}
