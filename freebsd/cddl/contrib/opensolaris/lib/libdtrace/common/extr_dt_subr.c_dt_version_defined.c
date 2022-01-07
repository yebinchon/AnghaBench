
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ dt_version_t ;


 scalar_t__* _dtrace_versions ;

int
dt_version_defined(dt_version_t v)
{
 int i;

 for (i = 0; _dtrace_versions[i] != 0; i++) {
  if (_dtrace_versions[i] == v)
   return (1);
 }

 return (0);
}
