
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct sctp_sndrcvinfo {int dummy; } ;
struct msghdr {char* msg_control; int msg_controllen; int msg_flags; } ;
struct kvec {unsigned int iov_len; scalar_t__ iov_base; } ;
struct TYPE_6__ {scalar_t__ base; int len; } ;
struct connection {scalar_t__ nodeid; int sock_mutex; int rwork; int flags; int * rx_page; TYPE_1__ cb; int * sock; } ;
typedef int incmsg ;


 int BUG_ON (int) ;
 int CF_READ_PENDING ;
 int CMSG_SPACE (int) ;
 int EAGAIN ;
 int EBADMSG ;
 int GFP_ATOMIC ;
 int MSG_DONTWAIT ;
 int MSG_NOSIGNAL ;
 int MSG_NOTIFICATION ;
 scalar_t__ PAGE_CACHE_SIZE ;
 int __free_page (int *) ;
 int * alloc_page (int ) ;
 int cbuf_add (TYPE_1__*,int) ;
 scalar_t__ cbuf_data (TYPE_1__*) ;
 int cbuf_eat (TYPE_1__*,int) ;
 scalar_t__ cbuf_empty (TYPE_1__*) ;
 int cbuf_init (TYPE_1__*,scalar_t__) ;
 int close_connection (struct connection*,int) ;
 int dlm_process_incoming_buffer (scalar_t__,scalar_t__,scalar_t__,int ,scalar_t__) ;
 int kernel_recvmsg (int *,struct msghdr*,struct kvec*,int,unsigned int,int) ;
 int log_print (char*,scalar_t__,scalar_t__,int ,unsigned int,scalar_t__,int) ;
 int memset (char**,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ page_address (int *) ;
 int process_sctp_notification (struct connection*,struct msghdr*,scalar_t__) ;
 int queue_work (int ,int *) ;
 int recv_workqueue ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static int receive_from_sock(struct connection *con)
{
 int ret = 0;
 struct msghdr msg = {};
 struct kvec iov[2];
 unsigned len;
 int r;
 int call_again_soon = 0;
 int nvec;
 char incmsg[CMSG_SPACE(sizeof(struct sctp_sndrcvinfo))];

 mutex_lock(&con->sock_mutex);

 if (con->sock == ((void*)0)) {
  ret = -EAGAIN;
  goto out_close;
 }

 if (con->rx_page == ((void*)0)) {




  con->rx_page = alloc_page(GFP_ATOMIC);
  if (con->rx_page == ((void*)0))
   goto out_resched;
  cbuf_init(&con->cb, PAGE_CACHE_SIZE);
 }


 memset(&incmsg, 0, sizeof(incmsg));
 msg.msg_control = incmsg;
 msg.msg_controllen = sizeof(incmsg);





 iov[0].iov_len = con->cb.base - cbuf_data(&con->cb);
 iov[0].iov_base = page_address(con->rx_page) + cbuf_data(&con->cb);
 iov[1].iov_len = 0;
 nvec = 1;





 if (cbuf_data(&con->cb) >= con->cb.base) {
  iov[0].iov_len = PAGE_CACHE_SIZE - cbuf_data(&con->cb);
  iov[1].iov_len = con->cb.base;
  iov[1].iov_base = page_address(con->rx_page);
  nvec = 2;
 }
 len = iov[0].iov_len + iov[1].iov_len;

 r = ret = kernel_recvmsg(con->sock, &msg, iov, nvec, len,
          MSG_DONTWAIT | MSG_NOSIGNAL);
 if (ret <= 0)
  goto out_close;


 if (msg.msg_flags & MSG_NOTIFICATION) {
  msg.msg_control = incmsg;
  msg.msg_controllen = sizeof(incmsg);

  process_sctp_notification(con, &msg,
    page_address(con->rx_page) + con->cb.base);
  mutex_unlock(&con->sock_mutex);
  return 0;
 }
 BUG_ON(con->nodeid == 0);

 if (ret == len)
  call_again_soon = 1;
 cbuf_add(&con->cb, ret);
 ret = dlm_process_incoming_buffer(con->nodeid,
       page_address(con->rx_page),
       con->cb.base, con->cb.len,
       PAGE_CACHE_SIZE);
 if (ret == -EBADMSG) {
  log_print("lowcomms: addr=%p, base=%u, len=%u, "
     "iov_len=%u, iov_base[0]=%p, read=%d",
     page_address(con->rx_page), con->cb.base, con->cb.len,
     len, iov[0].iov_base, r);
 }
 if (ret < 0)
  goto out_close;
 cbuf_eat(&con->cb, ret);

 if (cbuf_empty(&con->cb) && !call_again_soon) {
  __free_page(con->rx_page);
  con->rx_page = ((void*)0);
 }

 if (call_again_soon)
  goto out_resched;
 mutex_unlock(&con->sock_mutex);
 return 0;

out_resched:
 if (!test_and_set_bit(CF_READ_PENDING, &con->flags))
  queue_work(recv_workqueue, &con->rwork);
 mutex_unlock(&con->sock_mutex);
 return -EAGAIN;

out_close:
 mutex_unlock(&con->sock_mutex);
 if (ret != -EAGAIN) {
  close_connection(con, 0);

 }

 if (ret == 0)
  ret = -EAGAIN;

 return ret;
}
