
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int u_long ;


 int CTL_KERN ;
 char* malloc (int) ;
 int sprintf (char*,char*,int ) ;
 scalar_t__ sysctl (int*,int,int *,size_t*,int *,int ) ;

__attribute__((used)) static char *
act_getkernint(int id)
{
 int mib[2];
 size_t len;
 u_long value;
 char *string;

 mib[0] = CTL_KERN;
 mib[1] = id;
 len = sizeof(value);
 if (sysctl(mib, 2, &value, &len, ((void*)0), 0) != 0)
  return (((void*)0));

 if ((string = malloc(20)) == ((void*)0))
  return (((void*)0));
 sprintf(string, "%lu", value);
 return (string);
}
