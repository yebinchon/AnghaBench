
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_sha224_context ;


 int sha2small_update (int *,void const*,size_t) ;

void
br_sha224_update(br_sha224_context *cc, const void *data, size_t len)
{
 sha2small_update(cc, data, len);
}
