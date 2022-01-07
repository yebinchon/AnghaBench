
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int DEFINE_SPINLOCK ;


 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static u32 get_acqseq(void)
{
 u32 res;
 static u32 acqseq;
 static DEFINE_SPINLOCK(acqseq_lock);

 spin_lock_bh(&acqseq_lock);
 res = (++acqseq ? : ++acqseq);
 spin_unlock_bh(&acqseq_lock);
 return res;
}
