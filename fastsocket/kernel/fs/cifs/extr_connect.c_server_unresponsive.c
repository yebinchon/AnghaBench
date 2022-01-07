
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TCP_Server_Info {scalar_t__ tcpStatus; int response_q; int hostname; scalar_t__ lstrp; } ;


 scalar_t__ CifsGood ;
 int HZ ;
 int SMB_ECHO_INTERVAL ;
 int cERROR (int,char*,int ,int) ;
 int cifs_reconnect (struct TCP_Server_Info*) ;
 int jiffies ;
 scalar_t__ time_after (int ,scalar_t__) ;
 int wake_up (int *) ;

__attribute__((used)) static bool
server_unresponsive(struct TCP_Server_Info *server)
{
 if (server->tcpStatus == CifsGood &&
     time_after(jiffies, server->lstrp + 2 * SMB_ECHO_INTERVAL)) {
  cERROR(1, "Server %s has not responded in %d seconds. "
     "Reconnecting...", server->hostname,
     (2 * SMB_ECHO_INTERVAL) / HZ);
  cifs_reconnect(server);
  wake_up(&server->response_q);
  return 1;
 }

 return 0;
}
