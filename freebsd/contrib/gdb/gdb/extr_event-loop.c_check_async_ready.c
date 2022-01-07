
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int async_handler_ready ;

__attribute__((used)) static int
check_async_ready (void)
{
  return async_handler_ready;
}
