
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dt_encoding; } ;
typedef TYPE_1__ dtrace_hdl_t ;


 int DT_ENCODING_ASCII ;
 int DT_ENCODING_UTF8 ;
 int EDT_BADOPTVAL ;
 int dt_set_errno (TYPE_1__*,int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
dt_opt_encoding(dtrace_hdl_t *dtp, const char *arg, uintptr_t option)
{
 if (arg == ((void*)0))
  return (dt_set_errno(dtp, EDT_BADOPTVAL));

 if (strcmp(arg, "ascii") == 0)
  dtp->dt_encoding = DT_ENCODING_ASCII;
 else if (strcmp(arg, "utf8") == 0)
  dtp->dt_encoding = DT_ENCODING_UTF8;
 else
  return (dt_set_errno(dtp, EDT_BADOPTVAL));

 return (0);
}
