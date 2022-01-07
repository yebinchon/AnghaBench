
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alloc_fd (int ,int ) ;

int get_unused_fd(void)
{
 return alloc_fd(0, 0);
}
