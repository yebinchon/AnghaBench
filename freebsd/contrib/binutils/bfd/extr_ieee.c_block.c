
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int THIS () ;
 int e2_record () ;
 int f0_record () ;
 int f1_record () ;
 int f2_record () ;
 int f8_record () ;

__attribute__((used)) static void
block (void)
{
  int ch;

  while (1)
    {
      ch = THIS ();
      switch (ch)
 {
 case 0xe1:
 case 0xe5:
   return;
 case 0xf9:
   return;
 case 0xf0:
   f0_record ();
   break;
 case 0xf1:
   f1_record ();
   break;
 case 0xf2:
   f2_record ();
   break;
 case 0xf8:
   f8_record ();
   break;
 case 0xe2:
   e2_record ();
   break;

 }
    }
}
