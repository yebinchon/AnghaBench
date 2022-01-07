
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int res_flags; } ;
typedef enum rsb_flags { ____Placeholder_rsb_flags } rsb_flags ;


 int test_bit (int,int *) ;

__attribute__((used)) static inline int rsb_flag(struct dlm_rsb *r, enum rsb_flags flag)
{
 return test_bit(flag, &r->res_flags);
}
