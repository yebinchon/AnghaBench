
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tdesc_t ;
struct TYPE_4__ {int * dw_long; int dw_ptrsz; } ;
typedef TYPE_1__ dwarf_t ;


 int TID_LONG ;
 int * tdesc_intr_common (TYPE_1__*,int ,char*,int ) ;

__attribute__((used)) static tdesc_t *
tdesc_intr_long(dwarf_t *dw)
{
 if (dw->dw_long == ((void*)0)) {
  dw->dw_long = tdesc_intr_common(dw, TID_LONG, "long",
      dw->dw_ptrsz);
 }

 return (dw->dw_long);
}
