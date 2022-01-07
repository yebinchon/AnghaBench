
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int strcut (char*,char*) ;
 int stricpy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 char* xmalloc (scalar_t__) ;

__attribute__((used)) static int
name_compare (char *first, char *second)
{
  char *copy1;
  char *copy2;
  int result;

  copy1 = xmalloc (strlen (first) + 1);
  copy2 = xmalloc (strlen (second) + 1);


  stricpy (copy1, first);
  stricpy (copy2, second);


  strcut (copy1, "big");
  strcut (copy1, "little");
  strcut (copy2, "big");
  strcut (copy2, "little");




  for (result = 0; copy1[result] == copy2[result]; result++)
    if (copy1[result] == 0)
      {
 result *= 10;
 break;
      }

  free (copy1);
  free (copy2);

  return result;
}
