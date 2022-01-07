
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ dbg_mode; } ;
typedef TYPE_1__* Dwarf_Debug ;


 scalar_t__ DW_DLC_READ ;
 scalar_t__ DW_DLC_WRITE ;
 int _dwarf_consumer_deinit (TYPE_1__*) ;
 int _dwarf_producer_deinit (TYPE_1__*) ;
 int assert (int ) ;

void
_dwarf_deinit(Dwarf_Debug dbg)
{

 assert(dbg != ((void*)0));

 if (dbg->dbg_mode == DW_DLC_READ)
  _dwarf_consumer_deinit(dbg);
 else if (dbg->dbg_mode == DW_DLC_WRITE)
  _dwarf_producer_deinit(dbg);
}
