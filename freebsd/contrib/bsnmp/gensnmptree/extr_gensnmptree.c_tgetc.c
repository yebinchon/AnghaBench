
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fp; } ;


 int EOF ;
 int getc (int ) ;
 TYPE_1__* input ;
 int input_close () ;
 int pbchar ;

__attribute__((used)) static int
tgetc(void)
{
 int c;

 if (pbchar != -1) {
  c = pbchar;
  pbchar = -1;
  return (c);
 }

 for (;;) {
  if (input == ((void*)0))
   return (EOF);

  if ((c = getc(input->fp)) != EOF)
   return (c);

  input_close();
 }
}
