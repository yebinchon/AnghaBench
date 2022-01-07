
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GFP_KERNEL ;
 int SECSID_NULL ;
 int security_context_to_sid_core (char const*,int ,int *,int ,int ,int) ;

int security_context_to_sid_force(const char *scontext, u32 scontext_len,
      u32 *sid)
{
 return security_context_to_sid_core(scontext, scontext_len,
         sid, SECSID_NULL, GFP_KERNEL, 1);
}
