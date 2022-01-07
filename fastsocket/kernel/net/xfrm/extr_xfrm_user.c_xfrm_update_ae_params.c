
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int use_time; int add_time; int packets; int bytes; } ;
struct xfrm_state {void* replay_maxdiff; void* replay_maxage; TYPE_1__ curlft; int preplay; int replay; } ;
struct xfrm_replay_state {int dummy; } ;
struct xfrm_lifetime_cur {int use_time; int add_time; int packets; int bytes; } ;
struct nlattr {int dummy; } ;


 size_t XFRMA_ETIMER_THRESH ;
 size_t XFRMA_LTIME_VAL ;
 size_t XFRMA_REPLAY_THRESH ;
 size_t XFRMA_REPLAY_VAL ;
 int memcpy (int *,struct xfrm_replay_state*,int) ;
 void* nla_data (struct nlattr*) ;
 void* nla_get_u32 (struct nlattr*) ;

__attribute__((used)) static void xfrm_update_ae_params(struct xfrm_state *x, struct nlattr **attrs)
{
 struct nlattr *rp = attrs[XFRMA_REPLAY_VAL];
 struct nlattr *lt = attrs[XFRMA_LTIME_VAL];
 struct nlattr *et = attrs[XFRMA_ETIMER_THRESH];
 struct nlattr *rt = attrs[XFRMA_REPLAY_THRESH];

 if (rp) {
  struct xfrm_replay_state *replay;
  replay = nla_data(rp);
  memcpy(&x->replay, replay, sizeof(*replay));
  memcpy(&x->preplay, replay, sizeof(*replay));
 }

 if (lt) {
  struct xfrm_lifetime_cur *ltime;
  ltime = nla_data(lt);
  x->curlft.bytes = ltime->bytes;
  x->curlft.packets = ltime->packets;
  x->curlft.add_time = ltime->add_time;
  x->curlft.use_time = ltime->use_time;
 }

 if (et)
  x->replay_maxage = nla_get_u32(et);

 if (rt)
  x->replay_maxdiff = nla_get_u32(rt);
}
