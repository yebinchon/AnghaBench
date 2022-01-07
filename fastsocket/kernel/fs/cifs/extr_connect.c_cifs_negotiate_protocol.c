
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_ses {struct TCP_Server_Info* server; } ;
struct TCP_Server_Info {scalar_t__ maxBuf; scalar_t__ tcpStatus; } ;


 int CIFSSMBNegotiate (unsigned int,struct cifs_ses*) ;
 scalar_t__ CifsGood ;
 scalar_t__ CifsNeedNegotiate ;
 int EAGAIN ;
 int EHOSTDOWN ;
 int GlobalMid_Lock ;
 int cifs_set_credits (struct TCP_Server_Info*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int cifs_negotiate_protocol(unsigned int xid, struct cifs_ses *ses)
{
 int rc = 0;
 struct TCP_Server_Info *server = ses->server;


 if (server->maxBuf != 0)
  return 0;

 cifs_set_credits(server, 1);
 rc = CIFSSMBNegotiate(xid, ses);
 if (rc == -EAGAIN) {

  cifs_set_credits(server, 1);
  rc = CIFSSMBNegotiate(xid, ses);
  if (rc == -EAGAIN)
   rc = -EHOSTDOWN;
 }
 if (rc == 0) {
  spin_lock(&GlobalMid_Lock);
  if (server->tcpStatus == CifsNeedNegotiate)
   server->tcpStatus = CifsGood;
  else
   rc = -EHOSTDOWN;
  spin_unlock(&GlobalMid_Lock);

 }

 return rc;
}
