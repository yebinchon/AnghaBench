
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t uint16_t ;
struct dlm_ls {size_t ls_lkbtbl_size; TYPE_1__* ls_lkbtbl; } ;
struct dlm_lkb {int lkb_ref; } ;
struct TYPE_2__ {int lock; } ;


 int EBADSLT ;
 int ENOENT ;
 struct dlm_lkb* __find_lkb (struct dlm_ls*,int) ;
 int kref_get (int *) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

__attribute__((used)) static int find_lkb(struct dlm_ls *ls, uint32_t lkid, struct dlm_lkb **lkb_ret)
{
 struct dlm_lkb *lkb;
 uint16_t bucket = (lkid >> 16);

 if (bucket >= ls->ls_lkbtbl_size)
  return -EBADSLT;

 read_lock(&ls->ls_lkbtbl[bucket].lock);
 lkb = __find_lkb(ls, lkid);
 if (lkb)
  kref_get(&lkb->lkb_ref);
 read_unlock(&ls->ls_lkbtbl[bucket].lock);

 *lkb_ret = lkb;
 return lkb ? 0 : -ENOENT;
}
