
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nls_table {int dummy; } ;
typedef int __le16 ;
struct TYPE_2__ {char* release; } ;


 char* CIFS_NETWORK_OPSYS ;
 int cifs_strtoUCS (int *,char*,int,struct nls_table const*) ;
 TYPE_1__* init_utsname () ;

__attribute__((used)) static void
unicode_oslm_strings(char **pbcc_area, const struct nls_table *nls_cp)
{
 char *bcc_ptr = *pbcc_area;
 int bytes_ret = 0;


 bytes_ret = cifs_strtoUCS((__le16 *)bcc_ptr, "Linux version ", 32,
      nls_cp);
 bcc_ptr += 2 * bytes_ret;
 bytes_ret = cifs_strtoUCS((__le16 *) bcc_ptr, init_utsname()->release,
      32, nls_cp);
 bcc_ptr += 2 * bytes_ret;
 bcc_ptr += 2;

 bytes_ret = cifs_strtoUCS((__le16 *) bcc_ptr, CIFS_NETWORK_OPSYS,
      32, nls_cp);
 bcc_ptr += 2 * bytes_ret;
 bcc_ptr += 2;

 *pbcc_area = bcc_ptr;
}
