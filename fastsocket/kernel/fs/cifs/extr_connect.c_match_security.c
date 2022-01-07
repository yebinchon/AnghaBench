
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_vol {int secFlg; } ;
struct TCP_Server_Info {int secType; int sec_mode; } ;


 unsigned int CIFSSEC_MAY_KRB5 ;
 unsigned int CIFSSEC_MAY_LANMAN ;
 unsigned int CIFSSEC_MAY_NTLM ;
 unsigned int CIFSSEC_MAY_NTLMSSP ;
 unsigned int CIFSSEC_MAY_NTLMV2 ;
 unsigned int CIFSSEC_MAY_PLNTXT ;
 unsigned int CIFSSEC_MAY_SIGN ;
 int CIFSSEC_MUST_SEAL ;
 int CIFSSEC_MUST_SIGN ;





 int SECMODE_SIGN_ENABLED ;
 int SECMODE_SIGN_REQUIRED ;
 unsigned int global_secflags ;

__attribute__((used)) static bool
match_security(struct TCP_Server_Info *server, struct smb_vol *vol)
{
 unsigned int secFlags;

 if (vol->secFlg & (~(CIFSSEC_MUST_SIGN | CIFSSEC_MUST_SEAL)))
  secFlags = vol->secFlg;
 else
  secFlags = global_secflags | vol->secFlg;

 switch (server->secType) {
 case 131:
  if (!(secFlags & (CIFSSEC_MAY_LANMAN|CIFSSEC_MAY_PLNTXT)))
   return 0;
  break;
 case 129:
  if (!(secFlags & CIFSSEC_MAY_NTLMV2))
   return 0;
  break;
 case 130:
  if (!(secFlags & CIFSSEC_MAY_NTLM))
   return 0;
  break;
 case 132:
  if (!(secFlags & CIFSSEC_MAY_KRB5))
   return 0;
  break;
 case 128:
  if (!(secFlags & CIFSSEC_MAY_NTLMSSP))
   return 0;
  break;
 default:

  return 0;
 }


 if ((secFlags & CIFSSEC_MAY_SIGN) == 0 &&
     (server->sec_mode & SECMODE_SIGN_REQUIRED))
   return 0;
 else if (((secFlags & CIFSSEC_MUST_SIGN) == CIFSSEC_MUST_SIGN) &&
   (server->sec_mode &
    (SECMODE_SIGN_ENABLED|SECMODE_SIGN_REQUIRED)) == 0)
   return 0;

 return 1;
}
