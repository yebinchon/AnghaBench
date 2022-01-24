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
typedef  int /*<<< orphan*/  symbolS ;
typedef  int bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  asymbol ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  stdoutput ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * symbol_rootP ; 
 int symbol_table_frozen ; 

__attribute__((used)) static void
FUNC6 (void)
{
  int nsyms;
  asymbol **asympp;
  symbolS *symp;
  bfd_boolean result;

  /* Count symbols.  We can't rely on a count made by the loop in
     write_object_file, because *_frob_file may add a new symbol or
     two.  */
  nsyms = 0;
  for (symp = symbol_rootP; symp; symp = FUNC5 (symp))
    nsyms++;

  if (nsyms)
    {
      int i;
      bfd_size_type amt = (bfd_size_type) nsyms * sizeof (asymbol *);

      asympp = FUNC1 (stdoutput, amt);
      symp = symbol_rootP;
      for (i = 0; i < nsyms; i++, symp = FUNC5 (symp))
	{
	  asympp[i] = FUNC3 (symp);
	  FUNC4 (symp);
	}
    }
  else
    asympp = 0;
  result = FUNC2 (stdoutput, asympp, nsyms);
  FUNC0 (result);
  symbol_table_frozen = 1;
}