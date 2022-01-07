
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalnum (char const) ;

__attribute__((used)) static int iswordc(const char c)
{
 if (isalnum(c) || c == '!' || c == '"' || c == '%' ||
     (c >= '(' && c <= '/') || c == ':' || c == '<' || c == '>' ||
     c == '?' || (c >= '[' && c <= ']') || c == '_' || c == '`' ||
     c == '{' || c == '}' || c == '~')
  return 1;
 return 0;
}
