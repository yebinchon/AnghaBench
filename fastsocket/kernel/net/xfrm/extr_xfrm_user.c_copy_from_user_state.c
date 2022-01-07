
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xfrm_usersa_info {int flags; scalar_t__ family; int saddr; int reqid; int replay_window; int mode; int lft; int sel; int id; } ;
struct TYPE_4__ {scalar_t__ family; } ;
struct TYPE_3__ {int flags; TYPE_2__ saddr; scalar_t__ family; int reqid; int replay_window; int mode; } ;
struct xfrm_state {TYPE_2__ sel; TYPE_1__ props; TYPE_2__ lft; TYPE_2__ id; } ;


 int XFRM_STATE_AF_UNSPEC ;
 int memcpy (TYPE_2__*,int *,int) ;

__attribute__((used)) static void copy_from_user_state(struct xfrm_state *x, struct xfrm_usersa_info *p)
{
 memcpy(&x->id, &p->id, sizeof(x->id));
 memcpy(&x->sel, &p->sel, sizeof(x->sel));
 memcpy(&x->lft, &p->lft, sizeof(x->lft));
 x->props.mode = p->mode;
 x->props.replay_window = p->replay_window;
 x->props.reqid = p->reqid;
 x->props.family = p->family;
 memcpy(&x->props.saddr, &p->saddr, sizeof(x->props.saddr));
 x->props.flags = p->flags;

 if (!x->sel.family && !(p->flags & XFRM_STATE_AF_UNSPEC))
  x->sel.family = p->family;
}
