
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptr_loc {int lineno; char* filename; } ;


 struct ptr_loc* get_rtx_ptr_loc (void const*) ;
 int printf (char*,int,char*) ;

void
print_rtx_ptr_loc (const void *ptr)
{
  const struct ptr_loc *loc = get_rtx_ptr_loc (ptr);
  if (loc != 0)
    printf ("#line %d \"%s\"\n", loc->lineno, loc->filename);
}
