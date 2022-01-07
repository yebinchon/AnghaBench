
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user {int dummy; } ;



kernel_u_size (void)
{
  return sizeof (struct user);
}
