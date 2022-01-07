
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yytbl_writer {int total_written; } ;


 int yypad64 (int ) ;
 scalar_t__ yytbl_write8 (struct yytbl_writer*,int ) ;

__attribute__((used)) static int yytbl_write_pad64 (struct yytbl_writer *wr)
{
 int pad, bwritten = 0;

 pad = yypad64 (wr->total_written);
 while (pad-- > 0)
  if (yytbl_write8 (wr, 0) < 0)
   return -1;
  else
   bwritten++;
 return bwritten;
}
