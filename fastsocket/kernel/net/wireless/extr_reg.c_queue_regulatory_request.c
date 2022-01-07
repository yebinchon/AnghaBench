
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulatory_request {int list; void** alpha2; } ;


 int list_add_tail (int *,int *) ;
 int reg_requests_list ;
 int reg_requests_lock ;
 int reg_work ;
 int schedule_work (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 void* toupper (void*) ;

__attribute__((used)) static void queue_regulatory_request(struct regulatory_request *request)
{
 request->alpha2[0] = toupper(request->alpha2[0]);
 request->alpha2[1] = toupper(request->alpha2[1]);

 spin_lock(&reg_requests_lock);
 list_add_tail(&request->list, &reg_requests_list);
 spin_unlock(&reg_requests_lock);

 schedule_work(&reg_work);
}
