
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int dummy; } ;
typedef int FILE ;


 int MAXPATHLEN ;
 int PREFIX_LEN ;
 int err (int,char*,char*) ;
 int fclose (int *) ;
 char* file_prefix ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 int gen_enums (int *,int) ;
 int gen_header (int *,struct node const*,int ,int *) ;
 int gen_table (int *,struct node const*) ;
 int sprintf (char*,char*,char*) ;
 int tree_size ;

__attribute__((used)) static void
make_table(const struct node *root, int gen_funcs)
{
 FILE *fp;

 char fname[MAXPATHLEN + 1];
 sprintf(fname, "%stree.h", file_prefix);
 if ((fp = fopen(fname, "w")) == ((void*)0))
  err(1, "%s: ", fname);
 gen_header(fp, root, PREFIX_LEN, ((void*)0));

 fprintf(fp, "\n#ifdef SNMPTREE_TYPES\n");
 gen_enums(fp, gen_funcs);
 fprintf(fp, "\n#endif /* SNMPTREE_TYPES */\n\n");

 fprintf(fp, "#define %sCTREE_SIZE %u\n", file_prefix, tree_size);
 fprintf(fp, "extern const struct snmp_node %sctree[];\n", file_prefix);

 fclose(fp);

 sprintf(fname, "%stree.c", file_prefix);
 if ((fp = fopen(fname, "w")) == ((void*)0))
  err(1, "%s: ", fname);
 gen_table(fp, root);
 fclose(fp);
}
