
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct utrace_engine {int dummy; } ;


 int UTRACE_DETACH ;

__attribute__((used)) static u32 utrace_detached_quiesce(u32 action, struct utrace_engine *engine,
       unsigned long event)
{
 return UTRACE_DETACH;
}
