
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 int error (int ,int ,char*,char const*,char const*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int try_help (int ,int ) ;

__attribute__((used)) static void
specify_value (char const **var, char const *value, char const *option)
{
  if (*var && strcmp (*var, value) != 0)
    {
      error (0, 0, _("conflicting %s option value `%s'"), option, value);
      try_help (0, 0);
    }
  *var = value;
}
