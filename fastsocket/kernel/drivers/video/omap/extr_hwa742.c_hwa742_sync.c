
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct completion* sync; } ;
struct hwa742_request {int entry; TYPE_1__ par; int * complete; int handler; } ;
struct completion {int dummy; } ;


 int LIST_HEAD (int ) ;
 struct hwa742_request* alloc_req () ;
 int init_completion (struct completion*) ;
 int list_add (int *,int *) ;
 int req_list ;
 int submit_req_list (int *) ;
 int sync_handler ;
 int wait_for_completion (struct completion*) ;

__attribute__((used)) static void hwa742_sync(void)
{
 LIST_HEAD(req_list);
 struct hwa742_request *req;
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
