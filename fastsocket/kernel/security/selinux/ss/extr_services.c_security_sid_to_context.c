
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int security_sid_to_context_core (int ,char**,int *,int ) ;

int security_sid_to_context(u32 sid, char **scontext, u32 *scontext_len)
{
 return security_sid_to_context_core(sid, scontext, scontext_len, 0);
}
