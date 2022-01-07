
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct work_struct {int dummy; } ;


 int HZ ;
 int dprintk (char*,int) ;
 int laundromat_work ;
 int laundry_wq ;
 int nfs4_laundromat () ;
 int queue_delayed_work (int ,int *,int) ;

__attribute__((used)) static void
laundromat_main(struct work_struct *not_used)
{
 time_t t;

 t = nfs4_laundromat();
 dprintk("NFSD: laundromat_main - sleeping for %ld seconds\n", t);
 queue_delayed_work(laundry_wq, &laundromat_work, t*HZ);
}
