
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_sock {int sk_tcplen; int ** sk_pages; } ;
typedef int rpc_fraghdr ;


 int BUG_ON (int ) ;
 unsigned int PAGE_SHIFT ;
 unsigned int PAGE_SIZE ;
 int put_page (int *) ;

__attribute__((used)) static void svc_tcp_clear_pages(struct svc_sock *svsk)
{
 unsigned int i, len, npages;

 if (svsk->sk_tcplen <= sizeof(rpc_fraghdr))
  goto out;
 len = svsk->sk_tcplen - sizeof(rpc_fraghdr);
 npages = (len + PAGE_SIZE - 1) >> PAGE_SHIFT;
 for (i = 0; i < npages; i++) {
  BUG_ON(svsk->sk_pages[i] == ((void*)0));
  put_page(svsk->sk_pages[i]);
  svsk->sk_pages[i] = ((void*)0);
 }
out:
 svsk->sk_tcplen = 0;
}
