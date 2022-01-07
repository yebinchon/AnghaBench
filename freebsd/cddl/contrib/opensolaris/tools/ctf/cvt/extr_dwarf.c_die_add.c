
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int t_id; } ;
typedef TYPE_1__ tdesc_t ;
typedef int dwarf_t ;
typedef int Dwarf_Off ;


 int tdesc_add (int *,TYPE_1__*) ;
 TYPE_1__* xcalloc (int) ;

__attribute__((used)) static tdesc_t *
die_add(dwarf_t *dw, Dwarf_Off off)
{
 tdesc_t *tdp = xcalloc(sizeof (tdesc_t));

 tdp->t_id = off;

 tdesc_add(dw, tdp);

 return (tdp);
}
