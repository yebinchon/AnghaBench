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
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int* flags ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int maybe_not_NFC ; 
 int not_NFC ; 
 int not_NFKC ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 unsigned long FUNC6 (char*,char**,int) ; 

__attribute__((used)) static void
FUNC7 (const char *fname)
{
  FILE * f = FUNC4 (fname, "r");
  
  if (!f)
    FUNC0 ("opening DerivedNormalizationProps.txt");
  for (;;)
    {
      char line[256];
      unsigned long start, end;
      char *l;
      bool not_NFC_p, not_NFKC_p, maybe_not_NFC_p;

      if (!FUNC3 (line, sizeof (line), f))
	break;
      not_NFC_p = (FUNC5 (line, "; NFC_QC; N") != NULL);
      not_NFKC_p = (FUNC5 (line, "; NFKC_QC; N") != NULL);
      maybe_not_NFC_p = (FUNC5 (line, "; NFC_QC; M") != NULL);
      if (! not_NFC_p && ! not_NFKC_p && ! maybe_not_NFC_p)
	continue;
	
      start = FUNC6 (line, &l, 16);
      if (l == line)
	FUNC0 ("parsing DerivedNormalizationProps.txt, reading start");
      if (start > 0xffff)
	continue;
      if (*l == '.' && l[1] == '.')
	end = FUNC6 (l + 2, &l, 16);
      else
	end = start;

      while (start <= end)
	flags[start++] |= ((not_NFC_p ? not_NFC : 0) 
			   | (not_NFKC_p ? not_NFKC : 0)
			   | (maybe_not_NFC_p ? maybe_not_NFC : 0)
			   );
    }
  if (FUNC2 (f))
    FUNC0 ("reading DerivedNormalizationProps.txt");
  FUNC1 (f);
}