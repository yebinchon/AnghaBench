
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOTSUP ;
 int errno ;

int
c_stack_action (void (*action) (int) __attribute__ ((unused)))
{
  errno = ENOTSUP;
  return -1;
}
