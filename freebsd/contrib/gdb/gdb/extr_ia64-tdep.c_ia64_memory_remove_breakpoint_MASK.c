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
typedef  int CORE_ADDR ;

/* Variables and functions */
 int BUNDLE_LEN ; 
 scalar_t__ L ; 
 int SLOT_MULTIPLIER ; 
 int FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (long long*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,long long,int) ; 
 int FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 
 scalar_t__** template_encoding_table ; 

__attribute__((used)) static int
FUNC5 (CORE_ADDR addr, char *contents_cache)
{
  char bundle[BUNDLE_LEN];
  int slotnum = (addr & 0x0f) / SLOT_MULTIPLIER;
  long long instr;
  int val;
  int template;

  addr &= ~0x0f;

  val = FUNC3 (addr, bundle, BUNDLE_LEN);

  /* Check for L type instruction in 2nd slot, if present then
     bump up the slot number to the 3rd slot */
  template = FUNC0 (bundle, 0, 5);
  if (slotnum == 1 && template_encoding_table[template][1] == L)
    {
      slotnum = 2;
    }

  FUNC1 (&instr, contents_cache, sizeof instr);
  FUNC2 (bundle, instr, slotnum);
  if (val == 0)
    FUNC4 (addr, bundle, BUNDLE_LEN);

  return val;
}