
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct ieee80211_qos_information_element {scalar_t__ elementID; scalar_t__ length; int qui; } ;
struct ieee80211_info_element {scalar_t__ id; scalar_t__ len; int data; } ;


 scalar_t__ QOS_ELEMENT_ID ;
 int QOS_OUI_INFO_SUB_TYPE ;
 int ieee80211_verify_qos_info (struct ieee80211_qos_information_element*,int ) ;
 int memcpy (int ,int ,scalar_t__) ;

__attribute__((used)) static int ieee80211_read_qos_info_element(struct
                                           ieee80211_qos_information_element
                                           *element_info, struct ieee80211_info_element
                                           *info_element)
{
        int ret = 0;
        u16 size = sizeof(struct ieee80211_qos_information_element) - 2;

        if (element_info == ((void*)0))
                return -1;
        if (info_element == ((void*)0))
                return -1;

        if ((info_element->id == QOS_ELEMENT_ID) && (info_element->len == size)) {
                memcpy(element_info->qui, info_element->data,
                       info_element->len);
                element_info->elementID = info_element->id;
                element_info->length = info_element->len;
        } else
                ret = -1;

        if (ret == 0)
                ret = ieee80211_verify_qos_info(element_info,
                                                QOS_OUI_INFO_SUB_TYPE);
        return ret;
}
