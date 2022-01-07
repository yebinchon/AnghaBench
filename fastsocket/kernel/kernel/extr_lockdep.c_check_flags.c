
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hardirqs_enabled; int softirqs_enabled; } ;


 scalar_t__ DEBUG_LOCKS_WARN_ON (int) ;
 TYPE_1__* current ;
 int debug_locks ;
 int hardirq_count () ;
 scalar_t__ irqs_disabled_flags (unsigned long) ;
 int print_irqtrace_events (TYPE_1__*) ;
 int printk (char*) ;
 scalar_t__ softirq_count () ;

__attribute__((used)) static void check_flags(unsigned long flags)
{
}
