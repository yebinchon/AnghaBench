
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int * transfer_buffer; } ;
struct mon_event_text {int data; scalar_t__ is_in; } ;
struct mon_bus {int dummy; } ;


 int DATA_MAX ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static inline char mon_text_get_data(struct mon_event_text *ep, struct urb *urb,
    int len, char ev_type, struct mon_bus *mbus)
{
 if (len <= 0)
  return 'L';
 if (len >= DATA_MAX)
  len = DATA_MAX;

 if (ep->is_in) {
  if (ev_type != 'C')
   return '<';
 } else {
  if (ev_type != 'S')
   return '>';
 }

 if (urb->transfer_buffer == ((void*)0))
  return 'Z';

 memcpy(ep->data, urb->transfer_buffer, len);
 return 0;
}
