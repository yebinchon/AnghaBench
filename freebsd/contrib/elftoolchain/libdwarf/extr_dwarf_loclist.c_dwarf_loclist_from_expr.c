
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dbg_pointer_size; } ;
typedef int Dwarf_Unsigned ;
typedef int Dwarf_Signed ;
typedef int Dwarf_Ptr ;
typedef int Dwarf_Locdesc ;
typedef int Dwarf_Error ;
typedef TYPE_1__* Dwarf_Debug ;


 int dwarf_loclist_from_expr_a (TYPE_1__*,int ,int ,int ,int **,int *,int *) ;

int
dwarf_loclist_from_expr(Dwarf_Debug dbg, Dwarf_Ptr bytes_in,
    Dwarf_Unsigned bytes_len, Dwarf_Locdesc **llbuf, Dwarf_Signed *listlen,
    Dwarf_Error *error)
{

 return (dwarf_loclist_from_expr_a(dbg, bytes_in, bytes_len,
     dbg->dbg_pointer_size, llbuf, listlen, error));
}
