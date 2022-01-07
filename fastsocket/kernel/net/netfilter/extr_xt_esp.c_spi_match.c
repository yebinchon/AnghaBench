
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;


 int duprintf (char*,...) ;

__attribute__((used)) static inline bool
spi_match(u_int32_t min, u_int32_t max, u_int32_t spi, bool invert)
{
 bool r;
 duprintf("esp spi_match:%c 0x%x <= 0x%x <= 0x%x", invert ? '!' : ' ',
   min, spi, max);
 r = (spi >= min && spi <= max) ^ invert;
 duprintf(" result %s\n", r ? "PASS" : "FAILED");
 return r;
}
