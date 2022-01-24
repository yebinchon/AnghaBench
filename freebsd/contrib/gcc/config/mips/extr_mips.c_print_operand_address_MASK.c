#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mips_address_info {int type; int /*<<< orphan*/  reg; int /*<<< orphan*/  offset; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  ADDRESS_CONST_INT 131 
#define  ADDRESS_LO_SUM 130 
#define  ADDRESS_REG 129 
#define  ADDRESS_SYMBOLIC 128 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct mips_address_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char) ; 
 char** reg_names ; 
 int /*<<< orphan*/  word_mode ; 

void
FUNC6 (FILE *file, rtx x)
{
  struct mips_address_info addr;

  if (FUNC3 (&addr, x, word_mode, true))
    switch (addr.type)
      {
      case ADDRESS_REG:
	FUNC5 (file, addr.offset, 0);
	FUNC1 (file, "(%s)", reg_names[FUNC0 (addr.reg)]);
	return;

      case ADDRESS_LO_SUM:
	FUNC5 (file, addr.offset, 'R');
	FUNC1 (file, "(%s)", reg_names[FUNC0 (addr.reg)]);
	return;

      case ADDRESS_CONST_INT:
	FUNC4 (file, x);
	FUNC1 (file, "(%s)", reg_names[0]);
	return;

      case ADDRESS_SYMBOLIC:
	FUNC4 (file, x);
	return;
      }
  FUNC2 ();
}