
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_SIZE ;

__attribute__((used)) static unsigned long npages(unsigned long bytes)
{
 if (bytes % PAGE_SIZE == 0)
  return bytes / PAGE_SIZE;
 else
  return (bytes / PAGE_SIZE) + 1;
}
