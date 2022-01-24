#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct coff_type {int dummy; } ;
struct coff_symbol {TYPE_4__* type; TYPE_1__* where; } ;
struct coff_sfile {int dummy; } ;
struct IT_dty {int end; int neg; } ;
struct TYPE_6__ {int /*<<< orphan*/  code; } ;
struct TYPE_7__ {TYPE_2__ function; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_3__ u; } ;
struct TYPE_5__ {int /*<<< orphan*/  section; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_TYPE_BLOCK ; 
 int /*<<< orphan*/  BLOCK_TYPE_FUNCTION ; 
 scalar_t__ coff_function_type ; 
 int /*<<< orphan*/  file ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct IT_dty*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct coff_sfile*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct coff_sfile*,struct coff_symbol*,struct coff_type*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct coff_sfile*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5 (struct coff_sfile *sfile, struct coff_symbol *symbol,
		struct coff_type *type, int nest)
{
  if (symbol->type->type == coff_function_type)
    {
      struct IT_dty dty;

      dty.end = 0;
      dty.neg = 0x1001;

      FUNC0 (file, &dty);
      FUNC2 (sfile, symbol, type, nest);
      dty.end = 1;
      FUNC0 (file, &dty);

      FUNC4 (sfile,
		    symbol->where->section,
		    symbol->type->u.function.code,
		    BLOCK_TYPE_FUNCTION, nest);
      FUNC4 (sfile, symbol->where->section,
		    symbol->type->u.function.code,
		    BLOCK_TYPE_BLOCK, nest);
      FUNC1 (symbol->where->section,
		       sfile,
		       symbol->type->u.function.code,
		       nest + 1, BLOCK_TYPE_BLOCK);

      FUNC3 (symbol->where->section,
		  symbol->type->u.function.code,
		  BLOCK_TYPE_BLOCK);
      FUNC3 (symbol->where->section,
		  symbol->type->u.function.code, BLOCK_TYPE_FUNCTION);
    }
  else
    {
      struct IT_dty dty;

      dty.end = 0;
      dty.neg = 0x1001;
      FUNC0 (file, &dty);
      FUNC2 (sfile, symbol, type, nest);
      dty.end = 1;
      FUNC0 (file, &dty);
    }
}