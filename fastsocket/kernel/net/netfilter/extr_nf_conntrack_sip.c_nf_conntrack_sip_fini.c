
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * me; } ;


 int nf_conntrack_helper_unregister (TYPE_1__*) ;
 int ports_c ;
 TYPE_1__** sip ;

__attribute__((used)) static void nf_conntrack_sip_fini(void)
{
 int i, j;

 for (i = 0; i < ports_c; i++) {
  for (j = 0; j < 2; j++) {
   if (sip[i][j].me == ((void*)0))
    continue;
   nf_conntrack_helper_unregister(&sip[i][j]);
  }
 }
}
