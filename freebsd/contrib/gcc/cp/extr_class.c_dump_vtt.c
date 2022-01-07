
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int FILE ;


 int TDF_SLIM ;
 int TDI_class ;
 int TFF_PLAIN_IDENTIFIER ;
 int dump_array (int *,int ) ;
 int * dump_begin (int ,int*) ;
 int dump_end (int ,int *) ;
 int fprintf (int *,char*,...) ;
 char* type_as_string (int ,int ) ;

__attribute__((used)) static void
dump_vtt (tree t, tree vtt)
{
  int flags;
  FILE *stream = dump_begin (TDI_class, &flags);

  if (!stream)
    return;

  if (!(flags & TDF_SLIM))
    {
      fprintf (stream, "VTT for %s\n",
        type_as_string (t, TFF_PLAIN_IDENTIFIER));
      dump_array (stream, vtt);
      fprintf (stream, "\n");
    }

  dump_end (TDI_class, stream);
}
