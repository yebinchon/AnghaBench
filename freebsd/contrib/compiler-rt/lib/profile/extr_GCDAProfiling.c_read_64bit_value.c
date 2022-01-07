
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;


 scalar_t__ read_32bit_value () ;

__attribute__((used)) static uint64_t read_64bit_value() {


  uint32_t lo = read_32bit_value();
  uint32_t hi = read_32bit_value();
  return ((uint64_t)hi << 32) | ((uint64_t)lo);
}
