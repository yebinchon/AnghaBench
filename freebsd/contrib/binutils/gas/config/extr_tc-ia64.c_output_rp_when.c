
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unw_rec_list ;


 int * alloc_record (int ) ;
 int rp_when ;

__attribute__((used)) static unw_rec_list *
output_rp_when ()
{
  unw_rec_list *ptr = alloc_record (rp_when);
  return ptr;
}
