
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int libunwind_initialized ;

int
libunwind_is_initialized (void)
{
  return libunwind_initialized;
}
