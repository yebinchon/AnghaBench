
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
cond_offset_host (char *valaddr, long offset)
{
  if (valaddr == ((void*)0))
    return ((void*)0);
  else
    return valaddr + offset;
}
