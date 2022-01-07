
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data {char* val; int len; } ;


 int assert (char) ;
 struct data data_grow_for (int ,scalar_t__) ;
 int empty_data ;
 char get_hex_char (char const*,int*) ;
 char get_oct_char (char const*,int*) ;
 scalar_t__ strlen (char const*) ;

struct data data_copy_escape_string(const char *s, int len)
{
 int i = 0;
 struct data d;
 char *q;

 d = data_grow_for(empty_data, strlen(s)+1);

 q = d.val;
 while (i < len) {
  char c = s[i++];

  if (c != '\\') {
   q[d.len++] = c;
   continue;
  }

  c = s[i++];
  assert(c);
  switch (c) {
  case 'a':
   q[d.len++] = '\a';
   break;
  case 'b':
   q[d.len++] = '\b';
   break;
  case 't':
   q[d.len++] = '\t';
   break;
  case 'n':
   q[d.len++] = '\n';
   break;
  case 'v':
   q[d.len++] = '\v';
   break;
  case 'f':
   q[d.len++] = '\f';
   break;
  case 'r':
   q[d.len++] = '\r';
   break;
  case '0':
  case '1':
  case '2':
  case '3':
  case '4':
  case '5':
  case '6':
  case '7':
   i--;

   q[d.len++] = get_oct_char(s, &i);
   break;
  case 'x':
   q[d.len++] = get_hex_char(s, &i);
   break;
  default:
   q[d.len++] = c;
  }
 }

 q[d.len++] = '\0';
 return d;
}
