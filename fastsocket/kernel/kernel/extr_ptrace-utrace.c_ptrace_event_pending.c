
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptrace_context {scalar_t__ stop_code; } ;



__attribute__((used)) static inline bool ptrace_event_pending(struct ptrace_context *ctx)
{
 return ctx->stop_code != 0;
}
