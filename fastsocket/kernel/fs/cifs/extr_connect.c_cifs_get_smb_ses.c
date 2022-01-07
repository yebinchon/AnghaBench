
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct smb_vol {int local_nls; int secFlg; int linux_uid; int cred_uid; scalar_t__ domainname; scalar_t__ password; scalar_t__ username; } ;
struct cifs_ses {int smb_ses_list; int session_mutex; int overrideSecFlg; int linux_uid; int cred_uid; void* domainName; void* password; void* user_name; int serverName; struct TCP_Server_Info* server; scalar_t__ need_reconnect; int status; } ;
struct TYPE_2__ {scalar_t__ ss_family; } ;
struct TCP_Server_Info {int smb_ses_list; TYPE_1__ dstaddr; } ;


 scalar_t__ AF_INET6 ;
 int ENOMEM ;
 struct cifs_ses* ERR_PTR (int) ;
 int FreeXid (int) ;
 int GFP_KERNEL ;
 int GetXid () ;
 int cFYI (int,char*,...) ;
 struct cifs_ses* cifs_find_smb_ses (struct TCP_Server_Info*,struct smb_vol*) ;
 int cifs_negotiate_protocol (int,struct cifs_ses*) ;
 int cifs_put_smb_ses (struct cifs_ses*) ;
 int cifs_put_tcp_session (struct TCP_Server_Info*) ;
 int cifs_setup_session (int,struct cifs_ses*,int ) ;
 int cifs_tcp_ses_lock ;
 void* kstrdup (scalar_t__,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct cifs_ses* sesInfoAlloc () ;
 int sesInfoFree (struct cifs_ses*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sprintf (int ,char*,int *) ;

__attribute__((used)) static struct cifs_ses *
cifs_get_smb_ses(struct TCP_Server_Info *server, struct smb_vol *volume_info)
{
 int rc = -ENOMEM, xid;
 struct cifs_ses *ses;
 struct sockaddr_in *addr = (struct sockaddr_in *)&server->dstaddr;
 struct sockaddr_in6 *addr6 = (struct sockaddr_in6 *)&server->dstaddr;

 xid = GetXid();

 ses = cifs_find_smb_ses(server, volume_info);
 if (ses) {
  cFYI(1, "Existing smb sess found (status=%d)", ses->status);

  mutex_lock(&ses->session_mutex);
  rc = cifs_negotiate_protocol(xid, ses);
  if (rc) {
   mutex_unlock(&ses->session_mutex);

   cifs_put_smb_ses(ses);
   FreeXid(xid);
   return ERR_PTR(rc);
  }
  if (ses->need_reconnect) {
   cFYI(1, "Session needs reconnect");
   rc = cifs_setup_session(xid, ses,
      volume_info->local_nls);
   if (rc) {
    mutex_unlock(&ses->session_mutex);

    cifs_put_smb_ses(ses);
    FreeXid(xid);
    return ERR_PTR(rc);
   }
  }
  mutex_unlock(&ses->session_mutex);


  cifs_put_tcp_session(server);
  FreeXid(xid);
  return ses;
 }

 cFYI(1, "Existing smb sess not found");
 ses = sesInfoAlloc();
 if (ses == ((void*)0))
  goto get_ses_fail;


 ses->server = server;
 if (server->dstaddr.ss_family == AF_INET6)
  sprintf(ses->serverName, "%pI6", &addr6->sin6_addr);
 else
  sprintf(ses->serverName, "%pI4", &addr->sin_addr);

 if (volume_info->username) {
  ses->user_name = kstrdup(volume_info->username, GFP_KERNEL);
  if (!ses->user_name)
   goto get_ses_fail;
 }


 if (volume_info->password) {
  ses->password = kstrdup(volume_info->password, GFP_KERNEL);
  if (!ses->password)
   goto get_ses_fail;
 }
 if (volume_info->domainname) {
  ses->domainName = kstrdup(volume_info->domainname, GFP_KERNEL);
  if (!ses->domainName)
   goto get_ses_fail;
 }
 ses->cred_uid = volume_info->cred_uid;
 ses->linux_uid = volume_info->linux_uid;
 ses->overrideSecFlg = volume_info->secFlg;

 mutex_lock(&ses->session_mutex);
 rc = cifs_negotiate_protocol(xid, ses);
 if (!rc)
  rc = cifs_setup_session(xid, ses, volume_info->local_nls);
 mutex_unlock(&ses->session_mutex);
 if (rc)
  goto get_ses_fail;


 spin_lock(&cifs_tcp_ses_lock);
 list_add(&ses->smb_ses_list, &server->smb_ses_list);
 spin_unlock(&cifs_tcp_ses_lock);

 FreeXid(xid);
 return ses;

get_ses_fail:
 sesInfoFree(ses);
 FreeXid(xid);
 return ERR_PTR(rc);
}
