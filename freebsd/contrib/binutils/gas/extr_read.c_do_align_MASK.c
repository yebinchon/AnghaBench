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
typedef  scalar_t__ ATTRIBUTE_UNUSED_LABEL ;

/* Variables and functions */
 scalar_t__ OCTETS_PER_BYTE_POWER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ absolute_section ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int,int) ; 
 int /*<<< orphan*/  just_record_alignment ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  need_pass_2 ; 
 scalar_t__ now_seg ; 
 scalar_t__ FUNC7 (scalar_t__) ; 

__attribute__((used)) static void
FUNC8 (int n, char *fill, int len, int max)
{
  if (now_seg == absolute_section)
    {
      if (fill != NULL)
	while (len-- > 0)
	  if (*fill++ != '\0')
	    {
	      FUNC1 (FUNC0("ignoring fill value in absolute section"));
	      break;
	    }
      fill = NULL;
      len = 0;
    }

#ifdef md_flush_pending_output
  md_flush_pending_output ();
#endif
#ifdef md_do_align
  md_do_align (n, fill, len, max, just_record_alignment);
#endif

  /* Only make a frag if we HAVE to...  */
  if (n != 0 && !need_pass_2)
    {
      if (fill == NULL)
	{
	  if (FUNC7 (now_seg))
	    FUNC3 (n, max);
	  else
	    FUNC2 (n, 0, max);
	}
      else if (len <= 1)
	FUNC2 (n, *fill, max);
      else
	FUNC4 (n, fill, len, max);
    }

#ifdef md_do_align
 just_record_alignment: ATTRIBUTE_UNUSED_LABEL
#endif

  FUNC0 (now_seg, n - OCTETS_PER_BYTE_POWER);
}