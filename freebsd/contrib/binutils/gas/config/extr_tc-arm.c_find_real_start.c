
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;


 char* ACONCAT (int ) ;
 int STUB_NAME ;
 char* S_GET_NAME (int *) ;
 scalar_t__ S_IS_LOCAL (int *) ;
 int abort () ;
 int as_warn (char*,char const*) ;
 int * symbol_find (char*) ;

__attribute__((used)) static symbolS *
find_real_start (symbolS * symbolP)
{
  char * real_start;
  const char * name = S_GET_NAME (symbolP);
  symbolS * new_target;




  if (name == ((void*)0))
    abort ();






  if (S_IS_LOCAL (symbolP) || name[0] == '.')
    return symbolP;

  real_start = ACONCAT ((".real_start_of", name, ((void*)0)));
  new_target = symbol_find (real_start);

  if (new_target == ((void*)0))
    {
      as_warn ("Failed to find real start of function: %s\n", name);
      new_target = symbolP;
    }

  return new_target;
}
