
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int sscanf (char*,char*,unsigned int*) ;

__attribute__((used)) static int get_val(char *str, unsigned int *val)
{
 int err;

 err = sscanf(str, "%8x", val);
 if (err != 1)
  return -EINVAL;

 return 0;
}
