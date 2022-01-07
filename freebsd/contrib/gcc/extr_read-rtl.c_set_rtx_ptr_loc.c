
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_loc {char const* filename; int lineno; void const* ptr; } ;


 int INSERT ;
 struct ptr_loc** htab_find_slot (int ,struct ptr_loc*,int ) ;
 scalar_t__ obstack_alloc (int *,int) ;
 int ptr_loc_obstack ;
 int ptr_locs ;

__attribute__((used)) static void
set_rtx_ptr_loc (const void *ptr, const char *filename, int lineno)
{
  struct ptr_loc *loc;

  loc = (struct ptr_loc *) obstack_alloc (&ptr_loc_obstack,
       sizeof (struct ptr_loc));
  loc->ptr = ptr;
  loc->filename = filename;
  loc->lineno = lineno;
  *htab_find_slot (ptr_locs, loc, INSERT) = loc;
}
