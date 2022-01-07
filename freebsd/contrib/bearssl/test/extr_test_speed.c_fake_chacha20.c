
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;



__attribute__((used)) static uint32_t
fake_chacha20(const void *key, const void *iv,
 uint32_t cc, void *data, size_t len)
{
 (void)key;
 (void)iv;
 (void)data;
 (void)len;
 return cc + (uint32_t)((len + 63) >> 6);
}
