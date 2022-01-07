
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct str {int nfields; char* tag; struct field* field; } ;
struct field {int type; char* name; } ;
typedef int FILE ;







 int fprintf (int *,char*,char*,...) ;
 int fputs (char*,int *) ;
 int indent (int,int *) ;
 char** nodename ;
 struct str** nodestr ;
 size_t nstr ;
 int ntypes ;
 struct str* str ;

__attribute__((used)) static void
outfunc(FILE *cfile, int calcsize)
{
 struct str *sp;
 struct field *fp;
 int i;

 fputs("      if (n == NULL)\n", cfile);
 if (calcsize)
  fputs("	    return;\n", cfile);
 else
  fputs("	    return NULL;\n", cfile);
 if (calcsize)
  fputs("      result->blocksize += nodesize[n->type];\n", cfile);
 else {
  fputs("      new = state->block;\n", cfile);
  fputs("      state->block = (char *)state->block + nodesize[n->type];\n", cfile);
 }
 fputs("      switch (n->type) {\n", cfile);
 for (sp = str ; sp < &str[nstr] ; sp++) {
  for (i = 0 ; i < ntypes ; i++) {
   if (nodestr[i] == sp)
    fprintf(cfile, "      case %s:\n", nodename[i]);
  }
  for (i = sp->nfields ; --i >= 1 ; ) {
   fp = &sp->field[i];
   switch (fp->type) {
   case 131:
    if (calcsize) {
     indent(12, cfile);
     fprintf(cfile, "calcsize(n->%s.%s, result);\n",
      sp->tag, fp->name);
    } else {
     indent(12, cfile);
     fprintf(cfile, "new->%s.%s = copynode(n->%s.%s, state);\n",
      sp->tag, fp->name, sp->tag, fp->name);
    }
    break;
   case 130:
    if (calcsize) {
     indent(12, cfile);
     fprintf(cfile, "sizenodelist(n->%s.%s, result);\n",
      sp->tag, fp->name);
    } else {
     indent(12, cfile);
     fprintf(cfile, "new->%s.%s = copynodelist(n->%s.%s, state);\n",
      sp->tag, fp->name, sp->tag, fp->name);
    }
    break;
   case 128:
    if (calcsize) {
     indent(12, cfile);
     fprintf(cfile, "result->stringsize += strlen(n->%s.%s) + 1;\n",
      sp->tag, fp->name);
    } else {
     indent(12, cfile);
     fprintf(cfile, "new->%s.%s = nodesavestr(n->%s.%s, state);\n",
      sp->tag, fp->name, sp->tag, fp->name);
    }
    break;
   case 132:
   case 129:
    if (! calcsize) {
     indent(12, cfile);
     fprintf(cfile, "new->%s.%s = n->%s.%s;\n",
      sp->tag, fp->name, sp->tag, fp->name);
    }
    break;
   }
  }
  indent(12, cfile);
  fputs("break;\n", cfile);
 }
 fputs("      };\n", cfile);
 if (! calcsize)
  fputs("      new->type = n->type;\n", cfile);
}
