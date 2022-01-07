
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int u; } ;
typedef TYPE_1__ br_union_u16 ;



__attribute__((used)) static inline void
br_enc16le(void *dst, unsigned x)
{



 unsigned char *buf;

 buf = dst;
 buf[0] = (unsigned char)x;
 buf[1] = (unsigned char)(x >> 8);

}
