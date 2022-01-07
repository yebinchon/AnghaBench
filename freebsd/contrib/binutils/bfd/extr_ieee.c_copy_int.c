
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NEXT () ;
 int OUT (int) ;
 int THIS () ;

__attribute__((used)) static void
copy_int (void)
{
  int type = THIS ();
  int ch;
  if (type <= 0x84)
    {
      OUT (type);
      NEXT ();
      switch (type)
 {
 case 0x84:
   ch = THIS ();
   NEXT ();
   OUT (ch);
 case 0x83:
   ch = THIS ();
   NEXT ();
   OUT (ch);
 case 0x82:
   ch = THIS ();
   NEXT ();
   OUT (ch);
 case 0x81:
   ch = THIS ();
   NEXT ();
   OUT (ch);
 case 0x80:
   break;
 }
    }
}
