
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* concat (char*,char*,int *) ;
 int free (char*) ;
 char* getenv (char*) ;
 char* lookup_key (char*) ;
 char* std_prefix ;

__attribute__((used)) static const char *
get_key_value (char *key)
{
  const char *prefix = 0;
  char *temp = 0;





  if (prefix == 0)
    prefix = getenv (temp = concat (key, "_ROOT", ((void*)0)));

  if (prefix == 0)
    prefix = std_prefix;

  if (temp)
    free (temp);

  return prefix;
}
