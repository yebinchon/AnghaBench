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
 int AFLAG ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int PREFIX_ADDR ; 
 int /*<<< orphan*/  address_mode ; 
 int /*<<< orphan*/  close_char ; 
 int* codep ; 
 int /*<<< orphan*/  mode_64bit ; 
 char** names16 ; 
 char const** names32 ; 
 char const* obuf ; 
 char* obufp ; 
 char** op_out ; 
 int /*<<< orphan*/  open_char ; 
 int prefixes ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int FUNC2 (char const*) ; 
 int two_source_ops ; 
 int used_prefixes ; 

__attribute__((used)) static void
FUNC3 (int bytemode, int sizeflag)
{
  const char *alt;
  char *p;

  switch (*codep)
    {
    case 0xd8:
      alt = "vmrun";
      break;
    case 0xd9:
      alt = "vmmcall";
      break;
    case 0xda:
      alt = "vmload";
      break;
    case 0xdb:
      alt = "vmsave";
      break;
    case 0xdc:
      alt = "stgi";
      break;
    case 0xdd:
      alt = "clgi";
      break;
    case 0xde:
      alt = "skinit";
      break;
    case 0xdf:
      alt = "invlpga";
      break;
    default:
      FUNC0 (bytemode, sizeflag);
      return;
    }
  /* Override "lidt".  */
  p = obuf + FUNC2 (obuf) - 4;
  /* We might have a suffix.  */
  if (*p == 'i')
    --p;
  FUNC1 (p, alt);
  if (!(prefixes & PREFIX_ADDR))
    {
      ++codep;
      return;
    }
  used_prefixes |= PREFIX_ADDR;
  switch (*codep++)
    {
    case 0xdf:
      FUNC1 (op_out[1], names32[1]);
      two_source_ops = 1;
	  /* Fall through.  */
    case 0xd8:
    case 0xda:
    case 0xdb:
      *obufp++ = open_char;
      if (address_mode == mode_64bit || (sizeflag & AFLAG))
        alt = names32[0];
      else
        alt = names16[0];
      FUNC1 (obufp, alt);
      obufp += FUNC2 (alt);
      *obufp++ = close_char;
      *obufp = '\0';
      break;
    }
}