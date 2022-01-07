
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coff_ofile {int nsources; } ;
struct IT_hd {char* ver; int au; int spcsz; char* cpu; int afl; int ep; char* os; char* sys; int mn; int address; scalar_t__ sad; scalar_t__ sa; scalar_t__ uan; int segsh; int segsz; int si; scalar_t__ code; int nu; int cd; int mt; scalar_t__ spare1; } ;


 int DATE ;
 int EXEC_P ;
 int MTYPE_ABS_LM ;
 int MTYPE_OMS_OR_LMS ;
 int abfd ;
 int abort () ;
 int addrsize ;


 int bfd_get_arch (int ) ;
 int bfd_get_file_flags (int ) ;
 int bfd_get_filename (int ) ;
 int bfd_get_mach (int ) ;
 int bfd_get_start_address (int ) ;



 int file ;
 int rname_h8300 ;
 int rname_sh ;
 int rnames ;
 int strip_suffix (int ) ;
 int sysroff_swap_hd_out (int ,struct IT_hd*) ;
 char* toolname ;

__attribute__((used)) static void
wr_hd (struct coff_ofile *p)
{
  struct IT_hd hd;

  hd.spare1 = 0;
  if (bfd_get_file_flags (abfd) & EXEC_P)
    hd.mt = MTYPE_ABS_LM;
  else
    hd.mt = MTYPE_OMS_OR_LMS;

  hd.cd = DATE;

  hd.nu = p->nsources;
  hd.code = 0;
  hd.ver = "0200";

  switch (bfd_get_arch (abfd))
    {
    case 132:
      hd.au = 8;
      hd.si = 0;
      hd.spcsz = 32;
      hd.segsz = 0;
      hd.segsh = 0;
      switch (bfd_get_mach (abfd))
 {
 case 130:
   hd.cpu = "H8300";
   hd.afl = 2;
   addrsize = 2;
   toolname = "C_H8/300";
   break;
 case 129:
   hd.cpu = "H8300H";
   hd.afl = 4;
   addrsize = 4;
   toolname = "C_H8/300H";
   break;
 case 128:
   hd.cpu = "H8300S";
   hd.afl = 4;
   addrsize = 4;
   toolname = "C_H8/300S";
   break;
 default:
   abort();
 }
      rnames = rname_h8300;
      break;
    case 131:
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
      abort ();
    }

  if (! bfd_get_file_flags(abfd) & EXEC_P)
    {
      hd.ep = 0;
    }
  else
    {
      hd.ep = 1;
      hd.uan = 0;
      hd.sa = 0;
      hd.sad = 0;
      hd.address = bfd_get_start_address (abfd);
    }

  hd.os = "";
  hd.sys = "";
  hd.mn = strip_suffix (bfd_get_filename (abfd));

  sysroff_swap_hd_out (file, &hd);
}
