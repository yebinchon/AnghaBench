
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char) ;

__attribute__((used)) static void
ep_skip_leading_whitespace (char **s)
{
  if ((s == ((void*)0)) || (*s == ((void*)0)))
    return;
  while (isspace (**s))
    *s += 1;
}
