
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int errarg; int (* errhand ) (TYPE_1__,int ) ;} ;
struct TYPE_9__ {int dbg_errarg; int (* dbg_errhand ) (TYPE_1__,int ) ;} ;
struct TYPE_8__ {int err_error; int err_elferror; char const* err_func; int err_line; char* err_msg; } ;
typedef TYPE_1__ Dwarf_Error ;
typedef TYPE_2__* Dwarf_Debug ;


 TYPE_5__ _libdwarf ;
 int stub1 (TYPE_1__,int ) ;
 int stub2 (TYPE_1__,int ) ;

void
_dwarf_set_error(Dwarf_Debug dbg, Dwarf_Error *error, int errorcode,
    int elferrorcode, const char *functionname, int linenumber)
{
 Dwarf_Error de;

 de.err_error = errorcode;
 de.err_elferror = elferrorcode;
 de.err_func = functionname;
 de.err_line = linenumber;
 de.err_msg[0] = '\0';
 if (error)
  *error = de;
 else if (dbg && dbg->dbg_errhand)
  dbg->dbg_errhand(de, dbg->dbg_errarg);
 else if (_libdwarf.errhand)
  _libdwarf.errhand(de, _libdwarf.errarg);


}
