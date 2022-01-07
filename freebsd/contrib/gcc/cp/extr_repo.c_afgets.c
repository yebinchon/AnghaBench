
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int getc (int *) ;
 int obstack_1grow (int *,char) ;
 scalar_t__ obstack_finish (int *) ;
 scalar_t__ obstack_object_size (int *) ;
 int temporary_obstack ;

__attribute__((used)) static char *
afgets (FILE *stream)
{
  int c;
  while ((c = getc (stream)) != EOF && c != '\n')
    obstack_1grow (&temporary_obstack, c);
  if (obstack_object_size (&temporary_obstack) == 0)
    return ((void*)0);
  obstack_1grow (&temporary_obstack, '\0');
  return (char *) obstack_finish (&temporary_obstack);
}
