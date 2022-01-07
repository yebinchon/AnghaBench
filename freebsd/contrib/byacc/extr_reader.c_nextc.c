
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cptr ;
 int get_line () ;
 int next_inline () ;

__attribute__((used)) static int
nextc(void)
{
    int ch;
    int finish = 0;

    do
    {
 switch (ch = next_inline())
 {
 case '\n':
     get_line();
     break;
 case ' ':
 case '\t':
 case '\f':
 case '\r':
 case '\v':
 case ',':
 case ';':
     ++cptr;
     break;
 case '\\':
     ch = '%';

 default:
     finish = 1;
     break;
 }
    }
    while (!finish);

    return ch;
}
