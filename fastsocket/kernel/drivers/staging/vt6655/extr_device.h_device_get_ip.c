
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct in_ifaddr {int ifa_address; } ;
struct in_device {scalar_t__ ifa_list; } ;
struct TYPE_5__ {int abyIPAddr; TYPE_1__* dev; } ;
struct TYPE_4__ {scalar_t__ ip_ptr; } ;
typedef TYPE_2__* PSDevice ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) inline static BOOL device_get_ip(PSDevice pInfo) {
    struct in_device* in_dev=(struct in_device*) pInfo->dev->ip_ptr;
    struct in_ifaddr* ifa;

    if (in_dev!=((void*)0)) {
        ifa=(struct in_ifaddr*) in_dev->ifa_list;
        if (ifa!=((void*)0)) {
            memcpy(pInfo->abyIPAddr,&ifa->ifa_address,4);
            return TRUE;
        }
    }
    return FALSE;
}
