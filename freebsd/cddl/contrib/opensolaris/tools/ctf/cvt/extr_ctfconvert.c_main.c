
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int td_iihash; } ;
typedef TYPE_1__ tdata_t ;


 char* CTF_DEFAULT_LABEL ;
 int CTF_KEEP_STABS ;
 int CTF_LABEL_LASTIDX ;
 int CTF_USE_DYNSYM ;
 int EOF ;
 int R_OK ;
 int SIGINT ;
 int SIGQUIT ;
 int SIGTERM ;
 scalar_t__ access (char*,int ) ;
 void* atoi (char*) ;
 int basename (char*) ;
 void* debug_level ;
 void* debug_parse ;
 int dynsym ;
 int exit (int) ;
 int file_read (TYPE_1__*,char*,int) ;
 int free (char*) ;
 char* getenv (char*) ;
 int getopt (int,char**,char*) ;
 int handle_sig ;
 int iidesc_stats (int ) ;
 char* infile ;
 int merge_into_master (TYPE_1__*,TYPE_1__*,int *,int) ;
 char* mktmpname (char*,char*) ;
 char* optarg ;
 int optind ;
 char* outfile ;
 int progname ;
 scalar_t__ rename (char*,char*) ;
 int set_terminate_cleanup (int ) ;
 int sighold (int ) ;
 int signal (int ,int ) ;
 int sigset (int ,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int tdata_label_add (TYPE_1__*,char const*,int ) ;
 TYPE_1__* tdata_new () ;
 int terminate (char*,char*) ;
 int terminate_cleanup ;
 int usage () ;
 int write_ctf (TYPE_1__*,char*,char*,int) ;

int
main(int argc, char **argv)
{
 tdata_t *filetd, *mstrtd;
 const char *label = ((void*)0);
 int verbose = 0;
 int ignore_non_c = 0;
 int keep_stabs = 0;
 int c;







 progname = basename(argv[0]);

 if (getenv("CTFCONVERT_DEBUG_LEVEL"))
  debug_level = atoi(getenv("CTFCONVERT_DEBUG_LEVEL"));
 if (getenv("CTFCONVERT_DEBUG_PARSE"))
  debug_parse = atoi(getenv("CTFCONVERT_DEBUG_PARSE"));

 while ((c = getopt(argc, argv, ":l:L:o:givs")) != EOF) {
  switch (c) {
  case 'l':
   label = optarg;
   break;
  case 'L':
   if ((label = getenv(optarg)) == ((void*)0))
    label = CTF_DEFAULT_LABEL;
   break;
  case 'o':
   outfile = optarg;
   break;
  case 's':
   dynsym = CTF_USE_DYNSYM;
   break;
  case 'i':
   ignore_non_c = 1;
   break;
  case 'g':
   keep_stabs = CTF_KEEP_STABS;
   break;
  case 'v':
   verbose = 1;
   break;
  default:
   usage();
   exit(2);
  }
 }

 if (getenv("STRIPSTABS_KEEP_STABS") != ((void*)0))
  keep_stabs = CTF_KEEP_STABS;

 if (argc - optind != 1 || label == ((void*)0)) {
  usage();
  exit(2);
 }

 infile = argv[optind];
 if (access(infile, R_OK) != 0)
  terminate("Can't access %s", infile);
 set_terminate_cleanup(terminate_cleanup);






 signal(SIGINT, handle_sig);
 signal(SIGQUIT, handle_sig);
 signal(SIGTERM, handle_sig);


 filetd = tdata_new();

 if (!file_read(filetd, infile, ignore_non_c))
  terminate("%s doesn't have type data to convert\n", infile);

 if (verbose)
  iidesc_stats(filetd->td_iihash);

 mstrtd = tdata_new();
 merge_into_master(filetd, mstrtd, ((void*)0), 1);

 tdata_label_add(mstrtd, label, CTF_LABEL_LASTIDX);






 if (outfile && strcmp(infile, outfile) != 0) {
  write_ctf(mstrtd, infile, outfile, dynsym | keep_stabs);
 } else {
  char *tmpname = mktmpname(infile, ".ctf");
  write_ctf(mstrtd, infile, tmpname, dynsym | keep_stabs);
  if (rename(tmpname, infile) != 0)
   terminate("Couldn't rename temp file %s", tmpname);
  free(tmpname);
 }

 return (0);
}
