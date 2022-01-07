
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; int tv_nsec; } ;
struct sk_buff {int dummy; } ;
struct rtable {unsigned char rt_spec_dst; } ;
struct net {int dummy; } ;
struct iphdr {int dummy; } ;
struct ip_options {unsigned char* __data; int optlen; int is_changed; int srr; unsigned char faddr; int is_strictroute; int rr; int rr_needaddr; int ts; int ts_needtime; int ts_needaddr; int router_alert; int cipso; } ;
typedef unsigned char __be32 ;


 int CAP_NET_RAW ;
 int EINVAL ;
 int ICMP_PARAMETERPROB ;
 int MSEC_PER_SEC ;
 int NSEC_PER_MSEC ;
 int RTN_UNICAST ;
 int capable (int ) ;
 int cipso_v4_validate (struct sk_buff*,unsigned char**) ;
 int getnstimeofday (struct timespec*) ;
 unsigned char htonl (int) ;
 int icmp_send (struct sk_buff*,int ,int ,unsigned char) ;
 int inet_addr_type (struct net*,unsigned char) ;
 int * ip_hdr (struct sk_buff*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memmove (unsigned char*,unsigned char*,int) ;
 struct rtable* skb_rtable (struct sk_buff*) ;

int ip_options_compile(struct net *net,
         struct ip_options * opt, struct sk_buff * skb)
{
 int l;
 unsigned char * iph;
 unsigned char * optptr;
 int optlen;
 unsigned char * pp_ptr = ((void*)0);
 struct rtable *rt = ((void*)0);

 if (skb != ((void*)0)) {
  rt = skb_rtable(skb);
  optptr = (unsigned char *)&(ip_hdr(skb)[1]);
 } else
  optptr = opt->__data;
 iph = optptr - sizeof(struct iphdr);

 for (l = opt->optlen; l > 0; ) {
  switch (*optptr) {
        case 139:
   for (optptr++, l--; l>0; optptr++, l--) {
    if (*optptr != 139) {
     *optptr = 139;
     opt->is_changed = 1;
    }
   }
   goto eol;
        case 137:
   l--;
   optptr++;
   continue;
  }
  optlen = optptr[1];
  if (optlen<2 || optlen>l) {
   pp_ptr = optptr;
   goto error;
  }
  switch (*optptr) {
        case 132:
        case 138:
   if (optlen < 3) {
    pp_ptr = optptr + 1;
    goto error;
   }
   if (optptr[2] < 4) {
    pp_ptr = optptr + 2;
    goto error;
   }

   if (opt->srr) {
    pp_ptr = optptr;
    goto error;
   }
   if (!skb) {
    if (optptr[2] != 4 || optlen < 7 || ((optlen-3) & 3)) {
     pp_ptr = optptr + 1;
     goto error;
    }
    memcpy(&opt->faddr, &optptr[3], 4);
    if (optlen > 7)
     memmove(&optptr[3], &optptr[7], optlen-7);
   }
   opt->is_strictroute = (optptr[0] == 132);
   opt->srr = optptr - iph;
   break;
        case 135:
   if (opt->rr) {
    pp_ptr = optptr;
    goto error;
   }
   if (optlen < 3) {
    pp_ptr = optptr + 1;
    goto error;
   }
   if (optptr[2] < 4) {
    pp_ptr = optptr + 2;
    goto error;
   }
   if (optptr[2] <= optlen) {
    if (optptr[2]+3 > optlen) {
     pp_ptr = optptr + 2;
     goto error;
    }
    if (skb) {
     memcpy(&optptr[optptr[2]-1], &rt->rt_spec_dst, 4);
     opt->is_changed = 1;
    }
    optptr[2] += 4;
    opt->rr_needaddr = 1;
   }
   opt->rr = optptr - iph;
   break;
        case 131:
   if (opt->ts) {
    pp_ptr = optptr;
    goto error;
   }
   if (optlen < 4) {
    pp_ptr = optptr + 1;
    goto error;
   }
   if (optptr[2] < 5) {
    pp_ptr = optptr + 2;
    goto error;
   }
   if (optptr[2] <= optlen) {
    __be32 *timeptr = ((void*)0);
    if (optptr[2]+3 > optptr[1]) {
     pp_ptr = optptr + 2;
     goto error;
    }
    switch (optptr[3]&0xF) {
          case 128:
     opt->ts = optptr - iph;
     if (skb)
      timeptr = (__be32*)&optptr[optptr[2]-1];
     opt->ts_needtime = 1;
     optptr[2] += 4;
     break;
          case 129:
     if (optptr[2]+7 > optptr[1]) {
      pp_ptr = optptr + 2;
      goto error;
     }
     opt->ts = optptr - iph;
     if (skb) {
      memcpy(&optptr[optptr[2]-1], &rt->rt_spec_dst, 4);
      timeptr = (__be32*)&optptr[optptr[2]+3];
     }
     opt->ts_needaddr = 1;
     opt->ts_needtime = 1;
     optptr[2] += 8;
     break;
          case 130:
     if (optptr[2]+7 > optptr[1]) {
      pp_ptr = optptr + 2;
      goto error;
     }
     opt->ts = optptr - iph;
     {
      __be32 addr;
      memcpy(&addr, &optptr[optptr[2]-1], 4);
      if (inet_addr_type(net, addr) == RTN_UNICAST)
       break;
      if (skb)
       timeptr = (__be32*)&optptr[optptr[2]+3];
     }
     opt->ts_needtime = 1;
     optptr[2] += 8;
     break;
          default:
     if (!skb && !capable(CAP_NET_RAW)) {
      pp_ptr = optptr + 3;
      goto error;
     }
     break;
    }
    if (timeptr) {
     struct timespec tv;
     __be32 midtime;
     getnstimeofday(&tv);
     midtime = htonl((tv.tv_sec % 86400) * MSEC_PER_SEC + tv.tv_nsec / NSEC_PER_MSEC);
     memcpy(timeptr, &midtime, sizeof(__be32));
     opt->is_changed = 1;
    }
   } else {
    unsigned overflow = optptr[3]>>4;
    if (overflow == 15) {
     pp_ptr = optptr + 3;
     goto error;
    }
    opt->ts = optptr - iph;
    if (skb) {
     optptr[3] = (optptr[3]&0xF)|((overflow+1)<<4);
     opt->is_changed = 1;
    }
   }
   break;
        case 136:
   if (optlen < 4) {
    pp_ptr = optptr + 1;
    goto error;
   }
   if (optptr[2] == 0 && optptr[3] == 0)
    opt->router_alert = optptr - iph;
   break;
        case 140:
   if ((!skb && !capable(CAP_NET_RAW)) || opt->cipso) {
    pp_ptr = optptr;
    goto error;
   }
   opt->cipso = optptr - iph;
   if (cipso_v4_validate(skb, &optptr)) {
    pp_ptr = optptr;
    goto error;
   }
   break;
        case 134:
        case 133:
        default:
   if (!skb && !capable(CAP_NET_RAW)) {
    pp_ptr = optptr;
    goto error;
   }
   break;
  }
  l -= optlen;
  optptr += optlen;
 }

eol:
 if (!pp_ptr)
  return 0;

error:
 if (skb) {
  icmp_send(skb, ICMP_PARAMETERPROB, 0, htonl((pp_ptr-iph)<<24));
 }
 return -EINVAL;
}
