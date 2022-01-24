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
 int PREFIX_CS ; 
 int PREFIX_DS ; 
 int PREFIX_ES ; 
 int PREFIX_FS ; 
 int PREFIX_GS ; 
 int PREFIX_SS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  b_mode ; 
 int* codep ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ intel_syntax ; 
 int prefixes ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  v_mode ; 
 int /*<<< orphan*/  z_mode ; 

__attribute__((used)) static void
FUNC3 (int code, int sizeflag)
{
  if (intel_syntax)
    {
      switch (codep[-1])
	{
	case 0x6f:	/* outsw/outsl */
	  FUNC1 (z_mode, sizeflag);
	  break;
	case 0xa5:	/* movsw/movsl/movsq */
	case 0xa7:	/* cmpsw/cmpsl/cmpsq */
	case 0xad:	/* lodsw/lodsl/lodsq */
	  FUNC1 (v_mode, sizeflag);
	  break;
	default:
	  FUNC1 (b_mode, sizeflag);
	}
    }
  if ((prefixes
       & (PREFIX_CS
	  | PREFIX_DS
	  | PREFIX_SS
	  | PREFIX_ES
	  | PREFIX_FS
	  | PREFIX_GS)) == 0)
    prefixes |= PREFIX_DS;
  FUNC0 ();
  FUNC2 (code, sizeflag);
}