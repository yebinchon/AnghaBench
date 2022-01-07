
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int FILE ;


 scalar_t__ BINFO_TYPE (scalar_t__) ;
 int BINFO_VIRTUAL_P (scalar_t__) ;
 int TDF_SLIM ;
 int TDI_class ;
 int TFF_PLAIN_IDENTIFIER ;
 scalar_t__ TYPE_BINFO (scalar_t__) ;
 int dump_array (int *,scalar_t__) ;
 int * dump_begin (int ,int*) ;
 int dump_end (int ,int *) ;
 int fprintf (int *,char*,...) ;
 char* type_as_string (scalar_t__,int ) ;

__attribute__((used)) static void
dump_vtable (tree t, tree binfo, tree vtable)
{
  int flags;
  FILE *stream = dump_begin (TDI_class, &flags);

  if (!stream)
    return;

  if (!(flags & TDF_SLIM))
    {
      int ctor_vtbl_p = TYPE_BINFO (t) != binfo;

      fprintf (stream, "%s for %s",
        ctor_vtbl_p ? "Construction vtable" : "Vtable",
        type_as_string (BINFO_TYPE (binfo), TFF_PLAIN_IDENTIFIER));
      if (ctor_vtbl_p)
 {
   if (!BINFO_VIRTUAL_P (binfo))
     fprintf (stream, " (0x%lx instance)", (unsigned long)binfo);
   fprintf (stream, " in %s", type_as_string (t, TFF_PLAIN_IDENTIFIER));
 }
      fprintf (stream, "\n");
      dump_array (stream, vtable);
      fprintf (stream, "\n");
    }

  dump_end (TDI_class, stream);
}
