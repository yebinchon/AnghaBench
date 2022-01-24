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
struct TYPE_2__ {int jb_pc_offset; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  SP_REGNUM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  builtin_type_void_data_ptr ; 
 int /*<<< orphan*/  builtin_type_void_func_ptr ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  current_regcache ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (scalar_t__,char*,int) ; 

__attribute__((used)) static int
FUNC5 (CORE_ADDR *pc)
{
  char buf[8];
  CORE_ADDR sp, jb_addr;
  int jb_pc_offset = FUNC2 (current_gdbarch)->jb_pc_offset;
  int len = FUNC0 (builtin_type_void_func_ptr);

  /* If JB_PC_OFFSET is -1, we have no way to find out where the
     longjmp will land.  */
  if (jb_pc_offset == -1)
    return 0;

  /* Don't use I386_ESP_REGNUM here, since this function is also used
     for AMD64.  */
  FUNC3 (current_regcache, SP_REGNUM, buf);
  sp = FUNC1 (buf, builtin_type_void_data_ptr);
  if (FUNC4 (sp + len, buf, len))
    return 0;

  jb_addr = FUNC1 (buf, builtin_type_void_data_ptr);
  if (FUNC4 (jb_addr + jb_pc_offset, buf, len))
    return 0;

  *pc = FUNC1 (buf, builtin_type_void_func_ptr);
  return 1;
}