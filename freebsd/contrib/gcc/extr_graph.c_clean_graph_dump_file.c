
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* alloca (size_t) ;
 int fatal_error (char*,char*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fputs (char*,int *) ;
 int gcc_assert (int) ;
 size_t graph_dump_format ;
 char const** graph_ext ;
 int memcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;
 size_t vcg ;

void
clean_graph_dump_file (const char *base)
{
  size_t namelen = strlen (base);
  size_t extlen = strlen (graph_ext[graph_dump_format]) + 1;
  char *buf = alloca (namelen + extlen);
  FILE *fp;

  memcpy (buf, base, namelen);
  memcpy (buf + namelen, graph_ext[graph_dump_format], extlen);

  fp = fopen (buf, "w");

  if (fp == ((void*)0))
    fatal_error ("can't open %s: %m", buf);

  gcc_assert (graph_dump_format == vcg);
  fputs ("graph: {\nport_sharing: no\n", fp);

  fclose (fp);
}
