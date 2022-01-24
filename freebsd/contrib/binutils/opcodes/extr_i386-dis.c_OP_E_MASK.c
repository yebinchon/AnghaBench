#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int bfd_vma ;
typedef  scalar_t__ bfd_signed_vma ;
struct TYPE_2__ {int mod; int rm; } ;

/* Variables and functions */
 int AFLAG ; 
 int DFLAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 char* INTERNAL_DISASSEMBLER_ERROR ; 
 int /*<<< orphan*/  MODRM_CHECK ; 
 int PREFIX_CS ; 
 int PREFIX_DATA ; 
 int PREFIX_DS ; 
 int PREFIX_ES ; 
 int PREFIX_FS ; 
 int PREFIX_GS ; 
 int PREFIX_SS ; 
 int REX_B ; 
 int REX_W ; 
 int REX_X ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ address_mode ; 
 int /*<<< orphan*/  FUNC2 () ; 
#define  b_mode 138 
 void* close_char ; 
 int* codep ; 
#define  d_mode 137 
#define  dq_mode 136 
#define  dqb_mode 135 
#define  dqd_mode 134 
#define  dqw_mode 133 
 size_t ds_reg ; 
 size_t es_reg ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 char** index16 ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 scalar_t__ intel_syntax ; 
#define  m_mode 132 
 scalar_t__ mode_64bit ; 
 TYPE_1__ modrm ; 
 char** names16 ; 
 char** names32 ; 
 char** names64 ; 
 char** names8 ; 
 char** names8rex ; 
 char** names_seg ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* obufp ; 
 void* open_char ; 
 int prefixes ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int) ; 
#define  q_mode 131 
 int rex ; 
 int /*<<< orphan*/  scale_char ; 
 char* scratchbuf ; 
 int /*<<< orphan*/  separator_char ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
#define  stack_v_mode 130 
 int /*<<< orphan*/  the_info ; 
 int used_prefixes ; 
#define  v_mode 129 
#define  w_mode 128 

