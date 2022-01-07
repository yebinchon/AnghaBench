
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int longlong_t ;
typedef int buf ;


 scalar_t__* dump_opt ;
 int nicenum (scalar_t__,char*,int) ;
 int snprintf (char*,size_t,char*,int ) ;

__attribute__((used)) static void
zdb_nicenum(uint64_t num, char *buf, size_t buflen)
{
 if (dump_opt['P'])
  (void) snprintf(buf, buflen, "%llu", (longlong_t)num);
 else
  nicenum(num, buf, sizeof (buf));
}
