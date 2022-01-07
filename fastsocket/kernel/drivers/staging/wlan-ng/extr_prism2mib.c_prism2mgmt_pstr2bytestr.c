
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_5__ {scalar_t__ len; int data; } ;
typedef TYPE_1__ p80211pstrd_t ;
struct TYPE_6__ {int data; int len; } ;
typedef TYPE_2__ hfa384x_bytestr_t ;


 int cpu_to_le16 (int ) ;
 int memcpy (int ,int ,scalar_t__) ;

void prism2mgmt_pstr2bytestr(hfa384x_bytestr_t *bytestr, p80211pstrd_t *pstr)
{
 bytestr->len = cpu_to_le16((u16) (pstr->len));
 memcpy(bytestr->data, pstr->data, pstr->len);
}
