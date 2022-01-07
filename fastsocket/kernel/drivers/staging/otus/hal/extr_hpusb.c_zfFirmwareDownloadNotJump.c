
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u8_t ;
typedef int u32_t ;
typedef int u16_t ;


 int FIRMWARE_DOWNLOAD ;
 int ZM_LV_0 ;
 int ZM_SUCCESS ;
 int zfwUsbSubmitControl (int *,int ,int,int ,int *,int) ;
 int zm_msg0_init (int ,char*) ;

u16_t zfFirmwareDownloadNotJump(zdev_t* dev, u32_t* fw, u32_t len, u32_t offset)
{
    u16_t ret = ZM_SUCCESS;
    u32_t uCodeOfst = offset;
    u8_t *image, *ptr;
    u32_t result;

    image = (u8_t*) fw;
    ptr = image;

    while (len > 0)
    {
        u32_t translen = (len > 4096) ? 4096 : len;

        result = zfwUsbSubmitControl(dev, FIRMWARE_DOWNLOAD,
                                     (u16_t) (uCodeOfst >> 8),
                                     0, image, translen);

        if (result != ZM_SUCCESS)
        {
            zm_msg0_init(ZM_LV_0, "FIRMWARE_DOWNLOAD failed");
            ret = 1;
            goto exit;
        }

        len -= translen;
        image += translen;
        uCodeOfst += translen;

        result = 0;
    }

exit:

    return ret;

}
