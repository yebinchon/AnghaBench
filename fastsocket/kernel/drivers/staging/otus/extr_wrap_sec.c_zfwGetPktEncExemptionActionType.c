
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;


 int ZM_ENCRYPTION_EXEMPT_NO_EXEMPTION ;

u8_t zfwGetPktEncExemptionActionType(zdev_t* dev, zbuf_t* buf)
{
    return ZM_ENCRYPTION_EXEMPT_NO_EXEMPTION;
}
