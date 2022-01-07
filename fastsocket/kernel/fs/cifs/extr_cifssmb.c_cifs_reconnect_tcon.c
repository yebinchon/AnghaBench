
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nls_table {int dummy; } ;
struct cifs_tcon {scalar_t__ tidStatus; int treeName; int need_reconnect; int retry; struct cifs_ses* ses; } ;
struct cifs_ses {int capabilities; int session_mutex; scalar_t__ need_reconnect; struct TCP_Server_Info* server; } ;
struct TCP_Server_Info {scalar_t__ tcpStatus; int response_q; } ;


 int CAP_UNIX ;
 int CIFSTCon (int ,struct cifs_ses*,int ,struct cifs_tcon*,struct nls_table*) ;
 scalar_t__ CifsExiting ;
 scalar_t__ CifsNeedReconnect ;
 int EAGAIN ;
 int EHOSTDOWN ;
 int ENODEV ;
 int HZ ;



 int SMB_COM_OPEN_ANDX ;

 int SMB_COM_TREE_DISCONNECT ;

 int atomic_inc (int *) ;
 int cFYI (int,char*,...) ;
 int cifs_negotiate_protocol (int ,struct cifs_ses*) ;
 int cifs_setup_session (int ,struct cifs_ses*,struct nls_table*) ;
 struct nls_table* load_nls_default () ;
 int mark_open_files_invalid (struct cifs_tcon*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reset_cifs_unix_caps (int ,struct cifs_tcon*,int *,int *) ;
 int tconInfoReconnectCount ;
 int unload_nls (struct nls_table*) ;
 int wait_event_interruptible_timeout (int ,int,int) ;

__attribute__((used)) static int
cifs_reconnect_tcon(struct cifs_tcon *tcon, int smb_command)
{
 int rc = 0;
 struct cifs_ses *ses;
 struct TCP_Server_Info *server;
 struct nls_table *nls_codepage;






 if (!tcon)
  return 0;

 ses = tcon->ses;
 server = ses->server;





 if (tcon->tidStatus == CifsExiting) {
  if (smb_command != 128 &&
      smb_command != SMB_COM_OPEN_ANDX &&
      smb_command != SMB_COM_TREE_DISCONNECT) {
   cFYI(1, "can not send cmd %d while umounting",
    smb_command);
   return -ENODEV;
  }
 }





 while (server->tcpStatus == CifsNeedReconnect) {
  wait_event_interruptible_timeout(server->response_q,
   (server->tcpStatus != CifsNeedReconnect), 10 * HZ);


  if (server->tcpStatus != CifsNeedReconnect)
   break;






  if (!tcon->retry) {
   cFYI(1, "gave up waiting on reconnect in smb_init");
   return -EHOSTDOWN;
  }
 }

 if (!ses->need_reconnect && !tcon->need_reconnect)
  return 0;

 nls_codepage = load_nls_default();





 mutex_lock(&ses->session_mutex);
 rc = cifs_negotiate_protocol(0, ses);
 if (rc == 0 && ses->need_reconnect)
  rc = cifs_setup_session(0, ses, nls_codepage);


 if (rc || !tcon->need_reconnect) {
  mutex_unlock(&ses->session_mutex);
  goto out;
 }

 mark_open_files_invalid(tcon);
 rc = CIFSTCon(0, ses, tcon->treeName, tcon, nls_codepage);
 mutex_unlock(&ses->session_mutex);
 cFYI(1, "reconnect tcon rc = %d", rc);

 if (rc)
  goto out;





 atomic_inc(&tconInfoReconnectCount);


 if (ses->capabilities & CAP_UNIX)
  reset_cifs_unix_caps(0, tcon, ((void*)0), ((void*)0));
out:




 switch (smb_command) {
 case 129:
 case 128:
 case 132:
 case 131:
 case 130:
  rc = -EAGAIN;
 }

 unload_nls(nls_codepage);
 return rc;
}
