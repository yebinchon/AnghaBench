
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int __be32_to_cpu (int const) ;

__attribute__((used)) static uint32_t get32_be(const uint32_t *p) { return __be32_to_cpu(*p); }
