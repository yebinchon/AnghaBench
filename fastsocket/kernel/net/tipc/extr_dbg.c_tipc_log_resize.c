
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int echo; int * buf; } ;


 int GFP_ATOMIC ;
 TYPE_1__* TIPC_LOG ;
 int TIPC_PB_MIN_SIZE ;
 int kfree (int *) ;
 int kmalloc (int,int ) ;
 int print_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tipc_printbuf_init (TYPE_1__*,int ,int) ;

int tipc_log_resize(int log_size)
{
 int res = 0;

 spin_lock_bh(&print_lock);
 if (TIPC_LOG->buf) {
  kfree(TIPC_LOG->buf);
  TIPC_LOG->buf = ((void*)0);
 }
 if (log_size) {
  if (log_size < TIPC_PB_MIN_SIZE)
   log_size = TIPC_PB_MIN_SIZE;
  res = TIPC_LOG->echo;
  tipc_printbuf_init(TIPC_LOG, kmalloc(log_size, GFP_ATOMIC),
       log_size);
  TIPC_LOG->echo = res;
  res = !TIPC_LOG->buf;
 }
 spin_unlock_bh(&print_lock);

 return res;
}
