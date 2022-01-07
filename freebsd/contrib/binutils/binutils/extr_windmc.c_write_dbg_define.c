
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ unichar ;
typedef int FILE ;


 char* convert_unicode_to_ACP (scalar_t__ const*) ;
 int fprintf (int *,char*,...) ;
 int unichar_len (scalar_t__ const*) ;
 int unicode_print (int *,scalar_t__ const*,int ) ;

__attribute__((used)) static void
write_dbg_define (FILE *fp, const unichar *sym_name, const unichar *typecast)
{
  char *sym;

  if (!sym_name || sym_name[0] == 0)
    return;
  sym = convert_unicode_to_ACP (sym_name);
  fprintf (fp, "  {(");
  if (typecast)
    unicode_print (fp, typecast, unichar_len (typecast));
  else
    fprintf (fp, "DWORD");
  fprintf (fp, ") %s, \"%s\" },\n", sym, sym);
}
