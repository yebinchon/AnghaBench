
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __dpmi_allocate_ldt_descriptors (int) ;
 int __dpmi_free_ldt_descriptor (int) ;
 int __dpmi_get_descriptor_access_rights (int) ;
 size_t __dpmi_get_segment_limit (int) ;
 int __dpmi_set_descriptor_access_rights (int,int) ;
 int __dpmi_set_segment_base_address (int,unsigned long) ;
 int __dpmi_set_segment_limit (int,size_t) ;
 int _dos_ds ;
 int _my_ds () ;
 int dosmemget (unsigned long,size_t,void*) ;
 int movedata (int,int ,int ,unsigned int,size_t) ;

__attribute__((used)) static int
read_memory_region (unsigned long addr, void *dest, size_t len)
{
  unsigned long dos_ds_limit = __dpmi_get_segment_limit (_dos_ds);
  int retval = 1;


  if (addr <= dos_ds_limit - len)
    dosmemget (addr, len, dest);
  else
    {


      int sel = __dpmi_allocate_ldt_descriptors (1);

      if (sel <= 0)
 retval = 0;
      else
 {
   int access_rights = __dpmi_get_descriptor_access_rights (sel);
   size_t segment_limit = len - 1;







   if (len > 1024 * 1024)
     {
       access_rights |= 0x8000;


       segment_limit |= 0xfff;
     }
   else
     access_rights &= ~0x8000;

   if (__dpmi_set_segment_base_address (sel, addr) != -1
       && __dpmi_set_descriptor_access_rights (sel, access_rights) != -1
       && __dpmi_set_segment_limit (sel, segment_limit) != -1


       && __dpmi_get_segment_limit (sel) >= segment_limit)
     movedata (sel, 0, _my_ds (), (unsigned)dest, len);
   else
     retval = 0;

   __dpmi_free_ldt_descriptor (sel);
 }
    }
  return retval;
}
