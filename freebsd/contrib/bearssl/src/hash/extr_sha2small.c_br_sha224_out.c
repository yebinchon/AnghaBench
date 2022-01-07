
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_sha224_context ;


 int sha2small_out (int const*,void*,int) ;

void
br_sha224_out(const br_sha224_context *cc, void *dst)
{
 sha2small_out(cc, dst, 7);
}
