
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct atm_vcc {TYPE_2__* dev; } ;
struct TYPE_3__ {int vpi_bits; int vci_bits; } ;
struct TYPE_4__ {TYPE_1__ ci_range; } ;


 int ATM_NOT_RSV_VCI ;
 int ATM_VCI_ANY ;
 short ATM_VPI_ANY ;
 int EADDRINUSE ;
 int check_ci (struct atm_vcc const*,short,int) ;

__attribute__((used)) static int find_ci(const struct atm_vcc *vcc, short *vpi, int *vci)
{
 static short p;
 static int c;
 short old_p;
 int old_c;
 int err;

 if (*vpi != ATM_VPI_ANY && *vci != ATM_VCI_ANY) {
  err = check_ci(vcc, *vpi, *vci);
  return err;
 }

 if (*vpi != ATM_VPI_ANY)
  p = *vpi;
 else if (p >= 1 << vcc->dev->ci_range.vpi_bits)
  p = 0;
 if (*vci != ATM_VCI_ANY)
  c = *vci;
 else if (c < ATM_NOT_RSV_VCI || c >= 1 << vcc->dev->ci_range.vci_bits)
   c = ATM_NOT_RSV_VCI;
 old_p = p;
 old_c = c;
 do {
  if (!check_ci(vcc, p, c)) {
   *vpi = p;
   *vci = c;
   return 0;
  }
  if (*vci == ATM_VCI_ANY) {
   c++;
   if (c >= 1 << vcc->dev->ci_range.vci_bits)
    c = ATM_NOT_RSV_VCI;
  }
  if ((c == ATM_NOT_RSV_VCI || *vci != ATM_VCI_ANY) &&
      *vpi == ATM_VPI_ANY) {
   p++;
   if (p >= 1 << vcc->dev->ci_range.vpi_bits) p = 0;
  }
 }
 while (old_p != p || old_c != c);
 return -EADDRINUSE;
}
