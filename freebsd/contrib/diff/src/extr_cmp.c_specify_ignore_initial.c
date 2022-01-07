
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uintmax_t ;
typedef scalar_t__ strtol_error ;
typedef scalar_t__ off_t ;


 scalar_t__ LONGINT_INVALID_SUFFIX_CHAR ;
 scalar_t__ LONGINT_OK ;
 scalar_t__ UINTMAX_MAX ;
 scalar_t__* ignore_initial ;
 int try_help (char*,char const*) ;
 int valid_suffixes ;
 scalar_t__ xstrtoumax (char const*,char**,int ,scalar_t__*,int ) ;

__attribute__((used)) static void
specify_ignore_initial (int f, char **argptr, char delimiter)
{
  uintmax_t val;
  off_t o;
  char const *arg = *argptr;
  strtol_error e = xstrtoumax (arg, argptr, 0, &val, valid_suffixes);
  if (! (e == LONGINT_OK
  || (e == LONGINT_INVALID_SUFFIX_CHAR && **argptr == delimiter))
      || (o = val) < 0 || o != val || val == UINTMAX_MAX)
    try_help ("invalid --ignore-initial value `%s'", arg);
  if (ignore_initial[f] < o)
    ignore_initial[f] = o;
}
