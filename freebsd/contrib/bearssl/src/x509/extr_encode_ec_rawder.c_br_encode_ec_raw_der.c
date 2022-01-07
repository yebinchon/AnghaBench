
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_ec_public_key ;
typedef int br_ec_private_key ;


 size_t br_encode_ec_raw_der_inner (void*,int const*,int const*,int) ;

size_t
br_encode_ec_raw_der(void *dest,
 const br_ec_private_key *sk, const br_ec_public_key *pk)
{
 return br_encode_ec_raw_der_inner(dest, sk, pk, 1);
}
