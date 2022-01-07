
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ dbg_mode; int dbg_mslist; int dbg_aslist; int dbg_rllist; int dbg_tu; int dbg_cu; int dbg_errarg; int dbg_errhand; } ;
typedef int Dwarf_Unsigned ;
typedef int Dwarf_Ptr ;
typedef int Dwarf_Handler ;
typedef int Dwarf_Error ;
typedef TYPE_1__* Dwarf_Debug ;


 scalar_t__ DW_DLC_RDWR ;
 scalar_t__ DW_DLC_READ ;
 scalar_t__ DW_DLC_WRITE ;
 int DW_DLE_NONE ;
 int STAILQ_INIT (int *) ;
 int _dwarf_consumer_init (TYPE_1__*,int *) ;
 int _dwarf_deinit (TYPE_1__*) ;
 int _dwarf_producer_init (TYPE_1__*,int ,int *) ;
 int _dwarf_strtab_init (TYPE_1__*,int *) ;

int
_dwarf_init(Dwarf_Debug dbg, Dwarf_Unsigned pro_flags, Dwarf_Handler errhand,
    Dwarf_Ptr errarg, Dwarf_Error *error)
{
 int ret;

 ret = DW_DLE_NONE;





 dbg->dbg_errhand = errhand;
 dbg->dbg_errarg = errarg;

 STAILQ_INIT(&dbg->dbg_cu);
 STAILQ_INIT(&dbg->dbg_tu);
 STAILQ_INIT(&dbg->dbg_rllist);
 STAILQ_INIT(&dbg->dbg_aslist);
 STAILQ_INIT(&dbg->dbg_mslist);

 if (dbg->dbg_mode == DW_DLC_READ || dbg->dbg_mode == DW_DLC_RDWR) {
  ret = _dwarf_consumer_init(dbg, error);
  if (ret != DW_DLE_NONE) {
   _dwarf_deinit(dbg);
   return (ret);
  }
 }

 if (dbg->dbg_mode == DW_DLC_WRITE) {
  ret = _dwarf_producer_init(dbg, pro_flags, error);
  if (ret != DW_DLE_NONE) {
   _dwarf_deinit(dbg);
   return (ret);
  }
 }




 if ((ret = _dwarf_strtab_init(dbg, error)) != DW_DLE_NONE)
  return (ret);

 return (DW_DLE_NONE);
}
