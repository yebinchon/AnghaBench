
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;


 int get_next_char () ;
 scalar_t__ isspace (int) ;

__attribute__((used)) static char *parse_value(void)
{
 static char value[1024];
 int quote = 0, comment = 0, space = 0;
 size_t len = 0;

 for (;;) {
  int c = get_next_char();

  if (len >= sizeof(value) - 1)
   return ((void*)0);
  if (c == '\n') {
   if (quote)
    return ((void*)0);
   value[len] = 0;
   return value;
  }
  if (comment)
   continue;
  if (isspace(c) && !quote) {
   space = 1;
   continue;
  }
  if (!quote) {
   if (c == ';' || c == '#') {
    comment = 1;
    continue;
   }
  }
  if (space) {
   if (len)
    value[len++] = ' ';
   space = 0;
  }
  if (c == '\\') {
   c = get_next_char();
   switch (c) {
   case '\n':
    continue;
   case 't':
    c = '\t';
    break;
   case 'b':
    c = '\b';
    break;
   case 'n':
    c = '\n';
    break;

   case '\\': case '"':
    break;

   default:
    return ((void*)0);
   }
   value[len++] = c;
   continue;
  }
  if (c == '"') {
   quote = 1-quote;
   continue;
  }
  value[len++] = c;
 }
}
