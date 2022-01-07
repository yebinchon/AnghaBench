
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcp_options_received {int rcv_tsecr; int snd_wscale; int rcv_wscale; int sack_ok; int wscale_ok; } ;


 int TSMASK ;
 int tcp_sack_reset (struct tcp_options_received*) ;

void cookie_check_timestamp(struct tcp_options_received *tcp_opt)
{

 u32 options = tcp_opt->rcv_tsecr & TSMASK;

 tcp_opt->snd_wscale = options & 0xf;
 options >>= 4;
 tcp_opt->rcv_wscale = options & 0xf;

 tcp_opt->sack_ok = (options >> 4) & 0x1;

 if (tcp_opt->sack_ok)
  tcp_sack_reset(tcp_opt);

 if (tcp_opt->snd_wscale || tcp_opt->rcv_wscale)
  tcp_opt->wscale_ok = 1;
}
