
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct file {int dummy; } ;
struct TYPE_3__ {int flags; } ;


 int CAP_SYS_RAWIO ;
 int PF_SUPERPRIV ;
 int SECURITY_CAP_AUDIT ;
 int cap_capable (TYPE_1__*,int ,int ,int ) ;
 TYPE_1__* current ;
 int current_cred () ;
 unsigned long dac_mmap_min_addr ;

int cap_file_mmap(struct file *file, unsigned long reqprot,
    unsigned long prot, unsigned long flags,
    unsigned long addr, unsigned long addr_only)
{
 int ret = 0;

 if (addr < dac_mmap_min_addr) {
  ret = cap_capable(current, current_cred(), CAP_SYS_RAWIO,
      SECURITY_CAP_AUDIT);

  if (ret == 0)
   current->flags |= PF_SUPERPRIV;
 }
 return ret;
}
