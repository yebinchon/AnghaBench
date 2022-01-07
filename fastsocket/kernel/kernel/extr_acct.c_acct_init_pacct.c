
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pacct_struct {int ac_stime; int ac_utime; } ;


 int cputime_zero ;
 int memset (struct pacct_struct*,int ,int) ;

void acct_init_pacct(struct pacct_struct *pacct)
{
 memset(pacct, 0, sizeof(struct pacct_struct));
 pacct->ac_utime = pacct->ac_stime = cputime_zero;
}
