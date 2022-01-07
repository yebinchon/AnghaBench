
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_vol {char* username; char* password; int cred_uid; } ;
struct cifs_ses {int * password; int * user_name; int cred_uid; TYPE_1__* server; } ;
struct TYPE_2__ {int secType; } ;



 int MAX_PASSWORD_SIZE ;
 int MAX_USERNAME_SIZE ;
 int strlen (char*) ;
 int strncmp (int *,char*,int ) ;

__attribute__((used)) static int match_session(struct cifs_ses *ses, struct smb_vol *vol)
{
 switch (ses->server->secType) {
 case 128:
  if (vol->cred_uid != ses->cred_uid)
   return 0;
  break;
 default:

  if (ses->user_name == ((void*)0))
   return 0;
  if (strncmp(ses->user_name, vol->username,
       MAX_USERNAME_SIZE))
   return 0;
  if (strlen(vol->username) != 0 &&
      ses->password != ((void*)0) &&
      strncmp(ses->password,
       vol->password ? vol->password : "",
       MAX_PASSWORD_SIZE))
   return 0;
 }
 return 1;
}
