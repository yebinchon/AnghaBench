
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;



__attribute__((used)) static char *dlfb_set_register(char *bufptr, uint8_t reg, uint8_t val)
{
 *bufptr++ = 0xAF;
 *bufptr++ = 0x20;
 *bufptr++ = reg;
 *bufptr++ = val;

 return bufptr;
}
