#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ui_file {int dummy; } ;
struct symbol {int dummy; } ;
struct dwarf2_locexpr_baton {int size; scalar_t__* data; TYPE_1__* objfile; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ DW_OP_GNU_push_tls_address ; 
 scalar_t__ DW_OP_addr ; 
 scalar_t__ DW_OP_reg0 ; 
 scalar_t__ DW_OP_reg31 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct dwarf2_locexpr_baton* FUNC2 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6 (struct symbol *symbol, struct ui_file *stream)
{
  /* FIXME: be more extensive.  */
  struct dwarf2_locexpr_baton *dlbaton = FUNC2 (symbol);

  if (dlbaton->size == 1
      && dlbaton->data[0] >= DW_OP_reg0
      && dlbaton->data[0] <= DW_OP_reg31)
    {
      int regno = FUNC0 (dlbaton->data[0] - DW_OP_reg0);
      FUNC4 (stream,
			"a variable in register %s", FUNC1 (regno));
      return 1;
    }

  /* The location expression for a TLS variable looks like this (on a
     64-bit LE machine):

     DW_AT_location    : 10 byte block: 3 4 0 0 0 0 0 0 0 e0
                        (DW_OP_addr: 4; DW_OP_GNU_push_tls_address)
     
     0x3 is the encoding for DW_OP_addr, which has an operand as long
     as the size of an address on the target machine (here is 8
     bytes).  0xe0 is the encoding for DW_OP_GNU_push_tls_address.
     The operand represents the offset at which the variable is within
     the thread local storage.  */

  if (dlbaton->size > 1 
      && dlbaton->data[dlbaton->size - 1] == DW_OP_GNU_push_tls_address)
    if (dlbaton->data[0] == DW_OP_addr)
      {
	int bytes_read;
	CORE_ADDR offset = FUNC3 (&dlbaton->data[1],
						&dlbaton->data[dlbaton->size - 1],
						&bytes_read);
	FUNC4 (stream, 
			  "a thread-local variable at offset %s in the "
			  "thread-local storage for `%s'",
			  FUNC5 (offset), dlbaton->objfile->name);
	return 1;
      }
  

  FUNC4 (stream,
		    "a variable with complex or multiple locations (DWARF2)");
  return 1;
}