
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ui__error (char*) ;

int ui__error_paranoid(void)
{
 return ui__error("Permission error - are you root?\n"
      "Consider tweaking /proc/sys/kernel/perf_event_paranoid:\n"
      " -1 - Not paranoid at all\n"
      "  0 - Disallow raw tracepoint access for unpriv\n"
      "  1 - Disallow cpu events for unpriv\n"
      "  2 - Disallow kernel profiling for unpriv\n");
}
