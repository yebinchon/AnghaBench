
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;
typedef unsigned int __u32 ;


 unsigned int MAX_TCP_WINDOW ;
 int TCP_DEFAULT_INIT_RCVWND ;
 void* max_t (int ,int,int) ;
 unsigned int min (unsigned int,unsigned int) ;
 unsigned int min_t (int ,unsigned int,unsigned int) ;
 int sysctl_rmem_max ;
 int* sysctl_tcp_rmem ;
 scalar_t__ sysctl_tcp_workaround_signed_windows ;
 int u32 ;

void tcp_select_initial_window(int __space, __u32 mss,
          __u32 *rcv_wnd, __u32 *window_clamp,
          int wscale_ok, __u8 *rcv_wscale,
          __u32 init_rcv_wnd)
{
 unsigned int space = (__space < 0 ? 0 : __space);


 if (*window_clamp == 0)
  (*window_clamp) = (65535 << 14);
 space = min(*window_clamp, space);


 if (space > mss)
  space = (space / mss) * mss;
 if (sysctl_tcp_workaround_signed_windows)
  (*rcv_wnd) = min(space, MAX_TCP_WINDOW);
 else
  (*rcv_wnd) = space;

 (*rcv_wscale) = 0;
 if (wscale_ok) {



  space = max_t(u32, sysctl_tcp_rmem[2], sysctl_rmem_max);
  space = min_t(u32, space, *window_clamp);
  while (space > 65535 && (*rcv_wscale) < 14) {
   space >>= 1;
   (*rcv_wscale)++;
  }
 }





 if (mss > (1 << *rcv_wscale)) {
  int init_cwnd = TCP_DEFAULT_INIT_RCVWND;
  if (mss > 1460)
   init_cwnd =
   max_t(u32, (1460 * TCP_DEFAULT_INIT_RCVWND) / mss, 2);



  if (init_rcv_wnd)
   *rcv_wnd = min(*rcv_wnd, init_rcv_wnd * mss);
  else
   *rcv_wnd = min(*rcv_wnd, init_cwnd * mss);
 }


 (*window_clamp) = min(65535U << (*rcv_wscale), *window_clamp);
}
