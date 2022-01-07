
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_sha384_context ;


 int sha2big_update (int *,void const*,size_t) ;

void
br_sha384_update(br_sha384_context *cc, const void *data, size_t len)
{
 sha2big_update(cc, data, len);
}
