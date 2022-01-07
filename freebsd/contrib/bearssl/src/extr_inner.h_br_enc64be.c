
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_2__ {int u; } ;
typedef TYPE_1__ br_union_u64 ;


 int br_enc32be (unsigned char*,int ) ;

__attribute__((used)) static inline void
br_enc64be(void *dst, uint64_t x)
{



 unsigned char *buf;

 buf = dst;
 br_enc32be(buf, (uint32_t)(x >> 32));
 br_enc32be(buf + 4, (uint32_t)x);

}
