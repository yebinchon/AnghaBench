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
struct frame_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ BFD_ENDIAN_BIG ; 
 char* FUNC0 (int) ; 
 scalar_t__ TARGET_BYTE_ORDER ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct frame_info*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6 (struct frame_info *frame, int regno,
			      char *rare_buffer)
{
  int raw_size = FUNC5 (current_gdbarch, regno);
  char *raw_buffer = FUNC1 (raw_size);

  if (!FUNC3 (frame, regno, raw_buffer))
    FUNC2 ("can't read register %d (%s)", regno, FUNC0 (regno));
  if (raw_size == 8)
    {
      /* We have a 64-bit value for this register.  Find the low-order
         32 bits.  */
      int offset;

      if (TARGET_BYTE_ORDER == BFD_ENDIAN_BIG)
	offset = 4;
      else
	offset = 0;

      FUNC4 (rare_buffer, raw_buffer + offset, 4);
    }
  else
    {
      FUNC4 (rare_buffer, raw_buffer, 4);
    }
}