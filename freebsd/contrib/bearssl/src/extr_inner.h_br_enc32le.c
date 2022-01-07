
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int u; } ;
typedef TYPE_1__ br_union_u32 ;



__attribute__((used)) static inline void
br_enc32le(void *dst, uint32_t x)
{



 unsigned char *buf;

 buf = dst;
 buf[0] = (unsigned char)x;
 buf[1] = (unsigned char)(x >> 8);
 buf[2] = (unsigned char)(x >> 16);
 buf[3] = (unsigned char)(x >> 24);

}
