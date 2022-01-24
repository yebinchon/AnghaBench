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
 char* FUNC0 (int) ; 
 int FUNC1 (int,char*) ; 
 int i386obsd_page_size ; 
 scalar_t__ FUNC2 (char*,char const*,int) ; 
 scalar_t__ FUNC3 (int,char*,int) ; 

__attribute__((used)) static int
FUNC4 (CORE_ADDR pc, char *name)
{
  CORE_ADDR start_pc = (pc & ~(i386obsd_page_size - 1));
  const char sigreturn[] =
  {
    0xb8,
    0x67, 0x00, 0x00, 0x00,	/* movl $SYS_sigreturn, %eax */
    0xcd, 0x80			/* int $0x80 */
  };
  char *buf;

  /* Avoid reading memory from the target if possible.  If we're in a
     named function, we're certainly not in a sigtramp routine
     provided by the kernel.  Take synthetic function names into
     account though.  */
  if (name && name[0] != '<')
    return 0;

  /* If we can't read the instructions at START_PC, return zero.  */
  buf = FUNC0 (sizeof sigreturn);
  if (FUNC3 (start_pc + 0x14, buf, sizeof sigreturn))
    return 0;

  /* Check for sigreturn(2).  */
  if (FUNC2 (buf, sigreturn, sizeof sigreturn) == 0)
    return 1;

  /* Check for a traditional BSD sigtramp routine.  */
  return FUNC1 (pc, name);
}