
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IT_un {int dummy; } ;
struct IT_sh {int dummy; } ;
struct IT_sc {int dummy; } ;
struct IT_rl {int dummy; } ;
struct IT_ob {int dummy; } ;
struct IT_hs {int dummy; } ;
struct IT_hd {int afl; } ;
struct IT_er {int dummy; } ;
struct IT_ed {int dummy; } ;
struct IT_dus {int dummy; } ;
struct IT_dul {int dummy; } ;
struct IT_du {int dummy; } ;
struct IT_dty {int dummy; } ;
struct IT_dsy {int dummy; } ;
struct IT_dss {int dummy; } ;
struct IT_dso {int dummy; } ;
struct IT_dpt {int dummy; } ;
struct IT_dps {int dummy; } ;
struct IT_dln {int dummy; } ;
struct IT_dfp {int dummy; } ;
struct IT_den {int dummy; } ;
struct IT_dds {int dummy; } ;
struct IT_dbt {int dummy; } ;
struct IT_dar {int dummy; } ;
struct IT_cs {int dummy; } ;
 int addrsize ;
 int code ;
 int file ;
 int getc (int ) ;
 int printf (char*,int) ;
 int sysroff_print_cs_out (struct IT_cs*) ;
 int sysroff_print_dar_out (struct IT_dar*) ;
 int sysroff_print_dbt_out (struct IT_dbt*) ;
 int sysroff_print_dds_out (struct IT_dds*) ;
 int sysroff_print_den_out (struct IT_den*) ;
 int sysroff_print_dfp_out (struct IT_dfp*) ;
 int sysroff_print_dln_out (struct IT_dln*) ;
 int sysroff_print_dps_out (struct IT_dps*) ;
 int sysroff_print_dpt_out (struct IT_dpt*) ;
 int sysroff_print_dso_out (struct IT_dso*) ;
 int sysroff_print_dss_out (struct IT_dss*) ;
 int sysroff_print_dsy_out (struct IT_dsy*) ;
 int sysroff_print_dty_out (struct IT_dty*) ;
 int sysroff_print_du_out (struct IT_du*) ;
 int sysroff_print_dul_out (struct IT_dul*) ;
 int sysroff_print_dus_out (struct IT_dus*) ;
 int sysroff_print_ed_out (struct IT_ed*) ;
 int sysroff_print_er_out (struct IT_er*) ;
 int sysroff_print_hd_out (struct IT_hd*) ;
 int sysroff_print_hs_out (struct IT_hs*) ;
 int sysroff_print_ob_out (struct IT_ob*) ;
 int sysroff_print_rl_out (struct IT_rl*) ;
 int sysroff_print_sc_out (struct IT_sc*) ;
 int sysroff_print_sh_out (struct IT_sh*) ;
 int sysroff_print_tr_out () ;
 int sysroff_print_un_out (struct IT_un*) ;
 int sysroff_swap_cs_in (struct IT_cs*) ;
 int sysroff_swap_dar_in (struct IT_dar*) ;
 int sysroff_swap_dbt_in (struct IT_dbt*) ;
 int sysroff_swap_dds_in (struct IT_dds*) ;
 int sysroff_swap_den_in (struct IT_den*) ;
 int sysroff_swap_dfp_in (struct IT_dfp*) ;
 int sysroff_swap_dln_in (struct IT_dln*) ;
 int sysroff_swap_dps_in (struct IT_dps*) ;
 int sysroff_swap_dpt_in (struct IT_dpt*) ;
 int sysroff_swap_dso_in (struct IT_dso*) ;
 int sysroff_swap_dss_in (struct IT_dss*) ;
 int sysroff_swap_dsy_in (struct IT_dsy*) ;
 int sysroff_swap_dty_in (struct IT_dty*) ;
 int sysroff_swap_du_in (struct IT_du*) ;
 int sysroff_swap_dul_in (struct IT_dul*) ;
 int sysroff_swap_dus_in (struct IT_dus*) ;
 int sysroff_swap_ed_in (struct IT_ed*) ;
 int sysroff_swap_er_in (struct IT_er*) ;
 int sysroff_swap_hd_in (struct IT_hd*) ;
 int sysroff_swap_hs_in (struct IT_hs*) ;
 int sysroff_swap_ob_in (struct IT_ob*) ;
 int sysroff_swap_rl_in (struct IT_rl*) ;
 int sysroff_swap_sc_in (struct IT_sc*) ;
 int sysroff_swap_sh_in (struct IT_sh*) ;
 int sysroff_swap_tr_in () ;
 int sysroff_swap_un_in (struct IT_un*) ;
 int ungetc (int,int ) ;

