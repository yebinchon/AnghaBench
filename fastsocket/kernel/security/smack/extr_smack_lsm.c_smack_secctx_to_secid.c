
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int smack_to_secid (char const*) ;

__attribute__((used)) static int smack_secctx_to_secid(const char *secdata, u32 seclen, u32 *secid)
{
 *secid = smack_to_secid(secdata);
 return 0;
}
