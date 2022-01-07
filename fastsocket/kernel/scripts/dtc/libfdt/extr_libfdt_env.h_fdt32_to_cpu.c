
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int _B (int) ;

__attribute__((used)) static inline uint32_t fdt32_to_cpu(uint32_t x)
{
 return (_B(0) << 24) | (_B(1) << 16) | (_B(2) << 8) | _B(3);
}
