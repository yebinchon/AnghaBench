
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nf_conntrack_helper_unregister (int *) ;
 int ports_c ;
 int ** tftp ;

__attribute__((used)) static void nf_conntrack_tftp_fini(void)
{
 int i, j;

 for (i = 0; i < ports_c; i++) {
  for (j = 0; j < 2; j++)
   nf_conntrack_helper_unregister(&tftp[i][j]);
 }
}
