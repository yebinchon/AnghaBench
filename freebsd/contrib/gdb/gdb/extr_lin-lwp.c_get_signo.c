
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minimal_symbol {int dummy; } ;
typedef int signo ;


 int SYMBOL_VALUE_ADDRESS (struct minimal_symbol*) ;
 struct minimal_symbol* lookup_minimal_symbol (char const*,int *,int *) ;
 scalar_t__ target_read_memory (int ,char*,int) ;

__attribute__((used)) static int
get_signo (const char *name)
{
  struct minimal_symbol *ms;
  int signo;

  ms = lookup_minimal_symbol (name, ((void*)0), ((void*)0));
  if (ms == ((void*)0))
    return 0;

  if (target_read_memory (SYMBOL_VALUE_ADDRESS (ms), (char *) &signo,
     sizeof (signo)) != 0)
    return 0;

  return signo;
}
