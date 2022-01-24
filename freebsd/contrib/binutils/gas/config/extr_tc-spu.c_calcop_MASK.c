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
struct spu_opcode {int* arg; } ;
struct spu_insn {int dummy; } ;

/* Variables and functions */
 int A_P ; 
 scalar_t__ FUNC0 (char const) ; 
 char* FUNC1 (char const*,struct spu_insn*,int) ; 
 char* FUNC2 (char const*,struct spu_insn*,int,int) ; 
 int syntax_error_arg ; 

__attribute__((used)) static int
FUNC3 (struct spu_opcode *format, const char *param, struct spu_insn *insn)
{
  int i;
  int paren = 0;
  int arg;

  for (i = 1; i <= format->arg[0]; i++)
    {
      arg = format->arg[i];
      syntax_error_arg = i;

      while (FUNC0 (*param))
        param++;
      if (*param == 0 || *param == ',')
	return 0;
      if (arg < A_P)
        param = FUNC2 (param, insn, arg, 1);
      else if (arg > A_P)
        param = FUNC1 (param, insn,  arg);
      else if (arg == A_P)
	{
	  paren++;
	  if ('(' != *param++)
	    return 0;
	}

      if (!param)
	return 0;

      while (FUNC0 (*param))
        param++;

      if (arg != A_P && paren)
	{
	  paren--;
	  if (')' != *param++)
	    return 0;
	}
      else if (i < format->arg[0]
	       && format->arg[i] != A_P
	       && format->arg[i+1] != A_P)
	{
	  if (',' != *param++)
	    {
	      syntax_error_arg++;
	      return 0;
	    }
	}
    }
  while (FUNC0 (*param))
    param++;
  return !paren && (*param == 0 || *param == '\n');
}