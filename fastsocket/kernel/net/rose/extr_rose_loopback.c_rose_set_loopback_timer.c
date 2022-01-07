
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ expires; int * function; scalar_t__ data; } ;


 int add_timer (TYPE_1__*) ;
 int del_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 TYPE_1__ loopback_timer ;
 int rose_loopback_timer ;

__attribute__((used)) static void rose_set_loopback_timer(void)
{
 del_timer(&loopback_timer);

 loopback_timer.data = 0;
 loopback_timer.function = &rose_loopback_timer;
 loopback_timer.expires = jiffies + 10;

 add_timer(&loopback_timer);
}
