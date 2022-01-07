
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mid_q_entry {int multiRsp; char* resp_buf; int multiEnd; int large_buf; } ;
struct TCP_Server_Info {int large_buf; int * smallbuf; int * bigbuf; } ;


 int cERROR (int,char*) ;
 scalar_t__ check2ndT2 (char*) ;
 int coalesce_t2 (char*,char*) ;
 void dequeue_mid (struct mid_q_entry*,int) ;

__attribute__((used)) static void
handle_mid(struct mid_q_entry *mid, struct TCP_Server_Info *server,
    char *buf, int malformed)
{
 if (malformed == 0 && check2ndT2(buf) > 0) {
  mid->multiRsp = 1;
  if (mid->resp_buf) {

   malformed = coalesce_t2(buf, mid->resp_buf);
   if (malformed > 0)
    return;


   mid->multiEnd = 1;
   return dequeue_mid(mid, malformed);
  }
  if (!server->large_buf) {

   cERROR(1, "1st trans2 resp needs bigbuf");
  } else {

   mid->resp_buf = buf;
   mid->large_buf = 1;
   server->bigbuf = ((void*)0);
  }
  return;
 }
 mid->resp_buf = buf;
 mid->large_buf = server->large_buf;

 if (!mid->multiRsp) {

  if (server->large_buf)
   server->bigbuf = ((void*)0);
  else
   server->smallbuf = ((void*)0);
 }
 dequeue_mid(mid, malformed);
}
