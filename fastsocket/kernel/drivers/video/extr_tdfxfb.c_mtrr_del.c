
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;

__attribute__((used)) static inline int mtrr_del(int reg, unsigned long base,
    unsigned long size)
{
    return -ENODEV;
}
