
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_debug_entry {int stacktrace; } ;


 int pr_warning (char*) ;
 int print_stack_trace (int *,int ) ;

__attribute__((used)) static inline void dump_entry_trace(struct dma_debug_entry *entry)
{






}
