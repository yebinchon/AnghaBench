
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct probe_trace_point {int symbol; } ;
struct perf_probe_point {int dummy; } ;


 int ENOENT ;
 struct symbol* __find_kernel_function_by_name (int ,int *) ;
 int convert_to_perf_probe_point (struct probe_trace_point*,struct perf_probe_point*) ;
 int pr_err (char*,int ) ;

__attribute__((used)) static int kprobe_convert_to_perf_probe(struct probe_trace_point *tp,
     struct perf_probe_point *pp)
{
 struct symbol *sym;

 sym = __find_kernel_function_by_name(tp->symbol, ((void*)0));
 if (!sym) {
  pr_err("Failed to find symbol %s in kernel.\n", tp->symbol);
  return -ENOENT;
 }

 return convert_to_perf_probe_point(tp, pp);
}
