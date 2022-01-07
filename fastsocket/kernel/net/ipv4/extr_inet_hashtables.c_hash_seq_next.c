
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 void* get_online (int *) ;

__attribute__((used)) static void *hash_seq_next(struct seq_file *seq, void *v, loff_t *pos)
{
 ++*pos;
 return get_online(pos);
}
