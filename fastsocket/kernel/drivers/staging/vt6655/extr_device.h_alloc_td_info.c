
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PDEVICE_TD_INFO ;
typedef int DEVICE_TD_INFO ;


 scalar_t__ GFP_ATOMIC ;
 scalar_t__ kmalloc (int,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static inline PDEVICE_TD_INFO alloc_td_info(void) {
    PDEVICE_TD_INFO ptr;
    if ((ptr = (PDEVICE_TD_INFO)kmalloc((int)sizeof(DEVICE_TD_INFO), (int)GFP_ATOMIC))==((void*)0))
        return ((void*)0);
    else {
        memset(ptr,0,sizeof(DEVICE_TD_INFO));
        return ptr;
    }
}
