
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PDEVICE_RD_INFO ;
typedef int DEVICE_RD_INFO ;


 scalar_t__ GFP_ATOMIC ;
 scalar_t__ kmalloc (int,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static inline PDEVICE_RD_INFO alloc_rd_info(void) {
    PDEVICE_RD_INFO ptr;
    if ((ptr = (PDEVICE_RD_INFO)kmalloc((int)sizeof(DEVICE_RD_INFO), (int)GFP_ATOMIC)) == ((void*)0))
        return ((void*)0);
    else {
        memset(ptr,0,sizeof(DEVICE_RD_INFO));
        return ptr;
    }
}
