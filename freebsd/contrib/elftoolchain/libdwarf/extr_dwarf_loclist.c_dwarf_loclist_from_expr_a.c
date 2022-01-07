
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* dbg_tu_current; TYPE_2__* dbg_cu_current; } ;
struct TYPE_7__ {int cu_length_size; int cu_version; } ;
struct TYPE_6__ {int cu_length_size; int cu_version; } ;
typedef int Dwarf_Unsigned ;
typedef int Dwarf_Small ;
typedef int Dwarf_Signed ;
typedef int Dwarf_Ptr ;
typedef int Dwarf_Locdesc ;
typedef int Dwarf_Half ;
typedef int Dwarf_Error ;
typedef TYPE_3__* Dwarf_Debug ;


 int dwarf_loclist_from_expr_b (TYPE_3__*,int ,int ,int,int,int,int **,int *,int *) ;

int
dwarf_loclist_from_expr_a(Dwarf_Debug dbg, Dwarf_Ptr bytes_in,
    Dwarf_Unsigned bytes_len, Dwarf_Half addr_size, Dwarf_Locdesc **llbuf,
    Dwarf_Signed *listlen, Dwarf_Error *error)
{
 Dwarf_Half offset_size;
 Dwarf_Small version;
 if (dbg->dbg_cu_current) {
  offset_size = dbg->dbg_cu_current->cu_length_size == 4 ? 4 : 8;
  version = dbg->dbg_cu_current->cu_version;
 } else if (dbg->dbg_tu_current) {
  offset_size = dbg->dbg_tu_current->cu_length_size == 4 ? 4 : 8;
  version = dbg->dbg_tu_current->cu_version;
 } else {

  offset_size = 4;
  version = 2;
 }

 return (dwarf_loclist_from_expr_b(dbg, bytes_in, bytes_len, addr_size,
     offset_size, version, llbuf, listlen, error));
}
