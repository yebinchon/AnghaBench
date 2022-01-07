
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int u; } ;
typedef TYPE_1__ br_union_u32 ;



__attribute__((used)) static inline uint32_t
br_dec32be(const void *src)
{



 const unsigned char *buf;

 buf = src;
 return ((uint32_t)buf[0] << 24)
  | ((uint32_t)buf[1] << 16)
  | ((uint32_t)buf[2] << 8)
  | (uint32_t)buf[3];

}
