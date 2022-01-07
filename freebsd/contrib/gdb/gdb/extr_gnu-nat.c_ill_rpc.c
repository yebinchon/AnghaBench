
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int error_t ;


 int warning (char*,char*) ;

__attribute__((used)) static error_t
ill_rpc (char *fun)
{
  warning ("illegal rpc: %s", fun);
  return 0;
}
