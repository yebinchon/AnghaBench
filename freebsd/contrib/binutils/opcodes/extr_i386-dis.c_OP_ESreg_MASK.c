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
 int /*<<< orphan*/  b_mode ; 
 int* codep ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int intel_syntax ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
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
	case 0x6d:	/* insw/insl */
	  FUNC0 (z_mode, sizeflag);
	  break;
	case 0xa5:	/* movsw/movsl/movsq */
	case 0xa7:	/* cmpsw/cmpsl/cmpsq */
	case 0xab:	/* stosw/stosl */
	case 0xaf:	/* scasw/scasl */
	  FUNC0 (v_mode, sizeflag);
	  break;
	default:
	  FUNC0 (b_mode, sizeflag);
	}
    }
  FUNC1 (&"%es:"[intel_syntax]);
  FUNC2 (code, sizeflag);
}