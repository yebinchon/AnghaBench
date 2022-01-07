
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int sa_family; } ;
struct TYPE_9__ {int sin_port; } ;
union sctp_addr {TYPE_5__ sa; TYPE_1__ v4; } ;
struct sockaddr {int dummy; } ;
struct sock {TYPE_7__* sk_socket; scalar_t__ sk_err; } ;
struct sctp_transport {int dummy; } ;
struct sctp_sock {struct sctp_endpoint* ep; } ;
struct TYPE_10__ {scalar_t__ port; } ;
struct TYPE_11__ {TYPE_2__ bind_addr; } ;
struct sctp_endpoint {TYPE_3__ base; } ;
struct TYPE_12__ {unsigned short port; } ;
struct sctp_association {scalar_t__ state; int assoc_id; TYPE_4__ peer; } ;
struct sctp_af {int sockaddr_len; int (* to_sk_daddr ) (union sctp_addr*,struct sock*) ;} ;
typedef int sctp_scope_t ;
typedef int sctp_assoc_t ;
typedef int sa_family_t ;
struct TYPE_16__ {int dport; } ;
struct TYPE_15__ {TYPE_6__* file; } ;
struct TYPE_14__ {unsigned int f_flags; } ;


 int CAP_NET_BIND_SERVICE ;
 int EACCES ;
 int EADDRNOTAVAIL ;
 int EAGAIN ;
 int EALREADY ;
 int EINPROGRESS ;
 int EINVAL ;
 int EISCONN ;
 int ENOMEM ;
 int ESTABLISHED ;
 int GFP_KERNEL ;
 int LISTENING ;
 unsigned int O_NONBLOCK ;
 scalar_t__ PROT_SOCK ;
 int SCTP_DEBUG_PRINTK (char*,struct sctp_association*,struct sockaddr*,int) ;
 scalar_t__ SCTP_STATE_ESTABLISHED ;
 int SCTP_UNKNOWN ;
 int TCP ;
 int capable (int ) ;
 int htons (unsigned short) ;
 TYPE_8__* inet_sk (struct sock*) ;
 int memcpy (union sctp_addr*,union sctp_addr*,int) ;
 unsigned short ntohs (int ) ;
 struct sctp_transport* sctp_assoc_add_peer (struct sctp_association*,union sctp_addr*,int ,int ) ;
 int sctp_assoc_set_bind_addr_from_ep (struct sctp_association*,int ,int ) ;
 int sctp_assoc_set_id (struct sctp_association*,int ) ;
 int sctp_association_free (struct sctp_association*) ;
 struct sctp_association* sctp_association_new (struct sctp_endpoint*,struct sock*,int ,int ) ;
 scalar_t__ sctp_autobind (struct sock*) ;
 scalar_t__ sctp_endpoint_is_peeled_off (struct sctp_endpoint*,union sctp_addr*) ;
 struct sctp_association* sctp_endpoint_lookup_assoc (struct sctp_endpoint*,union sctp_addr*,struct sctp_transport**) ;
 struct sctp_af* sctp_get_af_specific (int ) ;
 int sctp_primitive_ASSOCIATE (struct sctp_association*,int *) ;
 int sctp_scope (union sctp_addr*) ;
 struct sctp_sock* sctp_sk (struct sock*) ;
 scalar_t__ sctp_sstate (struct sock*,int ) ;
 scalar_t__ sctp_style (struct sock*,int ) ;
 int sctp_unhash_established (struct sctp_association*) ;
 int sctp_verify_addr (struct sock*,union sctp_addr*,int) ;
 int sctp_wait_for_connect (struct sctp_association*,long*) ;
 long sock_sndtimeo (struct sock*,unsigned int) ;
 int stub1 (union sctp_addr*,struct sock*) ;

