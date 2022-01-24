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
struct dwarf_cie {unsigned char* augmentation; int version; } ;
typedef  int /*<<< orphan*/  _Unwind_Word ;
typedef  int /*<<< orphan*/  _Unwind_Sword ;
typedef  int /*<<< orphan*/  _Unwind_Ptr ;

/* Variables and functions */
 int DW_EH_PE_absptr ; 
 unsigned char* FUNC0 (unsigned char const,int /*<<< orphan*/ ,unsigned char const*,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC1 (unsigned char const*,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC2 (unsigned char const*,int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static int
FUNC4 (const struct dwarf_cie *cie)
{
  const unsigned char *aug, *p;
  _Unwind_Ptr dummy;
  _Unwind_Word utmp;
  _Unwind_Sword stmp;

  aug = cie->augmentation;
  if (aug[0] != 'z')
    return DW_EH_PE_absptr;

  p = aug + FUNC3 ((const char *)aug) + 1; /* Skip the augmentation string.  */
  p = FUNC2 (p, &utmp);		/* Skip code alignment.  */
  p = FUNC1 (p, &stmp);		/* Skip data alignment.  */
  if (cie->version == 1)		/* Skip return address column.  */
    p++;
  else
    p = FUNC2 (p, &utmp);

  aug++;				/* Skip 'z' */
  p = FUNC2 (p, &utmp);		/* Skip augmentation length.  */
  while (1)
    {
      /* This is what we're looking for.  */
      if (*aug == 'R')
	return *p;
      /* Personality encoding and pointer.  */
      else if (*aug == 'P')
	{
	  /* ??? Avoid dereferencing indirect pointers, since we're
	     faking the base address.  Gotta keep DW_EH_PE_aligned
	     intact, however.  */
	  p = FUNC0 (*p & 0x7F, 0, p + 1, &dummy);
	}
      /* LSDA encoding.  */
      else if (*aug == 'L')
	p++;
      /* Otherwise end of string, or unknown augmentation.  */
      else
	return DW_EH_PE_absptr;
      aug++;
    }
}