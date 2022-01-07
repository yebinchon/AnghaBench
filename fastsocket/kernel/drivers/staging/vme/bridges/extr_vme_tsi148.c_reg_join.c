
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void reg_join(unsigned int high, unsigned int low,
 unsigned long long *variable)
{
 *variable = (unsigned long long)high << 32;
 *variable |= (unsigned long long)low;
}
