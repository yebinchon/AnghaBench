
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* plink_detect_t ;
typedef int link_detect_t ;
struct TYPE_4__ {int SlotNum; } ;


 int DEFAULT_SLOT_NUM ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void rtl8180_link_detect_init(plink_detect_t plink_detect)
{
 memset(plink_detect, 0, sizeof(link_detect_t));
 plink_detect->SlotNum = DEFAULT_SLOT_NUM;
}
