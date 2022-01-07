
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;


 scalar_t__ isdotent (char*,int) ;
 int nfserr_inval ;

__attribute__((used)) static __be32
check_filename(char *str, int len, __be32 err)
{
 int i;

 if (len == 0)
  return nfserr_inval;
 if (isdotent(str, len))
  return err;
 for (i = 0; i < len; i++)
  if (str[i] == '/')
   return err;
 return 0;
}
