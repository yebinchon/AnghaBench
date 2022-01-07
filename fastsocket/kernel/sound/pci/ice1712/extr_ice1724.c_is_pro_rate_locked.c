
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {scalar_t__ (* is_spdif_master ) (struct snd_ice1712*) ;} ;


 scalar_t__ PRO_RATE_LOCKED ;
 scalar_t__ stub1 (struct snd_ice1712*) ;

__attribute__((used)) static inline int is_pro_rate_locked(struct snd_ice1712 *ice)
{
 return ice->is_spdif_master(ice) || PRO_RATE_LOCKED;
}
