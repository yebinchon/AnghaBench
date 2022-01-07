
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_iterator {int dummy; } ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;


 int trace_ctxwake_hex (struct trace_iterator*,int ) ;

__attribute__((used)) static enum print_line_t trace_ctx_hex(struct trace_iterator *iter, int flags)
{
 return trace_ctxwake_hex(iter, 0);
}
