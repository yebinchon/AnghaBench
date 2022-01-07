
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char get_hex_char (char const*,int*) ;
 char get_oct_char (char const*,int*) ;

char get_escape_char(const char *s, int *i)
{
 char c = s[*i];
 int j = *i + 1;
 char val;

 switch (c) {
 case 'a':
  val = '\a';
  break;
 case 'b':
  val = '\b';
  break;
 case 't':
  val = '\t';
  break;
 case 'n':
  val = '\n';
  break;
 case 'v':
  val = '\v';
  break;
 case 'f':
  val = '\f';
  break;
 case 'r':
  val = '\r';
  break;
 case '0':
 case '1':
 case '2':
 case '3':
 case '4':
 case '5':
 case '6':
 case '7':
  j--;

  val = get_oct_char(s, &j);
  break;
 case 'x':
  val = get_hex_char(s, &j);
  break;
 default:
  val = c;
 }

 (*i) = j;
 return val;
}
