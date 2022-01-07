
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_server {int timeout_tq; } ;


 int schedule_work (int *) ;

void ncpdgram_timeout_call(unsigned long v)
{
 struct ncp_server *server = (void*)v;

 schedule_work(&server->timeout_tq);
}
