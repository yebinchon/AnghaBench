
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct TCP_Server_Info {int secType; int sec_mode; } ;







 int SECMODE_SIGN_ENABLED ;
 int SECMODE_SIGN_REQUIRED ;
 int seq_printf (struct seq_file*,char*) ;

__attribute__((used)) static void
cifs_show_security(struct seq_file *s, struct TCP_Server_Info *server)
{
 seq_printf(s, ",sec=");

 switch (server->secType) {
 case 131:
  seq_printf(s, "lanman");
  break;
 case 129:
  seq_printf(s, "ntlmv2");
  break;
 case 130:
  seq_printf(s, "ntlm");
  break;
 case 132:
  seq_printf(s, "krb5");
  break;
 case 128:
  seq_printf(s, "ntlmssp");
  break;
 default:

  seq_printf(s, "unknown");
  break;
 }

 if (server->sec_mode & (SECMODE_SIGN_REQUIRED | SECMODE_SIGN_ENABLED))
  seq_printf(s, "i");
}
