
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rceb {int dummy; } ;
struct uwb_rc {int version; } ;


 int ENOANO ;
 int hwarc_filter_event_WUSB_0100 (struct uwb_rc*,struct uwb_rceb**,size_t const,size_t*,size_t*) ;

__attribute__((used)) static
int hwarc_filter_event(struct uwb_rc *rc, struct uwb_rceb **header,
         const size_t buf_size, size_t *_real_size,
         size_t *_new_size)
{
 int result = -ENOANO;
 if (rc->version == 0x0100)
  result = hwarc_filter_event_WUSB_0100(
   rc, header, buf_size, _real_size, _new_size);
 return result;
}
