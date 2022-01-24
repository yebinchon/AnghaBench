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
typedef  int /*<<< orphan*/  outf_p ;

/* Variables and functions */
 int NUM_RTX_CODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int* rtx_next_new ; 

__attribute__((used)) static void
FUNC2 (void)
{
  outf_p f = FUNC0 (NULL);
  int i;

  FUNC1 (f, "\n/* Used to implement the RTX_NEXT macro.  */\n");
  FUNC1 (f, "const unsigned char rtx_next[NUM_RTX_CODE] = {\n");
  for (i = 0; i < NUM_RTX_CODE; i++)
    if (rtx_next_new[i] == -1)
      FUNC1 (f, "  0,\n");
    else
      FUNC1 (f,
	       "  RTX_HDR_SIZE + %d * sizeof (rtunion),\n",
	       rtx_next_new[i]);
  FUNC1 (f, "};\n");
}