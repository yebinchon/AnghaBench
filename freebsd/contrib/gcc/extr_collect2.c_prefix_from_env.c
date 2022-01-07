
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path_prefix {int dummy; } ;


 int GET_ENVIRONMENT (char const*,char const*) ;
 int prefix_from_string (char const*,struct path_prefix*) ;

__attribute__((used)) static void
prefix_from_env (const char *env, struct path_prefix *pprefix)
{
  const char *p;
  GET_ENVIRONMENT (p, env);

  if (p)
    prefix_from_string (p, pprefix);
}
