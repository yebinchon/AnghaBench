
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int write_32bit_value (int ) ;

__attribute__((used)) static void write_64bit_value(uint64_t i) {


  uint32_t lo = (uint32_t) i;
  uint32_t hi = (uint32_t) (i >> 32);
  write_32bit_value(lo);
  write_32bit_value(hi);
}
