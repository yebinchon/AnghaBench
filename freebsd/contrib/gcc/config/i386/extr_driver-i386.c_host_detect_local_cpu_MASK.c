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

/* Variables and functions */
 char const* FUNC0 (char*,char const*,char*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

const char *FUNC2 (int argc, const char **argv)
{
  const char *cpu;
  bool arch;

  if (argc < 1)
    return NULL;

  arch = FUNC1 (argv[0], "arch") == 0;
  if (!arch && FUNC1 (argv[0], "tune"))
    return NULL;
  
  if (arch)
    {
      /* FIXME: i386 is wrong for 64bit compiler.  How can we tell if
	 we are generating 64bit or 32bit code?  */
      cpu = "i386";
    }
  else
    cpu = "generic";

  return FUNC0 ("-m", argv[0], "=", cpu, NULL);
}