#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int sy_resolved; int sy_used; } ;
typedef  TYPE_1__ symbolS ;
struct local_symbol {int /*<<< orphan*/  lsy_name; int /*<<< orphan*/  lsy_value; int /*<<< orphan*/  lsy_section; int /*<<< orphan*/ * lsy_marker; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct local_symbol*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  local_hash ; 
 int /*<<< orphan*/  local_symbol_conversion_count ; 
 scalar_t__ FUNC3 (struct local_symbol*) ; 
 int /*<<< orphan*/  FUNC4 (struct local_symbol*) ; 
 TYPE_1__* FUNC5 (struct local_symbol*) ; 
 int /*<<< orphan*/  FUNC6 (struct local_symbol*) ; 
 scalar_t__ FUNC7 (struct local_symbol*) ; 
 int /*<<< orphan*/  FUNC8 (struct local_symbol*,TYPE_1__*) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static symbolS *
FUNC11 (struct local_symbol *locsym)
{
  symbolS *ret;

  FUNC1 (locsym->lsy_marker == NULL);
  if (FUNC3 (locsym))
    return FUNC5 (locsym);

  ++local_symbol_conversion_count;

  ret = FUNC9 (locsym->lsy_name, locsym->lsy_section, locsym->lsy_value,
		    FUNC4 (locsym));

  if (FUNC7 (locsym))
    ret->sy_resolved = 1;

  /* Local symbols are always either defined or used.  */
  ret->sy_used = 1;

#ifdef TC_LOCAL_SYMFIELD_CONVERT
  TC_LOCAL_SYMFIELD_CONVERT (locsym, ret);
#endif

  FUNC10 (ret);

  FUNC6 (locsym);
  FUNC8 (locsym, ret);

  FUNC2 (local_hash, locsym->lsy_name, NULL);

  return ret;
}