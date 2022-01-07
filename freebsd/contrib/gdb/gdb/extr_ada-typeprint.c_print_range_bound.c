
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct type {int dummy; } ;
typedef int LONGEST ;


 int ada_print_scalar (struct type*,int ,struct ui_file*) ;
 scalar_t__ ada_scan_number (char*,int,int *,int*) ;
 int fprintf_filtered (struct ui_file*,char*,int,char*) ;
 int strlen (char*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static void
print_range_bound (struct type *type, char *bounds, int *n,
     struct ui_file *stream)
{
  LONGEST B;
  if (ada_scan_number (bounds, *n, &B, n))
    {
      ada_print_scalar (type, B, stream);
      if (bounds[*n] == '_')
 *n += 2;
    }
  else
    {
      int bound_len;
      char *bound = bounds + *n;
      char *pend;

      pend = strstr (bound, "__");
      if (pend == ((void*)0))
 *n += bound_len = strlen (bound);
      else
 {
   bound_len = pend - bound;
   *n += bound_len + 2;
 }
      fprintf_filtered (stream, "%.*s", bound_len, bound);
    }
}
