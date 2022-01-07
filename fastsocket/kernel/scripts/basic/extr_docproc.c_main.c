
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_SET ;
 void* adddep ;
 void* adddep2 ;
 void* defaultline ;
 void* docsect ;
 void* docsection ;
 int exit (int) ;
 int exitstatus ;
 void* externalfunctions ;
 void* extfunc ;
 int fclose (int *) ;
 int fflush (int ) ;
 void* find_export_symbols ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int fseek (int *,int ,int ) ;
 int * getcwd (int *,int ) ;
 void* getenv (char*) ;
 void* internalfunctions ;
 void* intfunc ;
 int * kernsrctree ;
 void* noaction ;
 void* noaction2 ;
 int parse_file (int *) ;
 int perror (char*) ;
 int printf (char*,...) ;
 void* printline ;
 void* singfunc ;
 void* singlefunctions ;
 int * srctree ;
 int stderr ;
 int stdout ;
 scalar_t__ strcmp (char*,char*) ;
 void* symbolsonly ;
 int usage () ;

int main(int argc, char *argv[])
{
 FILE * infile;

 srctree = getenv("SRCTREE");
 if (!srctree)
  srctree = getcwd(((void*)0), 0);
 kernsrctree = getenv("KBUILD_SRC");
 if (!kernsrctree || !*kernsrctree)
  kernsrctree = srctree;
 if (argc != 3) {
  usage();
  exit(1);
 }

 infile = fopen(argv[2], "r");
        if (infile == ((void*)0)) {
                fprintf(stderr, "docproc: ");
                perror(argv[2]);
                exit(2);
        }

 if (strcmp("doc", argv[1]) == 0)
 {
  defaultline = noaction;
  internalfunctions = find_export_symbols;
  externalfunctions = find_export_symbols;
  symbolsonly = find_export_symbols;
  singlefunctions = noaction2;
  docsection = noaction2;
  parse_file(infile);


  fseek(infile, 0, SEEK_SET);
  defaultline = printline;
  internalfunctions = intfunc;
  externalfunctions = extfunc;
  symbolsonly = printline;
  singlefunctions = singfunc;
  docsection = docsect;

  parse_file(infile);
 }
 else if (strcmp("depend", argv[1]) == 0)
 {


  printf("%s\t", argv[2]);
  defaultline = noaction;
  internalfunctions = adddep;
  externalfunctions = adddep;
  symbolsonly = adddep;
  singlefunctions = adddep2;
  docsection = adddep2;
  parse_file(infile);
  printf("\n");
 }
 else
 {
  fprintf(stderr, "Unknown option: %s\n", argv[1]);
  exit(1);
 }
 fclose(infile);
 fflush(stdout);
 return exitstatus;
}
