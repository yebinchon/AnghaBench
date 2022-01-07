
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DEPRECATED_STREQN (char*,char*,int) ;

int
is_ada_runtime_file (char *filename)
{
  return (DEPRECATED_STREQN (filename, "s-", 2) ||
   DEPRECATED_STREQN (filename, "a-", 2) ||
   DEPRECATED_STREQN (filename, "g-", 2) || DEPRECATED_STREQN (filename, "i-", 2));
}
