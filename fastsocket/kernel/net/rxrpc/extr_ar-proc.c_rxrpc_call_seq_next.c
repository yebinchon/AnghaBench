
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 int rxrpc_calls ;
 void* seq_list_next (void*,int *,int *) ;

__attribute__((used)) static void *rxrpc_call_seq_next(struct seq_file *seq, void *v, loff_t *pos)
{
 return seq_list_next(v, &rxrpc_calls, pos);
}
