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
struct frame_info {scalar_t__ pc; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  SP_REGNUM ; 
 scalar_t__ FUNC0 (char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static CORE_ADDR
FUNC4 (struct frame_info *frame)
{
  char opcode[7];
  static const unsigned char call_inst[] =
  { 0x9a, 0, 0, 0, 0, 8, 0 };	/* lcall 0x8,0x0 */

  FUNC1 (frame->pc - 7, opcode, 7);
  if (FUNC0 (opcode, call_inst, 7) == 0)
    return FUNC2 (FUNC3 (SP_REGNUM) + 4, 4);

  return FUNC2 (FUNC3 (SP_REGNUM), 4);
}