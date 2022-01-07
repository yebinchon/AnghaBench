
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netpoll_info {int rx_flags; } ;
struct napi_struct {int (* poll ) (struct napi_struct*,int) ;int state; } ;


 int NAPI_STATE_NPSVC ;
 int NAPI_STATE_SCHED ;
 int NETPOLL_RX_DROP ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int stub1 (struct napi_struct*,int) ;
 int test_bit (int ,int *) ;
 int trace_napi_poll (struct napi_struct*) ;
 int trapped ;

__attribute__((used)) static int poll_one_napi(struct netpoll_info *npinfo,
    struct napi_struct *napi, int budget)
{
 int work;





 if (!test_bit(NAPI_STATE_SCHED, &napi->state))
  return budget;

 npinfo->rx_flags |= NETPOLL_RX_DROP;
 atomic_inc(&trapped);
 set_bit(NAPI_STATE_NPSVC, &napi->state);

 work = napi->poll(napi, budget);
 trace_napi_poll(napi);

 clear_bit(NAPI_STATE_NPSVC, &napi->state);
 atomic_dec(&trapped);
 npinfo->rx_flags &= ~NETPOLL_RX_DROP;

 return budget - work;
}
