
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_OK ;
 scalar_t__ access (char*,int ) ;

__attribute__((used)) static int
file_exists (char *filename)
{
  if (filename)
    return (access (filename, F_OK) == 0);
  return 0;
}
