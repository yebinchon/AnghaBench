
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int __le64_to_cpu (int const) ;

__attribute__((used)) static uint64_t get64_le(const uint64_t *p) { return __le64_to_cpu(*p); }
