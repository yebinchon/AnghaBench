
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int sctp_dbg_objcnt ;

__attribute__((used)) static void * sctp_objcnt_seq_next(struct seq_file *seq, void *v, loff_t *pos)
{
 ++*pos;
 return (*pos >= ARRAY_SIZE(sctp_dbg_objcnt)) ? ((void*)0) : (void *)pos;
}
