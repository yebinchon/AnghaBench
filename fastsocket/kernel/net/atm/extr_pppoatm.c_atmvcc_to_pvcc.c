
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pppoatm_vcc {int dummy; } ;
struct atm_vcc {scalar_t__ user_back; } ;



__attribute__((used)) static inline struct pppoatm_vcc *atmvcc_to_pvcc(const struct atm_vcc *atmvcc)
{
 return (struct pppoatm_vcc *) (atmvcc->user_back);
}
