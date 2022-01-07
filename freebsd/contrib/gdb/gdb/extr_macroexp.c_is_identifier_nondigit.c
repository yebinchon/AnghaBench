
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
is_identifier_nondigit (int c)
{
  return (c == '_'
          || ('a' <= c && c <= 'z')
          || ('A' <= c && c <= 'Z'));
}
