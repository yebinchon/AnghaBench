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
typedef  int /*<<< orphan*/  instr ;
typedef  int CORE_ADDR ;

/* Variables and functions */
 int BUNDLE_LEN ; 
 int /*<<< orphan*/  IA64_BREAKPOINT ; 
 scalar_t__ L ; 
 int SLOT_MULTIPLIER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,long long*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 long long FUNC4 (char*,int) ; 
 int FUNC5 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int) ; 
 scalar_t__** template_encoding_table ; 

__attribute__((used)) static int
FUNC7 (CORE_ADDR addr, char *contents_cache)
{
  char bundle[BUNDLE_LEN];
  int slotnum = (int) (addr & 0x0f) / SLOT_MULTIPLIER;
  long long instr;
  int val;
  int template;

  if (slotnum > 2)
    FUNC0("Can't insert breakpoint for slot numbers greater than 2.");

  addr &= ~0x0f;

  val = FUNC5 (addr, bundle, BUNDLE_LEN);

  /* Check for L type instruction in 2nd slot, if present then
     bump up the slot number to the 3rd slot */
  template = FUNC1 (bundle, 0, 5);
  if (slotnum == 1 && template_encoding_table[template][1] == L)
    {
      slotnum = 2;
    }

  instr = FUNC4 (bundle, slotnum);
  FUNC2(contents_cache, &instr, sizeof(instr));
  FUNC3 (bundle, IA64_BREAKPOINT, slotnum);
  if (val == 0)
    FUNC6 (addr, bundle, BUNDLE_LEN);

  return val;
}