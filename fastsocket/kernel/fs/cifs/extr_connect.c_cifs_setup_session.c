
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nls_table {int dummy; } ;
struct TYPE_4__ {scalar_t__ len; int * response; } ;
struct cifs_ses {int need_reconnect; int * ntlmssp; TYPE_2__ auth_key; int status; struct TCP_Server_Info* server; int capabilities; scalar_t__ flags; } ;
struct TYPE_3__ {scalar_t__ len; int * response; } ;
struct TCP_Server_Info {int session_estab; int sequence_number; int srv_mutex; TYPE_1__ session_key; int timeAdj; int capabilities; int sec_mode; } ;


 int CAP_UNIX ;
 int CIFS_SessSetup (unsigned int,struct cifs_ses*,struct nls_table*) ;
 int CifsGood ;
 int GlobalMid_Lock ;
 int cERROR (int,char*,int) ;
 int cFYI (int,char*,...) ;
 int kfree (int *) ;
 scalar_t__ linuxExtEnabled ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int cifs_setup_session(unsigned int xid, struct cifs_ses *ses,
   struct nls_table *nls_info)
{
 int rc = 0;
 struct TCP_Server_Info *server = ses->server;

 ses->flags = 0;
 ses->capabilities = server->capabilities;
 if (linuxExtEnabled == 0)
  ses->capabilities &= (~CAP_UNIX);

 cFYI(1, "Security Mode: 0x%x Capabilities: 0x%x TimeAdjust: %d",
   server->sec_mode, server->capabilities, server->timeAdj);

 rc = CIFS_SessSetup(xid, ses, nls_info);
 if (rc) {
  cERROR(1, "Send error in SessSetup = %d", rc);
 } else {
  mutex_lock(&ses->server->srv_mutex);
  if (!server->session_estab) {
   server->session_key.response = ses->auth_key.response;
   server->session_key.len = ses->auth_key.len;
   server->sequence_number = 0x2;
   server->session_estab = 1;
   ses->auth_key.response = ((void*)0);
  }
  mutex_unlock(&server->srv_mutex);

  cFYI(1, "CIFS Session Established successfully");
  spin_lock(&GlobalMid_Lock);
  ses->status = CifsGood;
  ses->need_reconnect = 0;
  spin_unlock(&GlobalMid_Lock);
 }

 kfree(ses->auth_key.response);
 ses->auth_key.response = ((void*)0);
 ses->auth_key.len = 0;
 kfree(ses->ntlmssp);
 ses->ntlmssp = ((void*)0);

 return rc;
}
