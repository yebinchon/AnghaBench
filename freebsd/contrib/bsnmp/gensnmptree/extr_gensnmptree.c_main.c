
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int dummy; } ;
typedef enum op { ____Placeholder_op } op ;
typedef enum gen_funcs { ____Placeholder_gen_funcs } gen_funcs ;
typedef int FILE ;


 int EOF ;
 int GEN_FUNCS_C ;
 int GEN_FUNCS_H ;
 int GEN_FUNCS_NONE ;
 scalar_t__ MAXPATHLEN ;




 int TOK_EOF ;
 int check_tree (struct node*) ;
 int debug ;
 int err (int,char*,char*) ;
 int errx (int,char*,...) ;
 int exit (int ) ;
 char* file_prefix ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*) ;
 int gen_extract (int ,struct node*,char*) ;
 int gen_tree (struct node*,int ) ;
 int getopt (int,char**,char*) ;
 int gettoken () ;
 int input_new (int *,int *,char*) ;
 int localincs ;
 int make_enums (int,char**,int) ;
 int make_table (struct node*,int) ;
 int merge (struct node**,struct node*) ;
 char* optarg ;
 scalar_t__ optind ;
 struct node* parse_top (int) ;
 int path_new (char*) ;
 int stderr ;
 int * stdin ;
 int stdout ;
 scalar_t__ strlen (char*) ;
 char* usgtxt ;

int
main(int argc, char *argv[])
{
 enum op op = 129;
 enum gen_funcs gen_funcs = GEN_FUNCS_NONE;

 char *infile = ((void*)0);

 int opt;
 while ((opt = getopt(argc, argv, "dEeFfhI:i:lp:t")) != EOF)
  switch (opt) {

    case 'd':
   debug = 1;
   break;

    case 'E':
   if (op != 129 && op != 131)
    errx(1, "-E conflicts with earlier options");
   op = 131;
   break;

    case 'e':
   if (op != 129 && op != 130)
    errx(1, "-e conflicts with earlier options");
   op = 130;
   break;

    case 'F':
   if (gen_funcs != GEN_FUNCS_NONE &&
       gen_funcs != GEN_FUNCS_C)
    errx(1, "-F conflicts with -f");
   gen_funcs = GEN_FUNCS_C;
   break;

    case 'f':
   if (gen_funcs != GEN_FUNCS_NONE &&
       gen_funcs != GEN_FUNCS_H)
    errx(1, "-f conflicts with -F");
   gen_funcs = GEN_FUNCS_H;
   break;

    case 'h':
   fprintf(stderr, "%s", usgtxt);
   exit(0);

    case 'I':
   path_new(optarg);
   break;

    case 'i':
   infile = optarg;
   break;

    case 'l':
   localincs = 1;
   break;

    case 'p':
   file_prefix = optarg;
   if (strlen(file_prefix) + strlen("tree.c") >
       MAXPATHLEN)
    errx(1, "prefix too long");
   break;

    case 't':
   if (op != 129 && op != 128)
    errx(1, "-t conflicts with earlier options");
   op = 128;
   break;
  }

 argc -= optind;
 argv += optind;


 if (infile == ((void*)0)) {
  input_new(stdin, ((void*)0), "<stdin>");
 } else {
  FILE *fp;
  if ((fp = fopen(infile, "r")) == ((void*)0))
   err(1, "%s", infile);
  input_new(fp, ((void*)0), infile);
 }


 struct node *root = parse_top(gettoken());

 int tok;
 while ((tok = gettoken()) != TOK_EOF)
  merge(&root, parse_top(tok));

 if (root)
  check_tree(root);


 switch (op) {

   case 130:
  if (argc == 0)
   errx(1, "-e requires arguments");

  for (int i = 0; i < argc; i++)
   if (gen_extract(stdout, root, argv[i]))
    errx(1, "object not found: %s", argv[i]);
  return (0);

   case 131:
  make_enums(argc, argv, gen_funcs);
  return (0);

   case 128:
  if (argc != 0)
   errx(1, "-t allows no arguments");
  gen_tree(root, 0);
  return (0);

   case 129:
  if (argc != 0)
   errx(1, "tree generation allows no arguments");
  make_table(root, gen_funcs == GEN_FUNCS_H);
  return (0);
 }
}
