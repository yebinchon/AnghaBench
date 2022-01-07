
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ unichar ;
typedef scalar_t__ rc_uint_type ;
typedef int mc_node_lang ;
typedef int FILE ;


 char* convert_unicode_to_ACP (scalar_t__ const*) ;
 int fprintf (int *,char*,...) ;
 scalar_t__ mcset_out_values_are_decimal ;

__attribute__((used)) static void
write_header_define (FILE *fp, const unichar *sym_name, rc_uint_type vid, const unichar *typecast, mc_node_lang *nl)
{
  char *sym;
  char *tdef = ((void*)0);

  if (!sym_name || sym_name[0] == 0)
    {
      if (nl != ((void*)0))
 {
   if (mcset_out_values_are_decimal)
     fprintf (fp, "//\n// MessageId: 0x%lu\n//\n", (unsigned long) vid);
   else
     fprintf (fp, "//\n// MessageId: 0x%lx\n//\n", (unsigned long) vid);
 }
      return;
    }
  sym = convert_unicode_to_ACP (sym_name);
  if (typecast && typecast[0] != 0)
    tdef = convert_unicode_to_ACP (typecast);
  fprintf (fp, "//\n// MessageId: %s\n//\n", sym);
  if (! mcset_out_values_are_decimal)
    fprintf (fp, "#define %s %s%s%s 0x%lx\n\n", sym,
      (tdef ? "(" : ""), (tdef ? tdef : ""), (tdef ? ")" : ""),
    (unsigned long) vid);
  else
    fprintf (fp, "#define %s %s%s%s 0x%lu\n\n", sym,
      (tdef ? "(" : ""), (tdef ? tdef : ""), (tdef ? ")" : ""),
    (unsigned long) vid);
}
