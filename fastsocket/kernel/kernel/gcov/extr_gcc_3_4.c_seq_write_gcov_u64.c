
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct seq_file {int dummy; } ;
typedef int data ;


 int seq_write (struct seq_file*,int*,int) ;

__attribute__((used)) static int seq_write_gcov_u64(struct seq_file *seq, u64 v)
{
 u32 data[2];

 data[0] = (v & 0xffffffffUL);
 data[1] = (v >> 32);
 return seq_write(seq, data, sizeof(data));
}
