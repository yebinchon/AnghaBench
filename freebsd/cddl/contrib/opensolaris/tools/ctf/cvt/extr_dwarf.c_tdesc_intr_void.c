
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tdesc_t ;
struct TYPE_4__ {int * dw_void; } ;
typedef TYPE_1__ dwarf_t ;


 int TID_VOID ;
 int * tdesc_intr_common (TYPE_1__*,int ,char*,int ) ;

__attribute__((used)) static tdesc_t *
tdesc_intr_void(dwarf_t *dw)
{
 if (dw->dw_void == ((void*)0))
  dw->dw_void = tdesc_intr_common(dw, TID_VOID, "void", 0);

 return (dw->dw_void);
}
