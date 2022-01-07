
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 int fib6_run_gc (int ,struct net*,int) ;

__attribute__((used)) static void fib6_gc_timer_cb(unsigned long arg)
{
 fib6_run_gc(0, (struct net *)arg, 1);
}
