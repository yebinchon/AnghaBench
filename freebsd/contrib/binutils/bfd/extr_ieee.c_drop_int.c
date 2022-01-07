
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct output_buffer_struct {int buffer; int ptrp; } ;


 int NEXT () ;
 int OUT (int) ;
 int THIS () ;
 int output_buffer ;
 int output_ptr ;

__attribute__((used)) static void
drop_int (struct output_buffer_struct *buf)
{
  int type = THIS ();
  int ch;

  if (type <= 0x84)
    {
      NEXT ();
      switch (type)
 {
 case 0x84:
   ch = THIS ();
   NEXT ();
 case 0x83:
   ch = THIS ();
   NEXT ();
 case 0x82:
   ch = THIS ();
   NEXT ();
 case 0x81:
   ch = THIS ();
   NEXT ();
 case 0x80:
   break;
 }
    }
  OUT (0x84);
  buf->ptrp = output_ptr;
  buf->buffer = output_buffer;
  OUT (0);
  OUT (0);
  OUT (0);
  OUT (0);
}
