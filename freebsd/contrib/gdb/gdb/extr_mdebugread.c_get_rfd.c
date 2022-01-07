
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ external_rfd; TYPE_1__* fdr; } ;
struct TYPE_6__ {int external_rfd_size; int (* swap_rfd_in ) (int ,char*,int*) ;} ;
struct TYPE_5__ {int rfdBase; } ;
typedef int RFDT ;
typedef TYPE_1__ FDR ;


 int cur_bfd ;
 TYPE_4__* debug_info ;
 TYPE_3__* debug_swap ;
 int stub1 (int ,char*,int*) ;

__attribute__((used)) static FDR *
get_rfd (int cf, int rf)
{
  FDR *fdrs;
  FDR *f;
  RFDT rfd;

  fdrs = debug_info->fdr;
  f = fdrs + cf;

  if (f->rfdBase == 0)
    return fdrs + rf;
  (*debug_swap->swap_rfd_in) (cur_bfd,
         ((char *) debug_info->external_rfd
          + ((f->rfdBase + rf)
      * debug_swap->external_rfd_size)),
         &rfd);
  return fdrs + rfd;
}
