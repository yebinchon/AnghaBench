
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stoken {size_t length; int ptr; } ;


 int memcpy (char*,int ,size_t) ;
 char* namecopy ;

char *
copy_name (struct stoken token)
{
  memcpy (namecopy, token.ptr, token.length);
  namecopy[token.length] = 0;
  return namecopy;
}
