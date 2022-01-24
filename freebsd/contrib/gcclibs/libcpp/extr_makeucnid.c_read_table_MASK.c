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
 int C99 ; 
 int CXX ; 
 void** combining_value ; 
 unsigned long** decomp ; 
 int digit ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int* flags ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 scalar_t__ FUNC6 (char) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 void* FUNC8 (char*,char**,int) ; 

__attribute__((used)) static void
FUNC9 (char *fname)
{
  FILE * f = FUNC4 (fname, "r");
  
  if (!f)
    FUNC0 ("opening UnicodeData.txt");
  for (;;)
    {
      char line[256];
      unsigned long codepoint, this_decomp[4];
      char *l;
      int i;
      int decomp_useful;

      if (!FUNC3 (line, sizeof (line), f))
	break;
      codepoint = FUNC8 (line, &l, 16);
      if (l == line || *l != ';')
	FUNC0 ("parsing UnicodeData.txt, reading code point");
      if (codepoint > 0xffff || ! (flags[codepoint] & (C99 | CXX)))
	continue;

      do {
	l++;
      } while (*l != ';');
      /* Category value; things starting with 'N' are numbers of some
	 kind.  */
      if (*++l == 'N')
	flags[codepoint] |= digit;

      do {
	l++;
      } while (*l != ';');
      /* Canonical combining class; in NFC/NFKC, they must be increasing
	 (or zero).  */
      if (! FUNC5 (*++l))
	FUNC0 ("parsing UnicodeData.txt, combining class not number");
      combining_value[codepoint] = FUNC8 (l, &l, 10);
      if (*l++ != ';')
	FUNC0 ("parsing UnicodeData.txt, junk after combining class");
	
      /* Skip over bidi value.  */
      do {
	l++;
      } while (*l != ';');
      
      /* Decomposition mapping.  */
      decomp_useful = flags[codepoint];
      if (*++l == '<')  /* Compatibility mapping. */
	continue;
      for (i = 0; i < 4; i++)
	{
	  if (*l == ';')
	    break;
	  if (!FUNC7 (*l))
	    FUNC0 ("parsing UnicodeData.txt, decomposition format");
	  this_decomp[i] = FUNC8 (l, &l, 16);
	  decomp_useful &= flags[this_decomp[i]];
	  while (FUNC6 (*l))
	    l++;
	}
      if (i > 2)  /* Decomposition too long.  */
	FUNC0 ("parsing UnicodeData.txt, decomposition too long");
      if (decomp_useful)
	while (--i >= 0)
	  decomp[codepoint][i] = this_decomp[i];
    }
  if (FUNC2 (f))
    FUNC0 ("reading UnicodeData.txt");
  FUNC1 (f);
}