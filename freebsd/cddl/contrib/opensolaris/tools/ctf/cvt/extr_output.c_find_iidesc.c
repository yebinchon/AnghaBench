
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tdata_t ;
typedef int iidesc_t ;
struct TYPE_4__ {int * iim_ret; int iim_name; } ;
typedef TYPE_1__ iidesc_match_t ;


 int iter_iidescs_by_name (int *,int ,int ,TYPE_1__*) ;
 int matching_iidesc ;

__attribute__((used)) static iidesc_t *
find_iidesc(tdata_t *td, iidesc_match_t *match)
{
 match->iim_ret = ((void*)0);
 iter_iidescs_by_name(td, match->iim_name,
     matching_iidesc, match);
 return (match->iim_ret);
}
