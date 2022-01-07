
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int security_context_to_sid (char const*,int ,int *) ;

__attribute__((used)) static int selinux_secctx_to_secid(const char *secdata, u32 seclen, u32 *secid)
{
 return security_context_to_sid(secdata, seclen, secid);
}
