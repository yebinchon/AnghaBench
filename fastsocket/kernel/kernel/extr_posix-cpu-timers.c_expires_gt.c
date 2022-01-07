
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cputime_t ;


 scalar_t__ cputime_eq (int ,int ) ;
 scalar_t__ cputime_gt (int ,int ) ;
 int cputime_zero ;

__attribute__((used)) static inline int expires_gt(cputime_t expires, cputime_t new_exp)
{
 return cputime_eq(expires, cputime_zero) ||
        cputime_gt(expires, new_exp);
}
