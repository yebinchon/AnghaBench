
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nls_table {int dummy; } ;


 int ENAMETOOLONG ;
 int memcpy (unsigned char*,unsigned char const*,int) ;

__attribute__((used)) static int convert_memcpy(unsigned char *output, int olen,
     const unsigned char *input, int ilen,
     struct nls_table *nls_from,
     struct nls_table *nls_to)
{
 if (olen < ilen)
  return -ENAMETOOLONG;
 memcpy(output, input, ilen);
 return ilen;
}
