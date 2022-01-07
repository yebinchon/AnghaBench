
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blizzard_request {void (* complete ) (void*) ;void* complete_data; } ;


 int free_req (struct blizzard_request*) ;
 int process_pending_requests () ;

__attribute__((used)) static void request_complete(void *data)
{
 struct blizzard_request *req = (struct blizzard_request *)data;
 void (*complete)(void *);
 void *complete_data;

 complete = req->complete;
 complete_data = req->complete_data;

 free_req(req);

 if (complete)
  complete(complete_data);

 process_pending_requests();
}
