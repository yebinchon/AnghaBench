
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xt_tcp {int flg_cmp; int invflags; } ;
struct TYPE_5__ {TYPE_1__* match; } ;
struct TYPE_6__ {TYPE_2__ kernel; } ;
struct xt_entry_match {TYPE_3__ u; scalar_t__ data; } ;
struct TYPE_4__ {int name; } ;


 int TH_SYN ;
 int XT_TCP_INV_FLAGS ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static inline bool find_syn_match(const struct xt_entry_match *m)
{
 const struct xt_tcp *tcpinfo = (const struct xt_tcp *)m->data;

 if (strcmp(m->u.kernel.match->name, "tcp") == 0 &&
     tcpinfo->flg_cmp & TH_SYN &&
     !(tcpinfo->invflags & XT_TCP_INV_FLAGS))
  return 1;

 return 0;
}
