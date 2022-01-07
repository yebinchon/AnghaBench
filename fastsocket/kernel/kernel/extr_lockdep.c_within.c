
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int within(const void *addr, void *start, unsigned long size)
{
 return addr >= start && addr < start + size;
}
