
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;
typedef int buf ;


 int HN_AUTOSCALE ;
 int HN_B ;
 int HN_DECIMAL ;
 int HN_DIVISOR_1000 ;
 int HN_NOSPACE ;
 scalar_t__ UNITS_SI ;
 scalar_t__ hflag ;
 int humanize_number (char*,int,scalar_t__,char*,int ,int) ;
 int xo_attr (char*,char*,long long) ;
 int xo_emit (char const*,char*) ;

__attribute__((used)) static void
prthumanval(const char *fmt, int64_t bytes)
{
 char buf[6];
 int flags;

 flags = HN_B | HN_NOSPACE | HN_DECIMAL;
 if (hflag == UNITS_SI)
  flags |= HN_DIVISOR_1000;

 humanize_number(buf, sizeof(buf) - (bytes < 0 ? 0 : 1),
     bytes, "", HN_AUTOSCALE, flags);

 xo_attr("value", "%lld", (long long) bytes);
 xo_emit(fmt, buf);
}
