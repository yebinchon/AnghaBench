
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fp_t ;


 int __adddf3 (int ,int ) ;
 int fromRep (int) ;
 int signBit ;
 int toRep (int ) ;

fp_t __subdf3(fp_t a, fp_t b) {
  return __adddf3(a, fromRep(toRep(b) ^ signBit));
}
