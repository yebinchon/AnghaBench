
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_3__ {int data; scalar_t__ len; } ;
typedef TYPE_1__ p80211pstrd_t ;


 int memcpy (int ,scalar_t__*,int) ;

void prism2mgmt_bytearea2pstr(u8 *bytearea, p80211pstrd_t *pstr, int len)
{
 pstr->len = (u8) len;
 memcpy(pstr->data, bytearea, len);
}
