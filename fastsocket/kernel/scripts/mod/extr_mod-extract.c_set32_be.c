
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int __cpu_to_be32 (int ) ;

__attribute__((used)) static void set32_be(uint32_t *p, uint32_t n) { *p = __cpu_to_be32(n); }
