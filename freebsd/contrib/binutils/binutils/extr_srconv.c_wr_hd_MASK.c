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
struct coff_ofile {int /*<<< orphan*/  nsources; } ;
struct IT_hd {char* ver; int au; int spcsz; char* cpu; int afl; int ep; char* os; char* sys; int /*<<< orphan*/  mn; int /*<<< orphan*/  address; scalar_t__ sad; scalar_t__ sa; scalar_t__ uan; int /*<<< orphan*/  segsh; int /*<<< orphan*/  segsz; int /*<<< orphan*/  si; scalar_t__ code; int /*<<< orphan*/  nu; int /*<<< orphan*/  cd; int /*<<< orphan*/  mt; scalar_t__ spare1; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATE ; 
 int EXEC_P ; 
 int /*<<< orphan*/  MTYPE_ABS_LM ; 
 int /*<<< orphan*/  MTYPE_OMS_OR_LMS ; 
 int /*<<< orphan*/  abfd ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int addrsize ; 
#define  bfd_arch_h8300 132 
#define  bfd_arch_sh 131 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
#define  bfd_mach_h8300 130 
#define  bfd_mach_h8300h 129 
#define  bfd_mach_h8300s 128 
 int /*<<< orphan*/  file ; 
 int /*<<< orphan*/  rname_h8300 ; 
 int /*<<< orphan*/  rname_sh ; 
 int /*<<< orphan*/  rnames ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct IT_hd*) ; 
 char* toolname ; 

__attribute__((used)) static void
FUNC8 (struct coff_ofile *p)
{
  struct IT_hd hd;

  hd.spare1 = 0;
  if (FUNC2 (abfd) & EXEC_P)
    hd.mt = MTYPE_ABS_LM;
  else
    hd.mt = MTYPE_OMS_OR_LMS;

  hd.cd = DATE;

  hd.nu = p->nsources;		/* Always one unit */
  hd.code = 0;			/* Always ASCII */
  hd.ver = "0200";		/* Version 2.00 */

  switch (FUNC1 (abfd))
    {
    case bfd_arch_h8300:
      hd.au = 8;
      hd.si = 0;
      hd.spcsz = 32;
      hd.segsz = 0;
      hd.segsh = 0;
      switch (FUNC4 (abfd))
	{
	case bfd_mach_h8300:
	  hd.cpu = "H8300";
	  hd.afl = 2;
	  addrsize = 2;
	  toolname = "C_H8/300";
	  break;
	case bfd_mach_h8300h:
	  hd.cpu = "H8300H";
	  hd.afl = 4;
	  addrsize = 4;
	  toolname = "C_H8/300H";
	  break;
	case bfd_mach_h8300s:
	  hd.cpu = "H8300S";
	  hd.afl = 4;
	  addrsize = 4;
	  toolname = "C_H8/300S";
	  break;
	default:
	  FUNC0();
	}
      rnames = rname_h8300;
      break;
    case bfd_arch_sh:
      hd.au = 8;
      hd.si = 0;
      hd.afl = 4;
      hd.spcsz = 32;
      hd.segsz = 0;
      hd.segsh = 0;
      hd.cpu = "SH";
      addrsize = 4;
      toolname = "C_SH";
      rnames = rname_sh;
      break;
    default:
      FUNC0 ();
    }

  if (! (FUNC2(abfd) & EXEC_P))
    {
      hd.ep = 0;
    }
  else
    {
      hd.ep = 1;
      hd.uan = 0;
      hd.sa = 0;
      hd.sad = 0;
      hd.address = FUNC5 (abfd);
    }

  hd.os = "";
  hd.sys = "";
  hd.mn = FUNC6 (FUNC3 (abfd));

  FUNC7 (file, &hd);
}