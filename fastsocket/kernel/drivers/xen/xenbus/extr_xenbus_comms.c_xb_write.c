
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenstore_domain_interface {scalar_t__ req_prod; scalar_t__ req_cons; int req; } ;
typedef scalar_t__ XENSTORE_RING_IDX ;


 int EIO ;
 scalar_t__ XENSTORE_RING_SIZE ;
 int check_indexes (scalar_t__,scalar_t__) ;
 void* get_output_chunk (scalar_t__,scalar_t__,int ,unsigned int*) ;
 int mb () ;
 int memcpy (void*,void const*,unsigned int) ;
 int notify_remote_via_evtchn (int ) ;
 int wait_event_interruptible (int ,int) ;
 int wmb () ;
 int xb_waitq ;
 int xen_store_evtchn ;
 struct xenstore_domain_interface* xen_store_interface ;

int xb_write(const void *data, unsigned len)
{
 struct xenstore_domain_interface *intf = xen_store_interface;
 XENSTORE_RING_IDX cons, prod;
 int rc;

 while (len != 0) {
  void *dst;
  unsigned int avail;

  rc = wait_event_interruptible(
   xb_waitq,
   (intf->req_prod - intf->req_cons) !=
   XENSTORE_RING_SIZE);
  if (rc < 0)
   return rc;


  cons = intf->req_cons;
  prod = intf->req_prod;
  if (!check_indexes(cons, prod)) {
   intf->req_cons = intf->req_prod = 0;
   return -EIO;
  }

  dst = get_output_chunk(cons, prod, intf->req, &avail);
  if (avail == 0)
   continue;
  if (avail > len)
   avail = len;


  mb();

  memcpy(dst, data, avail);
  data += avail;
  len -= avail;


  wmb();
  intf->req_prod += avail;


  notify_remote_via_evtchn(xen_store_evtchn);
 }

 return 0;
}
