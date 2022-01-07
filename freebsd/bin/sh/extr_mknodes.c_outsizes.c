
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* tag; } ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;
 TYPE_1__** nodestr ;
 int ntypes ;

__attribute__((used)) static void
outsizes(FILE *cfile)
{
 int i;

 fprintf(cfile, "static const short nodesize[%d] = {\n", ntypes);
 for (i = 0 ; i < ntypes ; i++) {
  fprintf(cfile, "      ALIGN(sizeof (struct %s)),\n", nodestr[i]->tag);
 }
 fprintf(cfile, "};\n");
}
