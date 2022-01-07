
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;


 int strlen (char const*) ;
 int * xdr_encode_array (int *,char const*,int ) ;

__be32 *
xdr_encode_string(__be32 *p, const char *string)
{
 return xdr_encode_array(p, string, strlen(string));
}
