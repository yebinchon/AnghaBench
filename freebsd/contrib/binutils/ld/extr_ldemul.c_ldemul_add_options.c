
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct option {int dummy; } ;
struct TYPE_2__ {int (* add_options ) (int,char**,int,struct option**,int,struct option**) ;} ;


 TYPE_1__* ld_emulation ;
 int stub1 (int,char**,int,struct option**,int,struct option**) ;

void
ldemul_add_options (int ns, char **shortopts, int nl,
      struct option **longopts, int nrl,
      struct option **really_longopts)
{
  if (ld_emulation->add_options)
    (*ld_emulation->add_options) (ns, shortopts, nl, longopts,
      nrl, really_longopts);
}
