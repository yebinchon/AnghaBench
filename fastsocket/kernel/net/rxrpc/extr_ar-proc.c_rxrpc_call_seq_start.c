
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 int read_lock (int *) ;
 int rxrpc_call_lock ;
 int rxrpc_calls ;
 void* seq_list_start_head (int *,int ) ;

__attribute__((used)) static void *rxrpc_call_seq_start(struct seq_file *seq, loff_t *_pos)
{
 read_lock(&rxrpc_call_lock);
 return seq_list_start_head(&rxrpc_calls, *_pos);
}
