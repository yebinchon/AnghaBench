#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  symbolS ;
struct TYPE_14__ {int /*<<< orphan*/ * sym; } ;
typedef  TYPE_1__ segment_info_type ;
typedef  TYPE_2__* segT ;
struct TYPE_17__ {int /*<<< orphan*/  flags; } ;
struct TYPE_16__ {int /*<<< orphan*/  name; } ;
struct TYPE_15__ {TYPE_4__* symbol; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSF_SECTION_SYM ; 
 int /*<<< orphan*/  EMIT_SECTION_SYMBOLS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 TYPE_1__* FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ symbol_table_frozen ; 
 TYPE_2__* undefined_section ; 
 int /*<<< orphan*/  zero_address_frag ; 

symbolS *
FUNC12 (segT sec)
{
  segment_info_type *seginfo = FUNC5 (sec);
  symbolS *s;

  if (seginfo == 0)
    FUNC3 ();
  if (seginfo->sym)
    return seginfo->sym;

#ifndef EMIT_SECTION_SYMBOLS
#define EMIT_SECTION_SYMBOLS 1
#endif

  if (! EMIT_SECTION_SYMBOLS || symbol_table_frozen)
    {
      /* Here we know it won't be going into the symbol table.  */
      s = FUNC6 (sec->symbol->name, sec, 0, &zero_address_frag);
    }
  else
    {
      segT seg;
      s = FUNC7 (sec->symbol->name);
      /* We have to make sure it is the right symbol when we
	 have multiple sections with the same section name.  */
      if (s == NULL
	  || ((seg = FUNC1 (s)) != sec
	      && seg != undefined_section))
	s = FUNC9 (sec->symbol->name, sec, 0, &zero_address_frag);
      else if (seg == undefined_section)
	{
	  FUNC2 (s, sec);
	  FUNC11 (s, &zero_address_frag);
	}
    }

  FUNC0 (s);

  /* Use the BFD section symbol, if possible.  */
  if (FUNC4 (sec))
    FUNC10 (s, sec->symbol);
  else
    FUNC8 (s)->flags |= BSF_SECTION_SYM;

  seginfo->sym = s;
  return s;
}