
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int read_unlock (int *) ;
 int rxrpc_connection_lock ;

__attribute__((used)) static void rxrpc_connection_seq_stop(struct seq_file *seq, void *v)
{
 read_unlock(&rxrpc_connection_lock);
}
