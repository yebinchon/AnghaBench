
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int __le16_to_cpu (int const) ;

__attribute__((used)) static uint16_t get16_le(const uint16_t *p) { return __le16_to_cpu(*p); }
