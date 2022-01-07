
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int use; } ;
struct TYPE_4__ {TYPE_1__ ct_general; } ;


 int atomic_read (int *) ;
 int nf_conntrack_helper_fini () ;
 int nf_conntrack_proto_fini () ;
 TYPE_2__ nf_conntrack_untracked ;
 int schedule () ;

__attribute__((used)) static void nf_conntrack_cleanup_init_net(void)
{

 while (atomic_read(&nf_conntrack_untracked.ct_general.use) > 1)
  schedule();

 nf_conntrack_helper_fini();
 nf_conntrack_proto_fini();
}
