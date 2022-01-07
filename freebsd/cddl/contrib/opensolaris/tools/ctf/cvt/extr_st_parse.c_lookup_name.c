
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ t_type; int * t_name; struct TYPE_4__* t_next; } ;
typedef TYPE_1__ tdesc_t ;


 scalar_t__ ENUM ;
 scalar_t__ INTRINSIC ;
 scalar_t__ STRUCT ;
 scalar_t__ TYPEDEF ;
 scalar_t__ UNION ;
 int compute_sum (char const*) ;
 scalar_t__ strcmp (int *,char const*) ;

__attribute__((used)) static tdesc_t *
lookup_name(tdesc_t **hash, const char *name1)
{
 int bucket = compute_sum(name1);
 tdesc_t *tdp, *ttdp = ((void*)0);

 for (tdp = hash[bucket]; tdp != ((void*)0); tdp = tdp->t_next) {
  if (tdp->t_name != ((void*)0) && strcmp(tdp->t_name, name1) == 0) {
   if (tdp->t_type == STRUCT || tdp->t_type == UNION ||
       tdp->t_type == ENUM || tdp->t_type == INTRINSIC)
    return (tdp);
   if (tdp->t_type == TYPEDEF)
    ttdp = tdp;
  }
 }
 return (ttdp);
}
