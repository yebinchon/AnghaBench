
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct urb {int dummy; } ;
struct u132_ring {int number; } ;
struct u132_endp {int usb_endp; } ;
struct u132 {int platform_dev; } ;


 int usb_ftdi_elan_edset_input (int ,int ,struct u132_endp*,struct urb*,int ,int ,int ,void (*) (void*,struct urb*,int *,int,int,int,int,int,int,int,int,int)) ;

__attribute__((used)) static inline int edset_input(struct u132 *u132, struct u132_ring *ring,
 struct u132_endp *endp, struct urb *urb, u8 address, u8 toggle_bits,
 void (*callback) (void *endp, struct urb *urb, u8 *buf, int len,
 int toggle_bits, int error_count, int condition_code, int repeat_number,
  int halted, int skipped, int actual, int non_null))
{
 return usb_ftdi_elan_edset_input(u132->platform_dev, ring->number, endp,
   urb, address, endp->usb_endp, toggle_bits, callback);
}
