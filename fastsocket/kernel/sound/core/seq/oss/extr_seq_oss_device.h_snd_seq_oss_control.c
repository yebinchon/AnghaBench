
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_oss_devinfo {int cseq; } ;


 int snd_seq_kernel_client_ctl (int ,unsigned int,void*) ;

__attribute__((used)) static inline int
snd_seq_oss_control(struct seq_oss_devinfo *dp, unsigned int type, void *arg)
{
 return snd_seq_kernel_client_ctl(dp->cseq, type, arg);
}
