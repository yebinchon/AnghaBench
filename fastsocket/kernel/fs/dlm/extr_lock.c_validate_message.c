
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int h_nodeid; } ;
struct dlm_message {int m_type; TYPE_1__ m_header; } ;
struct dlm_lkb {int lkb_nodeid; int lkb_flags; int lkb_remid; int lkb_id; TYPE_2__* lkb_resource; } ;
struct TYPE_4__ {int res_ls; } ;
 int EINVAL ;
 int is_master_copy (struct dlm_lkb*) ;
 int is_process_copy (struct dlm_lkb*) ;
 int log_error (int ,char*,int,int,int ,int ,int ,int) ;

__attribute__((used)) static int validate_message(struct dlm_lkb *lkb, struct dlm_message *ms)
{
 int from = ms->m_header.h_nodeid;
 int error = 0;

 switch (ms->m_type) {
 case 133:
 case 129:
 case 135:
  if (!is_master_copy(lkb) || lkb->lkb_nodeid != from)
   error = -EINVAL;
  break;

 case 132:
 case 128:
 case 134:
 case 131:
 case 136:
  if (!is_process_copy(lkb) || lkb->lkb_nodeid != from)
   error = -EINVAL;
  break;

 case 130:
  if (!is_process_copy(lkb))
   error = -EINVAL;
  else if (lkb->lkb_nodeid != -1 && lkb->lkb_nodeid != from)
   error = -EINVAL;
  break;

 default:
  error = -EINVAL;
 }

 if (error)
  log_error(lkb->lkb_resource->res_ls,
     "ignore invalid message %d from %d %x %x %x %d",
     ms->m_type, from, lkb->lkb_id, lkb->lkb_remid,
     lkb->lkb_flags, lkb->lkb_nodeid);
 return error;
}
