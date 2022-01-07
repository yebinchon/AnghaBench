
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strchr (char const*,char) ;

__attribute__((used)) static int
special_format (const char *fmt)
{
  return (strchr (fmt, '*') != 0
   || strchr (fmt, 'V') != 0
   || strchr (fmt, 'S') != 0
   || strchr (fmt, 'n') != 0);
}
