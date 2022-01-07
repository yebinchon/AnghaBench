
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cputime_t ;


 int cputime_eq (int ,int ) ;
 scalar_t__ cputime_le (int ,int ) ;
 int cputime_zero ;

__attribute__((used)) static inline int expires_le(cputime_t expires, cputime_t new_exp)
{
 return !cputime_eq(expires, cputime_zero) &&
        cputime_le(expires, new_exp);
}
