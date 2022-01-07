
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rep_t ;
typedef int fp_t ;


 scalar_t__ absMask ;
 scalar_t__ const infRep ;
 scalar_t__ toRep (int ) ;

int
__unordsf2(fp_t a, fp_t b) {
    const rep_t aAbs = toRep(a) & absMask;
    const rep_t bAbs = toRep(b) & absMask;
    return aAbs > infRep || bAbs > infRep;
}
