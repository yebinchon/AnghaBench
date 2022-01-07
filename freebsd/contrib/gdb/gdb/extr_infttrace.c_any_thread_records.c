
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ count; } ;


 TYPE_1__ thread_head ;

__attribute__((used)) static int
any_thread_records (void)
{
  return (thread_head.count > 0);
}
