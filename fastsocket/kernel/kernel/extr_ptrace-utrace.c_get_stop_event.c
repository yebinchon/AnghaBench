
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptrace_context {int stop_code; } ;



__attribute__((used)) static inline int get_stop_event(struct ptrace_context *ctx)
{
 return ctx->stop_code >> 8;
}
