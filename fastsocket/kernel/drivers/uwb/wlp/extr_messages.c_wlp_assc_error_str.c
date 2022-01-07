
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char const**) ;
 char const** __wlp_assc_error ;

__attribute__((used)) static const char *wlp_assc_error_str(unsigned id)
{
 if (id >= ARRAY_SIZE(__wlp_assc_error))
  return "unknown WLP association error";
 return __wlp_assc_error[id];
}
