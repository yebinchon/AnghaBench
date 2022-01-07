
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int poplevel (int ,int ,int ) ;

void
finish_scope (void)
{
  poplevel (0, 0, 0);
}
