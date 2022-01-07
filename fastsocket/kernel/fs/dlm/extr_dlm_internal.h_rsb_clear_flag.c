
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int res_flags; } ;
typedef enum rsb_flags { ____Placeholder_rsb_flags } rsb_flags ;


 int __clear_bit (int,int *) ;

__attribute__((used)) static inline void rsb_clear_flag(struct dlm_rsb *r, enum rsb_flags flag)
{
 __clear_bit(flag, &r->res_flags);
}
