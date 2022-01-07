
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bvector ;


 int VEC_ADDMANY (int ,void const*,size_t) ;

__attribute__((used)) static void
vblob_append(void *cc, const void *data, size_t len)
{
 bvector *bv;

 bv = cc;
 VEC_ADDMANY(*bv, data, len);
}
