
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NEXT () ;
 int OUT (char) ;
 void* THIS () ;

__attribute__((used)) static void
copy_id (void)
{
  int length = THIS ();
  char ch;

  OUT (length);
  NEXT ();
  while (length--)
    {
      ch = THIS ();
      OUT (ch);
      NEXT ();
    }
}
