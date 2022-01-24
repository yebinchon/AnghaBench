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
typedef  int unw_word ;

/* Variables and functions */
 int /*<<< orphan*/  P2 ; 
 int /*<<< orphan*/  P3 ; 
 int /*<<< orphan*/  P4 ; 
 int /*<<< orphan*/  P5 ; 
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char,unsigned char,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned char,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned char*,void*) ; 
 int /*<<< orphan*/  UNW_REG_BSP ; 
 int /*<<< orphan*/  UNW_REG_BSPSTORE ; 
 int /*<<< orphan*/  UNW_REG_FPSR ; 
 int /*<<< orphan*/  UNW_REG_LC ; 
 int /*<<< orphan*/  UNW_REG_PFS ; 
 int /*<<< orphan*/  UNW_REG_PR ; 
 int /*<<< orphan*/  UNW_REG_PSP ; 
 int /*<<< orphan*/  UNW_REG_RNAT ; 
 int /*<<< orphan*/  UNW_REG_RP ; 
 int /*<<< orphan*/  UNW_REG_UNAT ; 

__attribute__((used)) static unsigned char *
FUNC7 (unsigned char *dp, unsigned char code, void *arg)
{
  if ((code & 0x10) == 0)
    {
      unsigned char byte1 = *dp++;

      FUNC1(P2, ((code & 0xf) << 1) | ((byte1 >> 7) & 1),
		    (byte1 & 0x7f), arg);
    }
  else if ((code & 0x08) == 0)
    {
      unsigned char byte1 = *dp++, r, dst;

      r = ((code & 0x7) << 1) | ((byte1 >> 7) & 1);
      dst = (byte1 & 0x7f);
      switch (r)
	{
	case 0: FUNC4(P3, UNW_REG_PSP, dst, arg); break;
	case 1: FUNC4(P3, UNW_REG_RP, dst, arg); break;
	case 2: FUNC4(P3, UNW_REG_PFS, dst, arg); break;
	case 3: FUNC4(P3, UNW_REG_PR, dst, arg); break;
	case 4: FUNC4(P3, UNW_REG_UNAT, dst, arg); break;
	case 5: FUNC4(P3, UNW_REG_LC, dst, arg); break;
	case 6: FUNC5(P3, dst, arg); break;
	case 7: FUNC4(P3, UNW_REG_RNAT, dst, arg); break;
	case 8: FUNC4(P3, UNW_REG_BSP, dst, arg); break;
	case 9: FUNC4(P3, UNW_REG_BSPSTORE, dst, arg); break;
	case 10: FUNC4(P3, UNW_REG_FPSR, dst, arg); break;
	case 11: FUNC3(P3, dst, arg); break;
	default: FUNC0(r); break;
	}
    }
  else if ((code & 0x7) == 0)
    FUNC6(P4, dp, arg);
  else if ((code & 0x7) == 1)
    {
      unw_word grmask, frmask, byte1, byte2, byte3;

      byte1 = *dp++; byte2 = *dp++; byte3 = *dp++;
      grmask = ((byte1 >> 4) & 0xf);
      frmask = ((byte1 & 0xf) << 16) | (byte2 << 8) | byte3;
      FUNC2(P5, grmask, frmask, arg);
    }
  else
    FUNC0(code);
  return dp;
}