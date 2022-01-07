
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int* input_buf ;
 int input_push ;
 int report (char*) ;

__attribute__((used)) static void
input_ungetc(int c)
{
 if (c == EOF)
  report("pushing EOF");
 if (input_push == 2)
  report("pushing third char");
 input_buf[input_push++] = c;
}
