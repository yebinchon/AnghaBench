
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int s_comm_internal (int,int ) ;
 int s_lcomm_internal ;

void
s_lcomm_bytes (int needs_align)
{
  s_comm_internal (needs_align * 2, s_lcomm_internal);
}
