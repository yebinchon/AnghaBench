
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data {char* val; int len; } ;


 struct data data_grow_for (int ,int) ;
 int empty_data ;
 char get_escape_char (char const*,int*) ;

struct data data_copy_escape_string(const char *s, int len)
{
 int i = 0;
 struct data d;
 char *q;

 d = data_grow_for(empty_data, len + 1);

 q = d.val;
 while (i < len) {
  char c = s[i++];

  if (c == '\\')
   c = get_escape_char(s, &i);

  q[d.len++] = c;
 }

 q[d.len++] = '\0';
 return d;
}
