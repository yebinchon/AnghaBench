
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum lock_usage_bit { ____Placeholder_lock_usage_bit } lock_usage_bit ;



__attribute__((used)) static inline unsigned long lock_flag(enum lock_usage_bit bit)
{
 return 1UL << bit;
}
