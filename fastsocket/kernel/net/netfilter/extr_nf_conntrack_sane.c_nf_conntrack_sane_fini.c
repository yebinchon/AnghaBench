
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int l3num; } ;
struct TYPE_6__ {TYPE_1__ src; } ;
struct TYPE_7__ {TYPE_2__ tuple; } ;


 int kfree (int ) ;
 int nf_conntrack_helper_unregister (TYPE_3__*) ;
 int * ports ;
 int ports_c ;
 int pr_debug (char*,int ,int ) ;
 TYPE_3__** sane ;
 int sane_buffer ;

__attribute__((used)) static void nf_conntrack_sane_fini(void)
{
 int i, j;

 for (i = 0; i < ports_c; i++) {
  for (j = 0; j < 2; j++) {
   pr_debug("nf_ct_sane: unregistering helper for pf: %d "
     "port: %d\n",
     sane[i][j].tuple.src.l3num, ports[i]);
   nf_conntrack_helper_unregister(&sane[i][j]);
  }
 }

 kfree(sane_buffer);
}
