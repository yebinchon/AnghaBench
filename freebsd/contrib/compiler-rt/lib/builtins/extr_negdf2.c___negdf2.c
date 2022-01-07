
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fp_t ;


 int fromRep (int) ;
 int signBit ;
 int toRep (int ) ;

fp_t __negdf2(fp_t a) { return fromRep(toRep(a) ^ signBit); }
