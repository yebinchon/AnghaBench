
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 char* strchr (char*,char) ;
 int strict_strtoul (char*,int ,unsigned long*) ;

__attribute__((used)) static int split_symbol_offset(char *symbol, unsigned long *offset)
{
 char *tmp;
 int ret;

 if (!offset)
  return -EINVAL;

 tmp = strchr(symbol, '+');
 if (tmp) {

  ret = strict_strtoul(tmp + 1, 0, offset);
  if (ret)
   return ret;
  *tmp = '\0';
 } else
  *offset = 0;
 return 0;
}
