
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct diff_block {int dummy; } ;
struct diff3_block {int dummy; } ;



 int EISDIR ;
 int EXIT_SUCCESS ;
 int EXIT_TROUBLE ;
 size_t FILE0 ;
 size_t FILE1 ;
 size_t FILEC ;

 int LC_ALL ;
 int LOCALEDIR ;
 int PACKAGE ;
 int PACKAGE_NAME ;
 int PACKAGE_VERSION ;
 int SIGCHLD ;
 int SIG_DFL ;

 scalar_t__ S_ISDIR (int ) ;
 int bindtextdomain (int ,int ) ;
 int c_stack_action (int ) ;
 int check_stdout () ;
 void* diff_program ;
 int edscript ;
 int error (int ,int ,char*,char*) ;
 int exit (int) ;
 int exit_failure ;
 int fatal (char*) ;
 scalar_t__ ferror (int ) ;
 int finalwrite ;
 int flagging ;
 int freopen (char*,char*,int ) ;
 int getopt_long (int,char**,char*,int ,int ) ;
 int initial_tab ;
 int initialize_main (int*,char***) ;
 int longopts ;
 struct diff3_block* make_3way_diff (struct diff_block*,struct diff_block*) ;
 int merge ;
 void* optarg ;
 int optind ;
 int output_diff3 (int ,struct diff3_block*,int*,int*) ;
 int output_diff3_edscript (int ,struct diff3_block*,int*,int*,char*,char*,char*) ;
 int output_diff3_merge (int ,int ,struct diff3_block*,int*,int*,char*,char*,char*) ;
 int overlap_only ;
 int perror_with_exit (char*) ;
 struct diff_block* process_diff (char*,char*,struct diff_block**) ;
 char* program_name ;
 int setlocale (int ,char*) ;
 int show_2nd ;
 int signal (int ,int ) ;
 int simple_only ;
 scalar_t__ stat (char*,struct stat*) ;
 int stdin ;
 int stdout ;
 scalar_t__ strcmp (char*,char*) ;
 int strip_trailing_cr ;
 int text ;
 int textdomain (int ) ;
 int try_help (char*,char*) ;
 int usage () ;
 int version_etc (int ,char*,int ,int ,char*,char*) ;

int
main (int argc, char **argv)
{
  int c, i;
  int common;
  int mapping[3];
  int rev_mapping[3];
  int incompat = 0;
  bool conflicts_found;
  struct diff_block *thread0, *thread1, *last_block;
  struct diff3_block *diff3;
  int tag_count = 0;
  char *tag_strings[3];
  char *commonname;
  char **file;
  struct stat statb;

  exit_failure = 2;
  initialize_main (&argc, &argv);
  program_name = argv[0];
  setlocale (LC_ALL, "");
  bindtextdomain (PACKAGE, LOCALEDIR);
  textdomain (PACKAGE);
  c_stack_action (0);

  while ((c = getopt_long (argc, argv, "aeimvx3AEL:TX", longopts, 0)) != -1)
    {
      switch (c)
 {
 case 'a':
   text = 1;
   break;
 case 'A':
   show_2nd = 1;
   flagging = 1;
   incompat++;
   break;
 case 'x':
   overlap_only = 1;
   incompat++;
   break;
 case '3':
   simple_only = 1;
   incompat++;
   break;
 case 'i':
   finalwrite = 1;
   break;
 case 'm':
   merge = 1;
   break;
 case 'X':
   overlap_only = 1;

 case 'E':
   flagging = 1;

 case 'e':
   incompat++;
   break;
 case 'T':
   initial_tab = 1;
   break;
 case 128:
   strip_trailing_cr = 1;
   break;
 case 'v':
   version_etc (stdout, "diff3", PACKAGE_NAME, PACKAGE_VERSION,
         "Randy Smith", (char *) 0);
   check_stdout ();
   return EXIT_SUCCESS;
 case 130:
   diff_program = optarg;
   break;
 case 129:
   usage ();
   check_stdout ();
   return EXIT_SUCCESS;
 case 'L':

   if (tag_count < 3)
     {
       tag_strings[tag_count++] = optarg;
       break;
     }
   try_help ("too many file label options", 0);
 default:
   try_help (0, 0);
 }
    }

  edscript = incompat & ~merge;
  show_2nd |= ~incompat & merge;
  flagging |= ~incompat & merge;

  if (incompat > 1
      || finalwrite & merge
      || (tag_count && ! flagging))
    try_help ("incompatible options", 0);

  if (argc - optind != 3)
    {
      if (argc - optind < 3)
 try_help ("missing operand after `%s'", argv[argc - 1]);
      else
 try_help ("extra operand `%s'", argv[optind + 3]);
    }

  file = &argv[optind];

  for (i = tag_count; i < 3; i++)
    tag_strings[i] = file[i];
  common = 2 - (edscript | merge);

  if (strcmp (file[common], "-") == 0)
    {



      common = 3 - common;
      if (strcmp (file[0], "-") == 0 || strcmp (file[common], "-") == 0)
 fatal ("`-' specified for more than one input file");
    }

  mapping[0] = 0;
  mapping[1] = 3 - common;
  mapping[2] = common;

  for (i = 0; i < 3; i++)
    rev_mapping[mapping[i]] = i;

  for (i = 0; i < 3; i++)
    if (strcmp (file[i], "-") != 0)
      {
 if (stat (file[i], &statb) < 0)
   perror_with_exit (file[i]);
 else if (S_ISDIR (statb.st_mode))
   error (EXIT_TROUBLE, EISDIR, "%s", file[i]);
      }
  commonname = file[rev_mapping[FILEC]];
  thread1 = process_diff (file[rev_mapping[FILE1]], commonname, &last_block);
  thread0 = process_diff (file[rev_mapping[FILE0]], commonname, &last_block);
  diff3 = make_3way_diff (thread0, thread1);
  if (edscript)
    conflicts_found
      = output_diff3_edscript (stdout, diff3, mapping, rev_mapping,
          tag_strings[0], tag_strings[1], tag_strings[2]);
  else if (merge)
    {
      if (! freopen (file[rev_mapping[FILE0]], "r", stdin))
 perror_with_exit (file[rev_mapping[FILE0]]);
      conflicts_found
 = output_diff3_merge (stdin, stdout, diff3, mapping, rev_mapping,
         tag_strings[0], tag_strings[1], tag_strings[2]);
      if (ferror (stdin))
 fatal ("read failed");
    }
  else
    {
      output_diff3 (stdout, diff3, mapping, rev_mapping);
      conflicts_found = 0;
    }

  check_stdout ();
  exit (conflicts_found);
  return conflicts_found;
}
