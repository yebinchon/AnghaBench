
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenstore_domain_interface {scalar_t__ rsp_cons; int rsp; scalar_t__ rsp_prod; } ;
typedef scalar_t__ XENSTORE_RING_IDX ;


 int EIO ;
 int check_indexes (scalar_t__,scalar_t__) ;
 char* get_input_chunk (scalar_t__,scalar_t__,int ,unsigned int*) ;
 int mb () ;
 int memcpy (void*,char const*,unsigned int) ;
 int notify_remote_via_evtchn (int ) ;
 int pr_debug (char*,unsigned int,unsigned int) ;
 int rmb () ;
 int xb_wait_for_data_to_read () ;
 int xen_store_evtchn ;
 struct xenstore_domain_interface* xen_store_interface ;

int xb_read(void *data, unsigned len)
{
 struct xenstore_domain_interface *intf = xen_store_interface;
 XENSTORE_RING_IDX cons, prod;
 int rc;

 while (len != 0) {
  unsigned int avail;
  const char *src;

  rc = xb_wait_for_data_to_read();
  if (rc < 0)
   return rc;


  cons = intf->rsp_cons;
  prod = intf->rsp_prod;
  if (!check_indexes(cons, prod)) {
   intf->rsp_cons = intf->rsp_prod = 0;
   return -EIO;
  }

  src = get_input_chunk(cons, prod, intf->rsp, &avail);
  if (avail == 0)
   continue;
  if (avail > len)
   avail = len;


  rmb();

  memcpy(data, src, avail);
  data += avail;
  len -= avail;


  mb();
  intf->rsp_cons += avail;

  pr_debug("Finished read of %i bytes (%i to go)\n", avail, len);


  notify_remote_via_evtchn(xen_store_evtchn);
 }

 return 0;
}
