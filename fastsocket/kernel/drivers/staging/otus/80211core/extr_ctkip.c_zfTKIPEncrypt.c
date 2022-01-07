
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef int u32_t ;
typedef int u16_t ;


 int zfWEPEncrypt (int *,int *,int*,int ,int ,int,int*,int*) ;

void zfTKIPEncrypt(zdev_t *dev, zbuf_t *buf, u8_t *snap, u16_t snapLen, u16_t offset, u8_t keyLen, u8_t* key, u32_t* icv)
{
    u8_t iv[3];

    iv[0] = key[0];
    iv[1] = key[1];
    iv[2] = key[2];

    keyLen -= 3;

    zfWEPEncrypt(dev, buf, snap, snapLen, offset, keyLen, &key[3], iv);
}
