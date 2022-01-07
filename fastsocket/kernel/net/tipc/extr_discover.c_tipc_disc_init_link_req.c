
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_media_addr {int dummy; } ;
struct link_req {int timer_intv; int timer; struct bearer* bearer; int dest; int buf; } ;
struct bearer {int dummy; } ;
typedef int Handler ;


 int DSC_REQ_MSG ;
 int GFP_ATOMIC ;
 int TIPC_LINK_REQ_INIT ;
 scalar_t__ disc_timeout ;
 int k_init_timer (int *,int ,unsigned long) ;
 int k_start_timer (int *,int ) ;
 int kfree (struct link_req*) ;
 struct link_req* kmalloc (int,int ) ;
 int memcpy (int *,struct tipc_media_addr const*,int) ;
 int tipc_disc_init_msg (int ,int ,int ,struct bearer*) ;

struct link_req *tipc_disc_init_link_req(struct bearer *b_ptr,
      const struct tipc_media_addr *dest,
      u32 dest_domain,
      u32 req_links)
{
 struct link_req *req;

 req = kmalloc(sizeof(*req), GFP_ATOMIC);
 if (!req)
  return ((void*)0);

 req->buf = tipc_disc_init_msg(DSC_REQ_MSG, req_links, dest_domain, b_ptr);
 if (!req->buf) {
  kfree(req);
  return ((void*)0);
 }

 memcpy(&req->dest, dest, sizeof(*dest));
 req->bearer = b_ptr;
 req->timer_intv = TIPC_LINK_REQ_INIT;
 k_init_timer(&req->timer, (Handler)disc_timeout, (unsigned long)req);
 k_start_timer(&req->timer, req->timer_intv);
 return req;
}
