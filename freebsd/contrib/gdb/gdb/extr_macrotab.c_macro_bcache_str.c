
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_table {int dummy; } ;


 scalar_t__ macro_bcache (struct macro_table*,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static const char *
macro_bcache_str (struct macro_table *t, const char *s)
{
  return (char *) macro_bcache (t, s, strlen (s) + 1);
}
