
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct coff_type {int dummy; } ;
struct coff_symbol {TYPE_4__* type; TYPE_1__* where; } ;
struct coff_sfile {int dummy; } ;
struct IT_dty {int end; int neg; } ;
struct TYPE_6__ {int code; } ;
struct TYPE_7__ {TYPE_2__ function; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_3__ u; } ;
struct TYPE_5__ {int section; } ;


 int BLOCK_TYPE_BLOCK ;
 int BLOCK_TYPE_FUNCTION ;
 scalar_t__ coff_function_type ;
 int file ;
 int sysroff_swap_dty_out (int ,struct IT_dty*) ;
 int walk_tree_scope (int ,struct coff_sfile*,int ,int,int ) ;
 int walk_tree_type_1 (struct coff_sfile*,struct coff_symbol*,struct coff_type*,int) ;
 int wr_dps_end (int ,int ,int ) ;
 int wr_dps_start (struct coff_sfile*,int ,int ,int ,int) ;

__attribute__((used)) static void
walk_tree_type (struct coff_sfile *sfile, struct coff_symbol *symbol,
  struct coff_type *type, int nest)
{
  if (symbol->type->type == coff_function_type)
    {
      struct IT_dty dty;

      dty.end = 0;
      dty.neg = 0x1001;

      sysroff_swap_dty_out (file, &dty);
      walk_tree_type_1 (sfile, symbol, type, nest);
      dty.end = 1;
      sysroff_swap_dty_out (file, &dty);

      wr_dps_start (sfile,
      symbol->where->section,
      symbol->type->u.function.code,
      BLOCK_TYPE_FUNCTION, nest);
      wr_dps_start (sfile, symbol->where->section,
      symbol->type->u.function.code,
      BLOCK_TYPE_BLOCK, nest);
      walk_tree_scope (symbol->where->section,
         sfile,
         symbol->type->u.function.code,
         nest + 1, BLOCK_TYPE_BLOCK);

      wr_dps_end (symbol->where->section,
    symbol->type->u.function.code,
    BLOCK_TYPE_BLOCK);
      wr_dps_end (symbol->where->section,
    symbol->type->u.function.code, BLOCK_TYPE_FUNCTION);
    }
  else
    {
      struct IT_dty dty;

      dty.end = 0;
      dty.neg = 0x1001;
      sysroff_swap_dty_out (file, &dty);
      walk_tree_type_1 (sfile, symbol, type, nest);
      dty.end = 1;
      sysroff_swap_dty_out (file, &dty);
    }
}
