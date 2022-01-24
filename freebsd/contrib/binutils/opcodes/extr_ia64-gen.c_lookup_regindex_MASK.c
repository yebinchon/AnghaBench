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
#define  IA64_RS_ARX 130 
#define  IA64_RS_CRX 129 
#define  IA64_RS_PSR 128 
 int REG_NONE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

__attribute__((used)) static int
FUNC2 (const char *name, int specifier)
{
  switch (specifier)
    {
    case IA64_RS_ARX:
      if (FUNC1 (name, "[RSC]"))
        return 16;
      if (FUNC1 (name, "[BSP]"))
        return 17;
      else if (FUNC1 (name, "[BSPSTORE]"))
        return 18;
      else if (FUNC1 (name, "[RNAT]"))
        return 19;
      else if (FUNC1 (name, "[FCR]"))
        return 21;
      else if (FUNC1 (name, "[EFLAG]"))
        return 24;
      else if (FUNC1 (name, "[CSD]"))
        return 25;
      else if (FUNC1 (name, "[SSD]"))
        return 26;
      else if (FUNC1 (name, "[CFLG]"))
        return 27;
      else if (FUNC1 (name, "[FSR]"))
        return 28;
      else if (FUNC1 (name, "[FIR]"))
        return 29;
      else if (FUNC1 (name, "[FDR]"))
        return 30;
      else if (FUNC1 (name, "[CCV]"))
        return 32;
      else if (FUNC1 (name, "[ITC]"))
        return 44;
      else if (FUNC1 (name, "[PFS]"))
        return 64;
      else if (FUNC1 (name, "[LC]"))
        return 65;
      else if (FUNC1 (name, "[EC]"))
        return 66;
      FUNC0 ();
    case IA64_RS_CRX:
      if (FUNC1 (name, "[DCR]"))
        return 0;
      else if (FUNC1 (name, "[ITM]"))
        return 1;
      else if (FUNC1 (name, "[IVA]"))
        return 2;
      else if (FUNC1 (name, "[PTA]"))
        return 8;
      else if (FUNC1 (name, "[GPTA]"))
        return 9;
      else if (FUNC1 (name, "[IPSR]"))
        return 16;
      else if (FUNC1 (name, "[ISR]"))
        return 17;
      else if (FUNC1 (name, "[IIP]"))
        return 19;
      else if (FUNC1 (name, "[IFA]"))
        return 20;
      else if (FUNC1 (name, "[ITIR]"))
        return 21;
      else if (FUNC1 (name, "[IIPA]"))
        return 22;
      else if (FUNC1 (name, "[IFS]"))
        return 23;
      else if (FUNC1 (name, "[IIM]"))
        return 24;
      else if (FUNC1 (name, "[IHA]"))
        return 25;
      else if (FUNC1 (name, "[LID]"))
        return 64;
      else if (FUNC1 (name, "[IVR]"))
        return 65;
      else if (FUNC1 (name, "[TPR]"))
        return 66;
      else if (FUNC1 (name, "[EOI]"))
        return 67;
      else if (FUNC1 (name, "[ITV]"))
        return 72;
      else if (FUNC1 (name, "[PMV]"))
        return 73;
      else if (FUNC1 (name, "[CMCV]"))
        return 74;
      FUNC0 ();
    case IA64_RS_PSR:
      if (FUNC1 (name, ".be"))
        return 1;
      else if (FUNC1 (name, ".up"))
        return 2;
      else if (FUNC1 (name, ".ac"))
        return 3;
      else if (FUNC1 (name, ".mfl"))
        return 4;
      else if (FUNC1 (name, ".mfh"))
        return 5;
      else if (FUNC1 (name, ".ic"))
        return 13;
      else if (FUNC1 (name, ".i"))
        return 14;
      else if (FUNC1 (name, ".pk"))
        return 15;
      else if (FUNC1 (name, ".dt"))
        return 17;
      else if (FUNC1 (name, ".dfl"))
        return 18;
      else if (FUNC1 (name, ".dfh"))
        return 19;
      else if (FUNC1 (name, ".sp"))
        return 20;
      else if (FUNC1 (name, ".pp"))
        return 21;
      else if (FUNC1 (name, ".di"))
        return 22;
      else if (FUNC1 (name, ".si"))
        return 23;
      else if (FUNC1 (name, ".db"))
        return 24;
      else if (FUNC1 (name, ".lp"))
        return 25;
      else if (FUNC1 (name, ".tb"))
        return 26;
      else if (FUNC1 (name, ".rt"))
        return 27;
      else if (FUNC1 (name, ".cpl"))
        return 32;
      else if (FUNC1 (name, ".rs"))
        return 34;
      else if (FUNC1 (name, ".mc"))
        return 35;
      else if (FUNC1 (name, ".it"))
        return 36;
      else if (FUNC1 (name, ".id"))
        return 37;
      else if (FUNC1 (name, ".da"))
        return 38;
      else if (FUNC1 (name, ".dd"))
        return 39;
      else if (FUNC1 (name, ".ss"))
        return 40;
      else if (FUNC1 (name, ".ri"))
        return 41;
      else if (FUNC1 (name, ".ed"))
        return 43;
      else if (FUNC1 (name, ".bn"))
        return 44;
      else if (FUNC1 (name, ".ia"))
        return 45;
      else if (FUNC1 (name, ".vm"))
        return 46;
      else
        FUNC0 ();
    default:
      break;
    }
  return REG_NONE;
}