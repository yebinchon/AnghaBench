
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sock {int sk_omem_alloc; } ;
struct net {int dummy; } ;
struct ip_sf_socklist {int sl_count; int sl_max; int * sl_addr; int rcu; } ;
struct TYPE_7__ {scalar_t__ s_addr; } ;
struct TYPE_5__ {int s_addr; } ;
struct ip_mreqn {int imr_ifindex; TYPE_3__ imr_multiaddr; TYPE_1__ imr_address; } ;
struct ip_mreq_source {scalar_t__ imr_multiaddr; int imr_sourceaddr; int imr_interface; } ;
struct TYPE_6__ {scalar_t__ s_addr; } ;
struct TYPE_8__ {int imr_ifindex; TYPE_2__ imr_multiaddr; } ;
struct ip_mc_socklist {int sfmode; struct ip_sf_socklist* sflist; TYPE_4__ multi; struct ip_mc_socklist* next; } ;
struct inet_sock {struct ip_mc_socklist* mc_list; } ;
struct in_device {int dummy; } ;
typedef scalar_t__ __be32 ;


 int EADDRNOTAVAIL ;
 int EINVAL ;
 int ENOBUFS ;
 int ENODEV ;
 int GFP_KERNEL ;
 int IP_SFBLOCK ;
 int IP_SFLSIZE (int) ;
 int MCAST_INCLUDE ;
 int atomic_sub (int ,int *) ;
 int call_rcu (int *,int ) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int ip_mc_add_src (struct in_device*,scalar_t__*,int,int,int *,int) ;
 int ip_mc_del_src (struct in_device*,scalar_t__*,int,int,int *,int) ;
 struct in_device* ip_mc_find_dev (struct net*,struct ip_mreqn*) ;
 int ip_mc_leave_group (struct sock*,struct ip_mreqn*) ;
 int ip_sf_socklist_reclaim ;
 int ipv4_is_multicast (scalar_t__) ;
 int memcmp (int *,int *,int) ;
 int rcu_assign_pointer (struct ip_sf_socklist*,struct ip_sf_socklist*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 struct ip_sf_socklist* sock_kmalloc (struct sock*,int ,int ) ;
 struct net* sock_net (struct sock*) ;
 int sysctl_igmp_max_msf ;

int ip_mc_source(int add, int omode, struct sock *sk, struct
 ip_mreq_source *mreqs, int ifindex)
{
 int err;
 struct ip_mreqn imr;
 __be32 addr = mreqs->imr_multiaddr;
 struct ip_mc_socklist *pmc;
 struct in_device *in_dev = ((void*)0);
 struct inet_sock *inet = inet_sk(sk);
 struct ip_sf_socklist *psl;
 struct net *net = sock_net(sk);
 int leavegroup = 0;
 int i, j, rv;

 if (!ipv4_is_multicast(addr))
  return -EINVAL;

 rtnl_lock();

 imr.imr_multiaddr.s_addr = mreqs->imr_multiaddr;
 imr.imr_address.s_addr = mreqs->imr_interface;
 imr.imr_ifindex = ifindex;
 in_dev = ip_mc_find_dev(net, &imr);

 if (!in_dev) {
  err = -ENODEV;
  goto done;
 }
 err = -EADDRNOTAVAIL;

 for (pmc=inet->mc_list; pmc; pmc=pmc->next) {
  if (pmc->multi.imr_multiaddr.s_addr == imr.imr_multiaddr.s_addr
      && pmc->multi.imr_ifindex == imr.imr_ifindex)
   break;
 }
 if (!pmc) {
  err = -EINVAL;
  goto done;
 }

 if (pmc->sflist) {
  if (pmc->sfmode != omode) {
   err = -EINVAL;
   goto done;
  }
 } else if (pmc->sfmode != omode) {

  ip_mc_add_src(in_dev, &mreqs->imr_multiaddr, omode, 0, ((void*)0), 0);
  ip_mc_del_src(in_dev, &mreqs->imr_multiaddr, pmc->sfmode, 0,
   ((void*)0), 0);
  pmc->sfmode = omode;
 }

 psl = pmc->sflist;
 if (!add) {
  if (!psl)
   goto done;
  rv = !0;
  for (i=0; i<psl->sl_count; i++) {
   rv = memcmp(&psl->sl_addr[i], &mreqs->imr_sourceaddr,
    sizeof(__be32));
   if (rv == 0)
    break;
  }
  if (rv)
   goto done;


  if (psl->sl_count == 1 && omode == MCAST_INCLUDE) {
   leavegroup = 1;
   goto done;
  }


  ip_mc_del_src(in_dev, &mreqs->imr_multiaddr, omode, 1,
   &mreqs->imr_sourceaddr, 1);

  for (j=i+1; j<psl->sl_count; j++)
   psl->sl_addr[j-1] = psl->sl_addr[j];
  psl->sl_count--;
  err = 0;
  goto done;
 }


 if (psl && psl->sl_count >= sysctl_igmp_max_msf) {
  err = -ENOBUFS;
  goto done;
 }
 if (!psl || psl->sl_count == psl->sl_max) {
  struct ip_sf_socklist *newpsl;
  int count = IP_SFBLOCK;

  if (psl)
   count += psl->sl_max;
  newpsl = sock_kmalloc(sk, IP_SFLSIZE(count), GFP_KERNEL);
  if (!newpsl) {
   err = -ENOBUFS;
   goto done;
  }
  newpsl->sl_max = count;
  newpsl->sl_count = count - IP_SFBLOCK;
  if (psl) {
   for (i=0; i<psl->sl_count; i++)
    newpsl->sl_addr[i] = psl->sl_addr[i];

   atomic_sub(IP_SFLSIZE(psl->sl_max), &sk->sk_omem_alloc);
   call_rcu(&psl->rcu, ip_sf_socklist_reclaim);
  }
  rcu_assign_pointer(pmc->sflist, newpsl);
  psl = newpsl;
 }
 rv = 1;
 for (i=0; i<psl->sl_count; i++) {
  rv = memcmp(&psl->sl_addr[i], &mreqs->imr_sourceaddr,
   sizeof(__be32));
  if (rv == 0)
   break;
 }
 if (rv == 0)
  goto done;
 for (j=psl->sl_count-1; j>=i; j--)
  psl->sl_addr[j+1] = psl->sl_addr[j];
 psl->sl_addr[i] = mreqs->imr_sourceaddr;
 psl->sl_count++;
 err = 0;

 ip_mc_add_src(in_dev, &mreqs->imr_multiaddr, omode, 1,
  &mreqs->imr_sourceaddr, 1);
done:
 rtnl_unlock();
 if (leavegroup)
  return ip_mc_leave_group(sk, &imr);
 return err;
}
