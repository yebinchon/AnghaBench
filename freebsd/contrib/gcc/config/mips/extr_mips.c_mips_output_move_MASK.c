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
typedef  scalar_t__ rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int CONST_INT ; 
 char FUNC3 (size_t) ; 
 scalar_t__ FUNC4 (size_t) ; 
 scalar_t__ FUNC5 (size_t) ; 
 int FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (size_t) ; 
 int HIGH ; 
 int FUNC10 (scalar_t__) ; 
 scalar_t__ ISA_HAS_8CC ; 
 scalar_t__ FUNC11 (size_t) ; 
 int MEM ; 
 int REG ; 
 size_t FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (size_t) ; 
 int /*<<< orphan*/  TARGET_MIPS16 ; 
 scalar_t__ V2SFmode ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ FUNC15 (scalar_t__,scalar_t__) ; 
 char** reg_names ; 
 scalar_t__ FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 

const char *
FUNC17 (rtx dest, rtx src)
{
  enum rtx_code dest_code, src_code;
  bool dbl_p;

  dest_code = FUNC6 (dest);
  src_code = FUNC6 (src);
  dbl_p = (FUNC8 (FUNC7 (dest)) == 8);

  if (dbl_p && FUNC15 (dest, src))
    return "#";

  if ((src_code == REG && FUNC9 (FUNC12 (src)))
      || (!TARGET_MIPS16 && src == FUNC1 (FUNC7 (dest))))
    {
      if (dest_code == REG)
	{
	  if (FUNC9 (FUNC12 (dest)))
	    return "move\t%0,%z1";

	  if (FUNC11 (FUNC12 (dest)))
	    return "mt%0\t%z1";

	  if (FUNC4 (FUNC12 (dest)))
	    {
	      static char retval[] = "mt__\t%z1,%q0";
	      retval[2] = reg_names[FUNC12 (dest)][4];
	      retval[3] = reg_names[FUNC12 (dest)][5];
	      return retval;
	    }

	  if (FUNC5 (FUNC12 (dest)))
	    return (dbl_p ? "dmtc1\t%z1,%0" : "mtc1\t%z1,%0");

	  if (FUNC0 (FUNC12 (dest)))
	    {
	      static char retval[] = "dmtc_\t%z1,%0";

	      retval[4] = FUNC3 (FUNC12 (dest));
	      return (dbl_p ? retval : retval + 1);
	    }
	}
      if (dest_code == MEM)
	return (dbl_p ? "sd\t%z1,%0" : "sw\t%z1,%0");
    }
  if (dest_code == REG && FUNC9 (FUNC12 (dest)))
    {
      if (src_code == REG)
	{
	  if (FUNC4 (FUNC12 (src)))
	    {
	      static char retval[] = "mf__\t%0,%q1";
	      retval[2] = reg_names[FUNC12 (src)][4];
	      retval[3] = reg_names[FUNC12 (src)][5];
	      return retval;
	    }

	  if (FUNC13 (FUNC12 (src)) && ISA_HAS_8CC)
	    return "lui\t%0,0x3f80\n\tmovf\t%0,%.,%1";

	  if (FUNC5 (FUNC12 (src)))
	    return (dbl_p ? "dmfc1\t%0,%1" : "mfc1\t%0,%1");

	  if (FUNC0 (FUNC12 (src)))
	    {
	      static char retval[] = "dmfc_\t%0,%1";

	      retval[4] = FUNC3 (FUNC12 (src));
	      return (dbl_p ? retval : retval + 1);
	    }
	}

      if (src_code == MEM)
	return (dbl_p ? "ld\t%0,%1" : "lw\t%0,%1");

      if (src_code == CONST_INT)
	{
	  /* Don't use the X format, because that will give out of
	     range numbers for 64 bit hosts and 32 bit targets.  */
	  if (!TARGET_MIPS16)
	    return "li\t%0,%1\t\t\t# %X1";

	  if (FUNC10 (src) >= 0 && FUNC10 (src) <= 0xffff)
	    return "li\t%0,%1";

	  if (FUNC10 (src) < 0 && FUNC10 (src) >= -0xffff)
	    return "#";
	}

      if (src_code == HIGH)
	return "lui\t%0,%h1";

      if (FUNC2 (src))
	return "move\t%0,%1";

      if (FUNC16 (src, VOIDmode))
	return (dbl_p ? "dla\t%0,%1" : "la\t%0,%1");
    }
  if (src_code == REG && FUNC5 (FUNC12 (src)))
    {
      if (dest_code == REG && FUNC5 (FUNC12 (dest)))
	{
	  if (FUNC7 (dest) == V2SFmode)
	    return "mov.ps\t%0,%1";
	  else
	    return (dbl_p ? "mov.d\t%0,%1" : "mov.s\t%0,%1");
	}

      if (dest_code == MEM)
	return (dbl_p ? "sdc1\t%1,%0" : "swc1\t%1,%0");
    }
  if (dest_code == REG && FUNC5 (FUNC12 (dest)))
    {
      if (src_code == MEM)
	return (dbl_p ? "ldc1\t%0,%1" : "lwc1\t%0,%1");
    }
  if (dest_code == REG && FUNC0 (FUNC12 (dest)) && src_code == MEM)
    {
      static char retval[] = "l_c_\t%0,%1";

      retval[1] = (dbl_p ? 'd' : 'w');
      retval[3] = FUNC3 (FUNC12 (dest));
      return retval;
    }
  if (dest_code == MEM && src_code == REG && FUNC0 (FUNC12 (src)))
    {
      static char retval[] = "s_c_\t%1,%0";

      retval[1] = (dbl_p ? 'd' : 'w');
      retval[3] = FUNC3 (FUNC12 (src));
      return retval;
    }
  FUNC14 ();
}