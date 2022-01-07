
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int rnd ;


 int get_random_bytes (scalar_t__*,int) ;
 scalar_t__ inet_ehash_secret ;
 int inetsw_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void build_ehash_secret(void)
{
 u32 rnd;
 do {
  get_random_bytes(&rnd, sizeof(rnd));
 } while (rnd == 0);
 spin_lock_bh(&inetsw_lock);
 if (!inet_ehash_secret)
  inet_ehash_secret = rnd;
 spin_unlock_bh(&inetsw_lock);
}
