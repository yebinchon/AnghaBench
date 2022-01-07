
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wusbhc {int dummy; } ;


 int WUSB_KEY_INDEX_ORIGINATOR_HOST ;
 int WUSB_KEY_INDEX_TYPE_GTK ;
 int __hwahc_dev_set_key (struct wusbhc*,int ,int ,void const*,size_t,int ) ;
 int wusb_key_index (int ,int ,int ) ;

__attribute__((used)) static int __hwahc_op_set_gtk(struct wusbhc *wusbhc, u32 tkid,
         const void *key, size_t key_size)
{
 u8 key_idx = wusb_key_index(0, WUSB_KEY_INDEX_TYPE_GTK,
        WUSB_KEY_INDEX_ORIGINATOR_HOST);

 return __hwahc_dev_set_key(wusbhc, 0, tkid, key, key_size, key_idx);
}
