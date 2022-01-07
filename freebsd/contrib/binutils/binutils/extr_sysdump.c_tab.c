
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int indent ;
 int p () ;
 int printf (char*) ;

__attribute__((used)) static void
tab (int i, char *s)
{
  indent += i;

  if (s)
    {
      p ();
      printf (s);
      printf ("\n");
    }
}
