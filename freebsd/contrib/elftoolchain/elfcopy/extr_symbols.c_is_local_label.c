
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
is_local_label(const char *name)
{


 if (name[0] == '.' && name[1] == 'L')
  return (1);

 return (0);
}
