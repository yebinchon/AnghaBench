
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xfrm_usersa_info {int seq; int flags; int family; int reqid; int replay_window; int mode; int saddr; int stats; int curlft; int lft; int sel; int id; } ;
struct TYPE_4__ {int seq; } ;
struct TYPE_3__ {int flags; int family; int reqid; int replay_window; int mode; int saddr; } ;
struct xfrm_state {TYPE_2__ km; TYPE_1__ props; int stats; int curlft; int lft; int sel; int id; } ;


 int memcpy (int *,int *,int) ;
 int memset (struct xfrm_usersa_info*,int ,int) ;

__attribute__((used)) static void copy_to_user_state(struct xfrm_state *x, struct xfrm_usersa_info *p)
{
 memset(p, 0, sizeof(*p));
 memcpy(&p->id, &x->id, sizeof(p->id));
 memcpy(&p->sel, &x->sel, sizeof(p->sel));
 memcpy(&p->lft, &x->lft, sizeof(p->lft));
 memcpy(&p->curlft, &x->curlft, sizeof(p->curlft));
 memcpy(&p->stats, &x->stats, sizeof(p->stats));
 memcpy(&p->saddr, &x->props.saddr, sizeof(p->saddr));
 p->mode = x->props.mode;
 p->replay_window = x->props.replay_window;
 p->reqid = x->props.reqid;
 p->family = x->props.family;
 p->flags = x->props.flags;
 p->seq = x->km.seq;
}
