
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_loc {int lineno; int filename; } ;


 struct ptr_loc* get_rtx_ptr_loc (void const*) ;
 int set_rtx_ptr_loc (void const*,int ,int ) ;

void
copy_rtx_ptr_loc (const void *new_ptr, const void *old_ptr)
{
  const struct ptr_loc *loc = get_rtx_ptr_loc (old_ptr);
  if (loc != 0)
    set_rtx_ptr_loc (new_ptr, loc->filename, loc->lineno);
}
