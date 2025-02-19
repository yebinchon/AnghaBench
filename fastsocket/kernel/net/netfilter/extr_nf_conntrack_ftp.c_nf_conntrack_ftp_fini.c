
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int l3num; } ;
struct TYPE_6__ {TYPE_1__ src; } ;
struct TYPE_7__ {TYPE_2__ tuple; int * me; } ;


 TYPE_3__** ftp ;
 int ftp_buffer ;
 int kfree (int ) ;
 int nf_conntrack_helper_unregister (TYPE_3__*) ;
 int * ports ;
 int ports_c ;
 int pr_debug (char*,int ,int ) ;

__attribute__((used)) static void nf_conntrack_ftp_fini(void)
{
 int i, j;
 for (i = 0; i < ports_c; i++) {
  for (j = 0; j < 2; j++) {
   if (ftp[i][j].me == ((void*)0))
    continue;

   pr_debug("nf_ct_ftp: unregistering helper for pf: %d "
     "port: %d\n",
     ftp[i][j].tuple.src.l3num, ports[i]);
   nf_conntrack_helper_unregister(&ftp[i][j]);
  }
 }

 kfree(ftp_buffer);
}
