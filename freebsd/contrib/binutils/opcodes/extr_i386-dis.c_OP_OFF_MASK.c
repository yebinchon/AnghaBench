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
typedef  int /*<<< orphan*/  bfd_vma ;

/* Variables and functions */
 int AFLAG ; 
 int PREFIX_CS ; 
 int PREFIX_DS ; 
 int PREFIX_ES ; 
 int PREFIX_FS ; 
 int PREFIX_GS ; 
 int PREFIX_SS ; 
 int SUFFIX_ALWAYS ; 
 scalar_t__ address_mode ; 
 int /*<<< orphan*/  FUNC0 () ; 
 size_t ds_reg ; 
 size_t es_reg ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 scalar_t__ intel_syntax ; 
 scalar_t__ mode_64bit ; 
 char** names_seg ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int prefixes ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 char* scratchbuf ; 

__attribute__((used)) static void
FUNC6 (int bytemode, int sizeflag)
{
  bfd_vma off;

  if (intel_syntax && (sizeflag & SUFFIX_ALWAYS))
    FUNC3 (bytemode, sizeflag);
  FUNC0 ();

  if ((sizeflag & AFLAG) || address_mode == mode_64bit)
    off = FUNC2 ();
  else
    off = FUNC1 ();

  if (intel_syntax)
    {
      if (!(prefixes & (PREFIX_CS | PREFIX_SS | PREFIX_DS
			| PREFIX_ES | PREFIX_FS | PREFIX_GS)))
	{
	  FUNC4 (names_seg[ds_reg - es_reg]);
	  FUNC4 (":");
	}
    }
  FUNC5 (scratchbuf, 1, off);
  FUNC4 (scratchbuf);
}