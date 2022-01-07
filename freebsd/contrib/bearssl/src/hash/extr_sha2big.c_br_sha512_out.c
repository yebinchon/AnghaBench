
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_sha512_context ;


 int sha2big_out (int const*,void*,int) ;

void
br_sha512_out(const br_sha512_context *cc, void *dst)
{
 sha2big_out(cc, dst, 8);
}
