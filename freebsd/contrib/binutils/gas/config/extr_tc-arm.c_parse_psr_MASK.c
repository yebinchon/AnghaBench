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
struct asm_psr {int field; } ;
struct TYPE_2__ {int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int FAIL ; 
 scalar_t__ FUNC0 (char) ; 
 unsigned long PSR_c ; 
 unsigned long PSR_f ; 
 unsigned long SPSR_BIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  arm_psr_hsh ; 
 int /*<<< orphan*/  arm_v7m_psr_hsh ; 
 struct asm_psr* FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__ inst ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC4 (char **str)
{
  char *p;
  unsigned long psr_field;
  const struct asm_psr *psr;
  char *start;

  /* CPSR's and SPSR's can now be lowercase.  This is just a convenience
     feature for ease of use and backwards compatibility.  */
  p = *str;
  if (FUNC3 (p, "SPSR", 4) == 0)
    psr_field = SPSR_BIT;
  else if (FUNC3 (p, "CPSR", 4) == 0)
    psr_field = 0;
  else
    {
      start = p;
      do
	p++;
      while (FUNC0 (*p) || *p == '_');

      psr = FUNC2 (arm_v7m_psr_hsh, start, p - start);
      if (!psr)
	return FAIL;

      *str = p;
      return psr->field;
    }

  p += 4;
  if (*p == '_')
    {
      /* A suffix follows.  */
      p++;
      start = p;

      do
	p++;
      while (FUNC0 (*p) || *p == '_');

      psr = FUNC2 (arm_psr_hsh, start, p - start);
      if (!psr)
	goto error;

      psr_field |= psr->field;
    }
  else
    {
      if (FUNC0 (*p))
	goto error;    /* Garbage after "[CS]PSR".  */

      psr_field |= (PSR_c | PSR_f);
    }
  *str = p;
  return psr_field;

 error:
  inst.error = FUNC1("flag for {c}psr instruction expected");
  return FAIL;
}