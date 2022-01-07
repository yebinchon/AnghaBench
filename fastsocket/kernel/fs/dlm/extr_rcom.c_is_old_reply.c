
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {int h_nodeid; } ;
struct dlm_rcom {int rc_type; scalar_t__ rc_seq_reply; TYPE_1__ rc_header; } ;
struct dlm_ls {int ls_recover_lock; scalar_t__ ls_recover_seq; } ;






 int log_debug (struct dlm_ls*,char*,int,int ,unsigned long long,unsigned long long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int is_old_reply(struct dlm_ls *ls, struct dlm_rcom *rc)
{
 uint64_t seq;
 int rv = 0;

 switch (rc->rc_type) {
 case 128:
 case 129:
 case 130:
 case 131:
  spin_lock(&ls->ls_recover_lock);
  seq = ls->ls_recover_seq;
  spin_unlock(&ls->ls_recover_lock);
  if (rc->rc_seq_reply != seq) {
   log_debug(ls, "ignoring old reply %x from %d "
          "seq_reply %llx expect %llx",
          rc->rc_type, rc->rc_header.h_nodeid,
          (unsigned long long)rc->rc_seq_reply,
          (unsigned long long)seq);
   rv = 1;
  }
 }
 return rv;
}
