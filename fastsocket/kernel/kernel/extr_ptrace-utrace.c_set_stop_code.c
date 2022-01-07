
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptrace_context {int stop_code; } ;


 int SIGTRAP ;

__attribute__((used)) static inline void set_stop_code(struct ptrace_context *ctx, int event)
{
 ctx->stop_code = (event << 8) | SIGTRAP;
}
