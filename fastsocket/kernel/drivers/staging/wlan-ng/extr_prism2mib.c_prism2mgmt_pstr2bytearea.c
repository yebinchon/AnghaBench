
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int len; int data; } ;
typedef TYPE_1__ p80211pstrd_t ;


 int memcpy (int *,int ,int ) ;

void prism2mgmt_pstr2bytearea(u8 *bytearea, p80211pstrd_t *pstr)
{
 memcpy(bytearea, pstr->data, pstr->len);
}
