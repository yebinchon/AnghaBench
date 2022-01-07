
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wlp_uuid {int* data; } ;



__attribute__((used)) static
u8 wlp_wss_comp_wssid_hash(struct wlp_uuid *wssid)
{
 return wssid->data[0] ^ wssid->data[1] ^ wssid->data[2]
        ^ wssid->data[3] ^ wssid->data[4] ^ wssid->data[5]
        ^ wssid->data[6] ^ wssid->data[7] ^ wssid->data[8]
        ^ wssid->data[9] ^ wssid->data[10] ^ wssid->data[11]
        ^ wssid->data[12] ^ wssid->data[13] ^ wssid->data[14]
        ^ wssid->data[15];
}
