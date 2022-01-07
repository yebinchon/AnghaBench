
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int t_id; int t_type; } ;
typedef TYPE_1__ tdesc_t ;


 int TYPEDEF_UNRES ;
 TYPE_1__* xcalloc (int) ;

__attribute__((used)) static tdesc_t *
unres_new(int tid)
{
 tdesc_t *tdp;

 tdp = xcalloc(sizeof (*tdp));
 tdp->t_type = TYPEDEF_UNRES;
 tdp->t_id = tid;

 return (tdp);
}
