
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
typedef scalar_t__ bfd_vma ;


 scalar_t__ INNER_THAN (scalar_t__,scalar_t__) ;
 int gdb_assert (scalar_t__*) ;
 struct frame_info* get_current_frame () ;
 scalar_t__ get_frame_base (struct frame_info*) ;
 struct frame_info* get_prev_frame (struct frame_info*) ;
 scalar_t__ read_sp () ;
 int target_has_registers ;
 int target_has_stack ;

__attribute__((used)) static int
derive_stack_segment (bfd_vma *bottom, bfd_vma *top)
{
  struct frame_info *fi, *tmp_fi;

  gdb_assert (bottom);
  gdb_assert (top);


  if (!target_has_stack || !target_has_registers)
    return 0;


  fi = get_current_frame ();
  if (fi == ((void*)0))
    return 0;


  *top = get_frame_base (fi);

  if (INNER_THAN (read_sp (), *top))
    *top = read_sp ();


  while ((tmp_fi = get_prev_frame (fi)) != ((void*)0))
    fi = tmp_fi;


  *bottom = get_frame_base (fi);



  if (*bottom > *top)
    {
      bfd_vma tmp_vma;

      tmp_vma = *top;
      *top = *bottom;
      *bottom = tmp_vma;
    }

  return 1;
}