__attribute__((used)) static void
FUNC11 (int bytemode, int sizeflag)
{
  bfd_vma disp;
  int add = 0;
  int riprel = 0;
  FUNC1 (REX_B);
  if (rex & REX_B)
    add += 8;

  /* Skip mod/rm byte.  */
  MODRM_CHECK;
  codep++;

  if (modrm.mod == 3)
    {
      switch (bytemode)
	{
	case b_mode:
	  FUNC1 (0);
	  if (rex)
	    FUNC6 (names8rex[modrm.rm + add]);
	  else
	    FUNC6 (names8[modrm.rm + add]);
	  break;
	case w_mode:
	  FUNC6 (names16[modrm.rm + add]);
	  break;
	case d_mode:
	  FUNC6 (names32[modrm.rm + add]);
	  break;
	case q_mode:
	  FUNC6 (names64[modrm.rm + add]);
	  break;
	case m_mode:
	  if (address_mode == mode_64bit)
	    FUNC6 (names64[modrm.rm + add]);
	  else
	    FUNC6 (names32[modrm.rm + add]);
	  break;
	case stack_v_mode:
	  if (address_mode == mode_64bit && (sizeflag & DFLAG))
	    {
	      FUNC6 (names64[modrm.rm + add]);
	      used_prefixes |= (prefixes & PREFIX_DATA);
	      break;
	    }
	  bytemode = v_mode;
	  /* FALLTHRU */
	case v_mode:
	case dq_mode:
	case dqb_mode:
	case dqd_mode:
	case dqw_mode:
	  FUNC1 (REX_W);
	  if (rex & REX_W)
	    FUNC6 (names64[modrm.rm + add]);
	  else if ((sizeflag & DFLAG) || bytemode != v_mode)
	    FUNC6 (names32[modrm.rm + add]);
	  else
	    FUNC6 (names16[modrm.rm + add]);
	  used_prefixes |= (prefixes & PREFIX_DATA);
	  break;
	case 0:
	  break;
	default:
	  FUNC6 (INTERNAL_DISASSEMBLER_ERROR);
	  break;
	}
      return;
    }

  disp = 0;
  if (intel_syntax)
    FUNC5 (bytemode, sizeflag);
  FUNC2 ();

  if ((sizeflag & AFLAG) || address_mode == mode_64bit)
    {
      /* 32/64 bit address mode */
      int havedisp;
      int havesib;
      int havebase;
      int base;
      int index = 0;
      int scale = 0;

      havesib = 0;
      havebase = 1;
      base = modrm.rm;

      if (base == 4)
	{
	  havesib = 1;
	  (void) FUNC0 (the_info, codep + 1);
	  index = (*codep >> 3) & 7;
	  if (address_mode == mode_64bit || index != 0x4)
	    /* When INDEX == 0x4 in 32 bit mode, SCALE is ignored.  */
	    scale = (*codep >> 6) & 3;
	  base = *codep & 7;
	  FUNC1 (REX_X);
	  if (rex & REX_X)
	    index += 8;
	  codep++;
	}
      base += add;

      switch (modrm.mod)
	{
	case 0:
	  if ((base & 7) == 5)
	    {
	      havebase = 0;
	      if (address_mode == mode_64bit && !havesib)
		riprel = 1;
	      disp = FUNC4 ();
	    }
	  break;
	case 1:
	  FUNC0 (the_info, codep + 1);
	  disp = *codep++;
	  if ((disp & 0x80) != 0)
	    disp -= 0x100;
	  break;
	case 2:
	  disp = FUNC4 ();
	  break;
	}

      havedisp = havebase || (havesib && (index != 4 || scale != 0));

      if (!intel_syntax)
	if (modrm.mod != 0 || (base & 7) == 5)
	  {
	    if (havedisp || riprel)
	      FUNC7 (scratchbuf, disp);
	    else
	      FUNC8 (scratchbuf, 1, disp);
	    FUNC6 (scratchbuf);
	    if (riprel)
	      {
		FUNC9 (disp, 1);
		FUNC6 ("(%rip)");
	      }
	  }

      if (havedisp || (intel_syntax && riprel))
	{
	  *obufp++ = open_char;
	  if (intel_syntax && riprel)
	    {
	      FUNC9 (disp, 1);
	      FUNC6 ("rip");
	    }
	  *obufp = '\0';
	  if (havebase)
	    FUNC6 (address_mode == mode_64bit && (sizeflag & AFLAG)
		     ? names64[base] : names32[base]);
	  if (havesib)
	    {
	      if (index != 4)
		{
		  if (!intel_syntax || havebase)
		    {
		      *obufp++ = separator_char;
		      *obufp = '\0';
		    }
		  FUNC6 (address_mode == mode_64bit && (sizeflag & AFLAG)
			   ? names64[index] : names32[index]);
		}
	      if (scale != 0 || (!intel_syntax && index != 4))
		{
		  *obufp++ = scale_char;
		  *obufp = '\0';
		  FUNC10 (scratchbuf, "%d", 1 << scale);
		  FUNC6 (scratchbuf);
		}
	    }
	  if (intel_syntax
	      && (disp || modrm.mod != 0 || (base & 7) == 5))
	    {
	      if ((bfd_signed_vma) disp >= 0)
		{
		  *obufp++ = '+';
		  *obufp = '\0';
		}
	      else if (modrm.mod != 1)
		{
		  *obufp++ = '-';
		  *obufp = '\0';
		  disp = - (bfd_signed_vma) disp;
		}

	      FUNC7 (scratchbuf, disp);
	      FUNC6 (scratchbuf);
	    }

	  *obufp++ = close_char;
	  *obufp = '\0';
	}
      else if (intel_syntax)
	{
	  if (modrm.mod != 0 || (base & 7) == 5)
	    {
	      if (prefixes & (PREFIX_CS | PREFIX_SS | PREFIX_DS
			      | PREFIX_ES | PREFIX_FS | PREFIX_GS))
		;
	      else
		{
		  FUNC6 (names_seg[ds_reg - es_reg]);
		  FUNC6 (":");
		}
	      FUNC8 (scratchbuf, 1, disp);
	      FUNC6 (scratchbuf);
	    }
	}
    }
  else
    { /* 16 bit address mode */
      switch (modrm.mod)
	{
	case 0:
	  if (modrm.rm == 6)
	    {
	      disp = FUNC3 ();
	      if ((disp & 0x8000) != 0)
		disp -= 0x10000;
	    }
	  break;
	case 1:
	  FUNC0 (the_info, codep + 1);
	  disp = *codep++;
	  if ((disp & 0x80) != 0)
	    disp -= 0x100;
	  break;
	case 2:
	  disp = FUNC3 ();
	  if ((disp & 0x8000) != 0)
	    disp -= 0x10000;
	  break;
	}

      if (!intel_syntax)
	if (modrm.mod != 0 || modrm.rm == 6)
	  {
	    FUNC7 (scratchbuf, disp);
	    FUNC6 (scratchbuf);
	  }

      if (modrm.mod != 0 || modrm.rm != 6)
	{
	  *obufp++ = open_char;
	  *obufp = '\0';
	  FUNC6 (index16[modrm.rm]);
	  if (intel_syntax
	      && (disp || modrm.mod != 0 || modrm.rm == 6))
	    {
	      if ((bfd_signed_vma) disp >= 0)
		{
		  *obufp++ = '+';
		  *obufp = '\0';
		}
	      else if (modrm.mod != 1)
		{
		  *obufp++ = '-';
		  *obufp = '\0';
		  disp = - (bfd_signed_vma) disp;
		}

	      FUNC7 (scratchbuf, disp);
	      FUNC6 (scratchbuf);
	    }

	  *obufp++ = close_char;
	  *obufp = '\0';
	}
      else if (intel_syntax)
	{
	  if (prefixes & (PREFIX_CS | PREFIX_SS | PREFIX_DS
			  | PREFIX_ES | PREFIX_FS | PREFIX_GS))
	    ;
	  else
	    {
	      FUNC6 (names_seg[ds_reg - es_reg]);
	      FUNC6 (":");
	    }
	  FUNC8 (scratchbuf, 1, disp & 0xffff);
	  FUNC6 (scratchbuf);
	}
    }
}