
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int __cpu_to_be64 (int ) ;

__attribute__((used)) static void set64_be(uint64_t *p, uint64_t n) { *p = __cpu_to_be64(n); }
