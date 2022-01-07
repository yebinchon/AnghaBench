
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct completion {int dummy; } ;
struct TYPE_2__ {struct completion* sync; } ;
struct blizzard_request {int entry; TYPE_1__ par; int * complete; int handler; } ;


 int LIST_HEAD (int ) ;
 struct blizzard_request* alloc_req () ;
 int init_completion (struct completion*) ;
 int list_add (int *,int *) ;
 int req_list ;
 int submit_req_list (int *) ;
 int sync_handler ;
 int wait_for_completion (struct completion*) ;

__attribute__((used)) static void blizzard_sync(void)
{
 LIST_HEAD(req_list);
 struct blizzard_request *req;
 struct completion comp;

 req = alloc_req();

 req->handler = sync_handler;
 req->complete = ((void*)0);
 init_completion(&comp);
 req->par.sync = &comp;

 list_add(&req->entry, &req_list);
 submit_req_list(&req_list);

 wait_for_completion(&comp);
}