__attribute__((used)) static int __sctp_connect(struct sock* sk,
     struct sockaddr *kaddrs,
     int addrs_size,
     sctp_assoc_t *assoc_id)
{
 struct sctp_sock *sp;
 struct sctp_endpoint *ep;
 struct sctp_association *asoc = ((void*)0);
 struct sctp_association *asoc2;
 struct sctp_transport *transport;
 union sctp_addr to;
 struct sctp_af *af;
 sctp_scope_t scope;
 long timeo;
 int err = 0;
 int addrcnt = 0;
 int walk_size = 0;
 union sctp_addr *sa_addr = ((void*)0);
 void *addr_buf;
 unsigned short port;
 unsigned int f_flags = 0;

 sp = sctp_sk(sk);
 ep = sp->ep;






 if (sctp_sstate(sk, ESTABLISHED) ||
     (sctp_style(sk, TCP) && sctp_sstate(sk, LISTENING))) {
  err = -EISCONN;
  goto out_free;
 }


 addr_buf = kaddrs;
 while (walk_size < addrs_size) {
  if (walk_size + sizeof(sa_family_t) > addrs_size) {
   err = -EINVAL;
   goto out_free;
  }

  sa_addr = (union sctp_addr *)addr_buf;
  af = sctp_get_af_specific(sa_addr->sa.sa_family);




  if (!af || (walk_size + af->sockaddr_len) > addrs_size) {
   err = -EINVAL;
   goto out_free;
  }

  port = ntohs(sa_addr->v4.sin_port);


  memcpy(&to, sa_addr, af->sockaddr_len);

  err = sctp_verify_addr(sk, &to, af->sockaddr_len);
  if (err)
   goto out_free;




  if (asoc && asoc->peer.port && asoc->peer.port != port)
   goto out_free;





  asoc2 = sctp_endpoint_lookup_assoc(ep, &to, &transport);
  if (asoc2 && asoc2 != asoc) {
   if (asoc2->state >= SCTP_STATE_ESTABLISHED)
    err = -EISCONN;
   else
    err = -EALREADY;
   goto out_free;
  }





  if (sctp_endpoint_is_peeled_off(ep, &to)) {
   err = -EADDRNOTAVAIL;
   goto out_free;
  }

  if (!asoc) {





   if (!ep->base.bind_addr.port) {
    if (sctp_autobind(sk)) {
     err = -EAGAIN;
     goto out_free;
    }
   } else {







    if (ep->base.bind_addr.port < PROT_SOCK &&
        !capable(CAP_NET_BIND_SERVICE)) {
     err = -EACCES;
     goto out_free;
    }
   }

   scope = sctp_scope(&to);
   asoc = sctp_association_new(ep, sk, scope, GFP_KERNEL);
   if (!asoc) {
    err = -ENOMEM;
    goto out_free;
   }

   err = sctp_assoc_set_bind_addr_from_ep(asoc, scope,
             GFP_KERNEL);
   if (err < 0) {
    goto out_free;
   }

  }


  transport = sctp_assoc_add_peer(asoc, &to, GFP_KERNEL,
      SCTP_UNKNOWN);
  if (!transport) {
   err = -ENOMEM;
   goto out_free;
  }

  addrcnt++;
  addr_buf += af->sockaddr_len;
  walk_size += af->sockaddr_len;
 }




 if (assoc_id) {
  err = sctp_assoc_set_id(asoc, GFP_KERNEL);
  if (err < 0)
   goto out_free;
 }

 err = sctp_primitive_ASSOCIATE(asoc, ((void*)0));
 if (err < 0) {
  goto out_free;
 }


 inet_sk(sk)->dport = htons(asoc->peer.port);
 af = sctp_get_af_specific(sa_addr->sa.sa_family);
 af->to_sk_daddr(sa_addr, sk);
 sk->sk_err = 0;




 if (sk->sk_socket->file)
  f_flags = sk->sk_socket->file->f_flags;

 timeo = sock_sndtimeo(sk, f_flags & O_NONBLOCK);

 err = sctp_wait_for_connect(asoc, &timeo);
 if ((err == 0 || err == -EINPROGRESS) && assoc_id)
  *assoc_id = asoc->assoc_id;


 asoc = ((void*)0);

out_free:

 SCTP_DEBUG_PRINTK("About to exit __sctp_connect() free asoc: %p"
     " kaddrs: %p err: %d\n",
     asoc, kaddrs, err);
 if (asoc) {




  sctp_unhash_established(asoc);
  sctp_association_free(asoc);
 }
 return err;
}
