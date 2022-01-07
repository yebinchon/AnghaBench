
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int __be64_to_cpu (int const) ;

__attribute__((used)) static uint64_t get64_be(const uint64_t *p) { return __be64_to_cpu(*p); }