__attribute__((used)) static int
getone (int type)
{
  int c = getc (file);

  code = c;

  if ((c & 0x7f) != type)
    {
      ungetc (c, file);
      return 0;
    }

  switch (c & 0x7f)
    {
    case 153:
      {
 struct IT_cs dummy;
 sysroff_swap_cs_in (&dummy);
 sysroff_print_cs_out (&dummy);
      }
      break;

    case 147:
      {
 struct IT_dln dummy;
 sysroff_swap_dln_in (&dummy);
 sysroff_print_dln_out (&dummy);
      }
      break;

    case 135:
      {
 struct IT_hd dummy;
 sysroff_swap_hd_in (&dummy);
 addrsize = dummy.afl;
 sysroff_print_hd_out (&dummy);
      }
      break;

    case 152:
      {
 struct IT_dar dummy;
 sysroff_swap_dar_in (&dummy);
 sysroff_print_dar_out (&dummy);
      }
      break;

    case 142:
      {
 struct IT_dsy dummy;
 sysroff_swap_dsy_in (&dummy);
 sysroff_print_dsy_out (&dummy);
      }
      break;

    case 148:
      {
 struct IT_dfp dummy;
 sysroff_swap_dfp_in (&dummy);
 sysroff_print_dfp_out (&dummy);
      }
      break;

    case 144:
      {
 struct IT_dso dummy;
 sysroff_swap_dso_in (&dummy);
 sysroff_print_dso_out (&dummy);
      }
      break;

    case 145:
      {
 struct IT_dpt dummy;
 sysroff_swap_dpt_in (&dummy);
 sysroff_print_dpt_out (&dummy);
      }
      break;

    case 149:
      {
 struct IT_den dummy;
 sysroff_swap_den_in (&dummy);
 sysroff_print_den_out (&dummy);
      }
      break;

    case 151:
      {
 struct IT_dbt dummy;
 sysroff_swap_dbt_in (&dummy);
 sysroff_print_dbt_out (&dummy);
      }
      break;

    case 141:
      {
 struct IT_dty dummy;
 sysroff_swap_dty_in (&dummy);
 sysroff_print_dty_out (&dummy);
      }
      break;

    case 128:
      {
 struct IT_un dummy;
 sysroff_swap_un_in (&dummy);
 sysroff_print_un_out (&dummy);
      }
      break;

    case 131:
      {
 struct IT_sc dummy;
 sysroff_swap_sc_in (&dummy);
 sysroff_print_sc_out (&dummy);
      }
      break;

    case 136:
      {
 struct IT_er dummy;
 sysroff_swap_er_in (&dummy);
 sysroff_print_er_out (&dummy);
      }
      break;

    case 137:
      {
 struct IT_ed dummy;
 sysroff_swap_ed_in (&dummy);
 sysroff_print_ed_out (&dummy);
      }
      break;

    case 130:
      {
 struct IT_sh dummy;
 sysroff_swap_sh_in (&dummy);
 sysroff_print_sh_out (&dummy);
      }
      break;

    case 133:
      {
 struct IT_ob dummy;
 sysroff_swap_ob_in (&dummy);
 sysroff_print_ob_out (&dummy);
      }
      break;

    case 132:
      {
 struct IT_rl dummy;
 sysroff_swap_rl_in (&dummy);
 sysroff_print_rl_out (&dummy);
      }
      break;

    case 140:
      {
 struct IT_du dummy;
 sysroff_swap_du_in (&dummy);

 sysroff_print_du_out (&dummy);
      }
      break;

    case 138:
      {
 struct IT_dus dummy;
 sysroff_swap_dus_in (&dummy);
 sysroff_print_dus_out (&dummy);
      }
      break;

    case 139:
      {
 struct IT_dul dummy;
 sysroff_swap_dul_in (&dummy);
 sysroff_print_dul_out (&dummy);
      }
      break;

    case 143:
      {
 struct IT_dss dummy;
 sysroff_swap_dss_in (&dummy);
 sysroff_print_dss_out (&dummy);
      }
      break;

    case 134:
      {
 struct IT_hs dummy;
 sysroff_swap_hs_in (&dummy);
 sysroff_print_hs_out (&dummy);
      }
      break;

    case 146:
      {
 struct IT_dps dummy;
 sysroff_swap_dps_in (&dummy);
 sysroff_print_dps_out (&dummy);
      }
      break;

    case 129:
      sysroff_swap_tr_in ();
      sysroff_print_tr_out ();
      break;

    case 150:
      {
 struct IT_dds dummy;

 sysroff_swap_dds_in (&dummy);
 sysroff_print_dds_out (&dummy);
      }
      break;

    default:
      printf ("GOT A %x\n", c);
      return 0;
      break;
    }

  return 1;
}
