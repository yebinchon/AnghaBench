
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint_t ;
typedef int dt_version_t ;


 scalar_t__ DT_VERSION_MAJOR (int ) ;
 scalar_t__ DT_VERSION_MICRO (int ) ;
 scalar_t__ DT_VERSION_MINOR (int ) ;
 int snprintf (char*,size_t,char*,scalar_t__,scalar_t__,...) ;

char *
dt_version_num2str(dt_version_t v, char *buf, size_t len)
{
 uint_t M = DT_VERSION_MAJOR(v);
 uint_t m = DT_VERSION_MINOR(v);
 uint_t u = DT_VERSION_MICRO(v);

 if (u == 0)
  (void) snprintf(buf, len, "%u.%u", M, m);
 else
  (void) snprintf(buf, len, "%u.%u.%u", M, m, u);

 return (buf);
}
