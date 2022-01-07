
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NEXT () ;
 int OUT (int) ;
 int THIS () ;

__attribute__((used)) static void
copy_till_end (void)
{
  int ch = THIS ();

  while (1)
    {
      while (ch <= 0x80)
 {
   OUT (ch);
   NEXT ();
   ch = THIS ();
 }
      switch (ch)
 {
 case 0x84:
   OUT (THIS ());
   NEXT ();
 case 0x83:
   OUT (THIS ());
   NEXT ();
 case 0x82:
   OUT (THIS ());
   NEXT ();
 case 0x81:
   OUT (THIS ());
   NEXT ();
   OUT (THIS ());
   NEXT ();

   ch = THIS ();
   break;
 default:
   return;
 }
    }

}
