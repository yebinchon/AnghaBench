
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct file {int dummy; } ;


 unsigned long CONFIG_LSM_MMAP_MIN_ADDR ;
 unsigned long MAP_SHARED ;
 unsigned long MAP_TYPE ;
 int MEMPROTECT__MMAP_ZERO ;
 int SECCLASS_MEMPROTECT ;
 int avc_has_perm (int ,int ,int ,int ,int *) ;
 int cap_file_mmap (struct file*,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ;
 int current_sid () ;
 int file_map_prot_check (struct file*,unsigned long,int) ;
 scalar_t__ selinux_checkreqprot ;

__attribute__((used)) static int selinux_file_mmap(struct file *file, unsigned long reqprot,
        unsigned long prot, unsigned long flags,
        unsigned long addr, unsigned long addr_only)
{
 int rc = 0;
 u32 sid = current_sid();







 if (addr < CONFIG_LSM_MMAP_MIN_ADDR) {
  rc = avc_has_perm(sid, sid, SECCLASS_MEMPROTECT,
      MEMPROTECT__MMAP_ZERO, ((void*)0));
  if (rc)
   return rc;
 }


 rc = cap_file_mmap(file, reqprot, prot, flags, addr, addr_only);
 if (rc || addr_only)
  return rc;

 if (selinux_checkreqprot)
  prot = reqprot;

 return file_map_prot_check(file, prot,
       (flags & MAP_TYPE) == MAP_SHARED);
}
