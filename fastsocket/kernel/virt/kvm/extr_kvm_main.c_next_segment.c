
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;

__attribute__((used)) static int next_segment(unsigned long len, int offset)
{
 if (len > PAGE_SIZE - offset)
  return PAGE_SIZE - offset;
 else
  return len;
}
