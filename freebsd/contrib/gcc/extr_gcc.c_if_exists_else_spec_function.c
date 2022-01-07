
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_ABSOLUTE_PATH (char const*) ;
 int R_OK ;
 int access (char const*,int ) ;

__attribute__((used)) static const char *
if_exists_else_spec_function (int argc, const char **argv)
{

  if (argc != 2)
    return ((void*)0);

  if (IS_ABSOLUTE_PATH (argv[0]) && ! access (argv[0], R_OK))
    return argv[0];

  return argv[1];
}
