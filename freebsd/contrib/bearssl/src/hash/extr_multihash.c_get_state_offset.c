
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int br_multihash_context ;
 size_t offsetof (int ,int ) ;
 int val_32 ;
 int val_64 ;

__attribute__((used)) static size_t
get_state_offset(int id)
{
 if (id >= 5) {




  return offsetof(br_multihash_context, val_64)
   + ((size_t)(id - 5) * (8 * sizeof(uint64_t)));
 } else {






  unsigned x;

  x = id - 1;
  x = ((x + (x & (x >> 1))) << 2) + (x >> 1);
  return offsetof(br_multihash_context, val_32)
   + x * sizeof(uint32_t);
 }
}
