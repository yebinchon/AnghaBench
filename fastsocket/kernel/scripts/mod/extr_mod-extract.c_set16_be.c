
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int __cpu_to_be16 (int ) ;

__attribute__((used)) static void set16_be(uint16_t *p, uint16_t n) { *p = __cpu_to_be16(n); }
