
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TCP_Server_Info {scalar_t__ tcpStatus; int req_lock; int in_flight; int request_q; } ;


 int const CIFS_ASYNC_OP ;
 int const CIFS_BLOCKING_OP ;
 scalar_t__ CifsExiting ;
 int ENOENT ;
 int cifs_num_waiters_dec (struct TCP_Server_Info*) ;
 int cifs_num_waiters_inc (struct TCP_Server_Info*) ;
 int has_credits (struct TCP_Server_Info*,int*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_event_killable (int ,int ) ;

__attribute__((used)) static int
wait_for_free_credits(struct TCP_Server_Info *server, const int optype,
        int *credits)
{
 int rc;

 spin_lock(&server->req_lock);
 if (optype == CIFS_ASYNC_OP) {

  server->in_flight++;
  *credits -= 1;
  spin_unlock(&server->req_lock);
  return 0;
 }

 while (1) {
  if (*credits <= 0) {
   spin_unlock(&server->req_lock);
   cifs_num_waiters_inc(server);
   rc = wait_event_killable(server->request_q,
       has_credits(server, credits));
   cifs_num_waiters_dec(server);
   if (rc)
    return rc;
   spin_lock(&server->req_lock);
  } else {
   if (server->tcpStatus == CifsExiting) {
    spin_unlock(&server->req_lock);
    return -ENOENT;
   }







   if (optype != CIFS_BLOCKING_OP) {
    *credits -= 1;
    server->in_flight++;
   }
   spin_unlock(&server->req_lock);
   break;
  }
 }
 return 0;
}
