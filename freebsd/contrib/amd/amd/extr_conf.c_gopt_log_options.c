
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ switch_option (char*) ;
 int usage ;

__attribute__((used)) static int
gopt_log_options(const char *val)
{
  usage += switch_option((char *)val);
  return 0;
}
