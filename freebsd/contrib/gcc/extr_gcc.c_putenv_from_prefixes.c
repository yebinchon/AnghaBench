
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path_prefix {int dummy; } ;


 int build_search_list (struct path_prefix const*,char const*,int,int) ;
 int putenv (int ) ;

__attribute__((used)) static void
putenv_from_prefixes (const struct path_prefix *paths, const char *env_var,
        bool do_multi)
{
  putenv (build_search_list (paths, env_var, 1, do_multi));
}
