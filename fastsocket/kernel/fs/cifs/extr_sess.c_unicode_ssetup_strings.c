
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nls_table {int dummy; } ;
struct cifs_ses {int * user_name; } ;
typedef int __le16 ;


 int MAX_USERNAME_SIZE ;
 int cifs_strtoUCS (int *,int *,int ,struct nls_table const*) ;
 int unicode_domain_string (char**,struct cifs_ses*,struct nls_table const*) ;
 int unicode_oslm_strings (char**,struct nls_table const*) ;

__attribute__((used)) static void unicode_ssetup_strings(char **pbcc_area, struct cifs_ses *ses,
       const struct nls_table *nls_cp)
{
 char *bcc_ptr = *pbcc_area;
 int bytes_ret = 0;
 if (ses->user_name == ((void*)0)) {

  *bcc_ptr = 0;
  *(bcc_ptr+1) = 0;
 } else {
  bytes_ret = cifs_strtoUCS((__le16 *) bcc_ptr, ses->user_name,
       MAX_USERNAME_SIZE, nls_cp);
 }
 bcc_ptr += 2 * bytes_ret;
 bcc_ptr += 2;

 unicode_domain_string(&bcc_ptr, ses, nls_cp);
 unicode_oslm_strings(&bcc_ptr, nls_cp);

 *pbcc_area = bcc_ptr;
}
