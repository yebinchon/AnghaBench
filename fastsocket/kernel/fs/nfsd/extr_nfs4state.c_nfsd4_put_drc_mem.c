
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nfsd_drc_lock ;
 int nfsd_drc_mem_used ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nfsd4_put_drc_mem(int slotsize, int num)
{
 spin_lock(&nfsd_drc_lock);
 nfsd_drc_mem_used -= slotsize * num;
 spin_unlock(&nfsd_drc_lock);
}
