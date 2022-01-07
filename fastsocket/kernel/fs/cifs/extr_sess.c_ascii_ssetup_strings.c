
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nls_table {int dummy; } ;
struct cifs_ses {int * domainName; int * user_name; } ;
struct TYPE_2__ {char* release; } ;


 char* CIFS_NETWORK_OPSYS ;
 int MAX_USERNAME_SIZE ;
 TYPE_1__* init_utsname () ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int strncpy (char*,int *,int) ;
 int strnlen (int *,int) ;

__attribute__((used)) static void ascii_ssetup_strings(char **pbcc_area, struct cifs_ses *ses,
     const struct nls_table *nls_cp)
{
 char *bcc_ptr = *pbcc_area;




 if (ses->user_name != ((void*)0))
  strncpy(bcc_ptr, ses->user_name, MAX_USERNAME_SIZE);


 bcc_ptr += strnlen(ses->user_name, MAX_USERNAME_SIZE);
 *bcc_ptr = 0;
 bcc_ptr++;



 if (ses->domainName != ((void*)0)) {
  strncpy(bcc_ptr, ses->domainName, 256);
  bcc_ptr += strnlen(ses->domainName, 256);
 }

 *bcc_ptr = 0;
 bcc_ptr++;



 strcpy(bcc_ptr, "Linux version ");
 bcc_ptr += strlen("Linux version ");
 strcpy(bcc_ptr, init_utsname()->release);
 bcc_ptr += strlen(init_utsname()->release) + 1;

 strcpy(bcc_ptr, CIFS_NETWORK_OPSYS);
 bcc_ptr += strlen(CIFS_NETWORK_OPSYS) + 1;

 *pbcc_area = bcc_ptr;
}
