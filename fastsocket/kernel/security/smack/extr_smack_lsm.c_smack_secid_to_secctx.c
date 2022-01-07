
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 char* smack_from_secid (int ) ;
 int strlen (char*) ;

__attribute__((used)) static int smack_secid_to_secctx(u32 secid, char **secdata, u32 *seclen)
{
 char *sp = smack_from_secid(secid);

 *secdata = sp;
 *seclen = strlen(sp);
 return 0;
}
