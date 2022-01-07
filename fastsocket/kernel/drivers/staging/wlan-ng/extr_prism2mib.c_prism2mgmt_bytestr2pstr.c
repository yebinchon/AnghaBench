
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct TYPE_5__ {scalar_t__ len; int data; } ;
typedef TYPE_1__ p80211pstrd_t ;
struct TYPE_6__ {int data; scalar_t__ len; } ;
typedef TYPE_2__ hfa384x_bytestr_t ;


 scalar_t__ le16_to_cpu (int ) ;
 int memcpy (int ,int ,scalar_t__) ;

void prism2mgmt_bytestr2pstr(hfa384x_bytestr_t *bytestr, p80211pstrd_t *pstr)
{
 pstr->len = (u8) (le16_to_cpu((u16) (bytestr->len)));
 memcpy(pstr->data, bytestr->data, pstr->len);
}
