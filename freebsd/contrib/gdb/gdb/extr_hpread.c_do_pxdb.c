
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int filename; } ;
typedef TYPE_1__ bfd ;


 int bfd_close (TYPE_1__*) ;
 scalar_t__ hpread_call_pxdb (int ) ;
 scalar_t__ hpread_pxdb_needed (TYPE_1__*) ;

void
do_pxdb (bfd *sym_bfd)
{






  if (hpread_pxdb_needed (sym_bfd))
    {


      if (hpread_call_pxdb (sym_bfd->filename))
 {



   bfd_close (sym_bfd);
 }
    }
}
