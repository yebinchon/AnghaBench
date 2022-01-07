
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int br_ec_curve_def ;





 int const br_secp256r1 ;
 int const br_secp384r1 ;
 int const br_secp521r1 ;

__attribute__((used)) static const br_ec_curve_def *
id_to_curve_def(int curve)
{
 switch (curve) {
 case 130:
  return &br_secp256r1;
 case 129:
  return &br_secp384r1;
 case 128:
  return &br_secp521r1;
 }
 return ((void*)0);
}
