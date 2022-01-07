
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zilog_t ;
typedef int u_longlong_t ;
struct TYPE_2__ {scalar_t__ lr_doid; } ;
typedef TYPE_1__ lr_remove_t ;


 int printf (char*,char*,int ,char*) ;
 char* tab_prefix ;

__attribute__((used)) static void
zil_prt_rec_remove(zilog_t *zilog, int txtype, void *arg)
{
 lr_remove_t *lr = arg;

 (void) printf("%sdoid %llu, name %s\n", tab_prefix,
     (u_longlong_t)lr->lr_doid, (char *)(lr + 1));
}
