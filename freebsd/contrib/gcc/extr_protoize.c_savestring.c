
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcpy (char*,char const*) ;
 char* xmalloc (unsigned int) ;

__attribute__((used)) static char *
savestring (const char *input, unsigned int size)
{
  char *output = xmalloc (size + 1);
  strcpy (output, input);
  return output;
}
