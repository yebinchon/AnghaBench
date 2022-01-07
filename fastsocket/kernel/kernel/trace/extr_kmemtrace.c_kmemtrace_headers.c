
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {int val; } ;


 int TRACE_KMEM_OPT_MINIMAL ;
 TYPE_1__ kmem_tracer_flags ;
 int seq_printf (struct seq_file*,char*) ;

__attribute__((used)) static void kmemtrace_headers(struct seq_file *s)
{

 if (!(kmem_tracer_flags.val & TRACE_KMEM_OPT_MINIMAL))
  return;

 seq_printf(s, "#\n");
 seq_printf(s, "# ALLOC  TYPE  REQ   GIVEN  FLAGS     "
   "      POINTER         NODE    CALLER\n");
 seq_printf(s, "# FREE   |      |     |       |       "
   "       |   |            |        |\n");
 seq_printf(s, "# |\n\n");
}
