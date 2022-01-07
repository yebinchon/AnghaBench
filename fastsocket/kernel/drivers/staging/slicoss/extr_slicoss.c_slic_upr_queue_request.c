
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct slic_upr {struct slic_upr* next; void* upr_buffer_h; void* upr_data_h; void* upr_buffer; void* upr_data; void* upr_request; int adapter; } ;
struct adapter {struct slic_upr* upr_list; int port; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int STATUS_SUCCESS ;
 struct slic_upr* kmalloc (int,int ) ;

__attribute__((used)) static int slic_upr_queue_request(struct adapter *adapter,
      u32 upr_request,
      u32 upr_data,
      u32 upr_data_h,
      u32 upr_buffer, u32 upr_buffer_h)
{
 struct slic_upr *upr;
 struct slic_upr *uprqueue;

 upr = kmalloc(sizeof(struct slic_upr), GFP_ATOMIC);
 if (!upr)
  return -ENOMEM;

 upr->adapter = adapter->port;
 upr->upr_request = upr_request;
 upr->upr_data = upr_data;
 upr->upr_buffer = upr_buffer;
 upr->upr_data_h = upr_data_h;
 upr->upr_buffer_h = upr_buffer_h;
 upr->next = ((void*)0);
 if (adapter->upr_list) {
  uprqueue = adapter->upr_list;

  while (uprqueue->next)
   uprqueue = uprqueue->next;
  uprqueue->next = upr;
 } else {
  adapter->upr_list = upr;
 }
 return STATUS_SUCCESS;
}
