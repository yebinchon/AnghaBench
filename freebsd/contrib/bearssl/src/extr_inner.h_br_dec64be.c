
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int u; } ;
typedef TYPE_1__ br_union_u64 ;


 scalar_t__ br_dec32be (unsigned char const*) ;

__attribute__((used)) static inline uint64_t
br_dec64be(const void *src)
{



 const unsigned char *buf;

 buf = src;
 return ((uint64_t)br_dec32be(buf) << 32)
  | (uint64_t)br_dec32be(buf + 4);

}
