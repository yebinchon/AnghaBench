
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct rfcomm_session {int state; int list; int cfc; int mtu; struct socket* sock; int dlcs; int timer; } ;


 int BT_DBG (char*,struct rfcomm_session*,struct socket*) ;
 int BT_LISTEN ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int RFCOMM_CFC_DISABLED ;
 int RFCOMM_CFC_UNKNOWN ;
 int RFCOMM_DEFAULT_MTU ;
 int THIS_MODULE ;
 scalar_t__ disable_cfc ;
 int kfree (struct rfcomm_session*) ;
 struct rfcomm_session* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int rfcomm_session_timeout ;
 int session_list ;
 int setup_timer (int *,int ,unsigned long) ;
 int try_module_get (int ) ;

__attribute__((used)) static struct rfcomm_session *rfcomm_session_add(struct socket *sock, int state)
{
 struct rfcomm_session *s = kzalloc(sizeof(*s), GFP_KERNEL);

 if (!s)
  return ((void*)0);

 BT_DBG("session %p sock %p", s, sock);

 setup_timer(&s->timer, rfcomm_session_timeout, (unsigned long) s);

 INIT_LIST_HEAD(&s->dlcs);
 s->state = state;
 s->sock = sock;

 s->mtu = RFCOMM_DEFAULT_MTU;
 s->cfc = disable_cfc ? RFCOMM_CFC_DISABLED : RFCOMM_CFC_UNKNOWN;



 if (state != BT_LISTEN)
  if (!try_module_get(THIS_MODULE)) {
   kfree(s);
   return ((void*)0);
  }

 list_add(&s->list, &session_list);

 return s;
}
