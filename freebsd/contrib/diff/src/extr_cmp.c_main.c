
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int word ;
typedef scalar_t__ uintmax_t ;
struct stat {scalar_t__ st_size; int st_mode; } ;
typedef scalar_t__ off_t ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int EXIT_TROUBLE ;

 int LC_ALL ;
 int LOCALEDIR ;
 int LONGINT_OK ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 int NULL_DEVICE ;
 int O_RDONLY ;
 int PACKAGE ;
 int PACKAGE_NAME ;
 int PACKAGE_VERSION ;
 scalar_t__ PTRDIFF_MAX ;
 int STAT_BLOCKSIZE (struct stat) ;
 scalar_t__ STDIN_FILENO ;
 scalar_t__ STDOUT_FILENO ;
 scalar_t__ S_ISREG (int ) ;
 int _ (char*) ;
 int bindtextdomain (int ,int ) ;
 int buf_size ;
 scalar_t__* buffer ;
 int buffer_lcm (int ,int ,scalar_t__) ;
 scalar_t__ bytes ;
 int c_stack_action (int ) ;
 int check_stdout () ;
 scalar_t__ close (scalar_t__) ;
 int cmp () ;
 scalar_t__ comparison_type ;
 int errno ;
 int error (int,int ,char*,char*) ;
 int exit (int) ;
 int exit_failure ;
 char** file ;
 scalar_t__* file_desc ;
 scalar_t__ file_name_cmp (char*,char*) ;
 scalar_t__ file_position (int) ;
 scalar_t__ fstat (scalar_t__,struct stat*) ;
 int getopt_long (int,char**,char*,int ,int ) ;
 scalar_t__* ignore_initial ;
 int initialize_main (int*,char***) ;
 int long_options ;
 scalar_t__ open (char*,int ,int ) ;
 int opt_print_bytes ;
 char* optarg ;
 int optind ;
 char* program_name ;
 scalar_t__ same_file (struct stat*,struct stat*) ;
 scalar_t__ same_file_attributes (struct stat*,struct stat*) ;
 int set_binary_mode (scalar_t__,int) ;
 int setlocale (int ,char*) ;
 int specify_comparison_type (scalar_t__) ;
 int specify_ignore_initial (int,char**,char) ;
 scalar_t__ stat (int ,struct stat*) ;
 struct stat* stat_buf ;
 int stdout ;
 scalar_t__ strcmp (char*,char*) ;
 int textdomain (int ) ;
 int try_help (char*,char*) ;
 scalar_t__ type_all_diffs ;
 scalar_t__ type_status ;
 int usage () ;
 int valid_suffixes ;
 int version_etc (int ,char*,int ,int ,int ,char*,char*) ;
 scalar_t__ xmalloc (int) ;
 int xstrtoumax (char*,int ,int ,scalar_t__*,int ) ;

int
main (int argc, char **argv)
{
  int c, f, exit_status;
  size_t words_per_buffer;

  exit_failure = EXIT_TROUBLE;
  initialize_main (&argc, &argv);
  program_name = argv[0];
  setlocale (LC_ALL, "");
  bindtextdomain (PACKAGE, LOCALEDIR);
  textdomain (PACKAGE);
  c_stack_action (0);



  while ((c = getopt_long (argc, argv, "bci:ln:sv", long_options, 0))
  != -1)
    switch (c)
      {
      case 'b':
      case 'c':
 opt_print_bytes = 1;
 break;

      case 'i':
 specify_ignore_initial (0, &optarg, ':');
 if (*optarg++ == ':')
   specify_ignore_initial (1, &optarg, 0);
 else if (ignore_initial[1] < ignore_initial[0])
   ignore_initial[1] = ignore_initial[0];
 break;

      case 'l':
 specify_comparison_type (type_all_diffs);
 break;

      case 'n':
 {
   uintmax_t n;
   if (xstrtoumax (optarg, 0, 0, &n, valid_suffixes) != LONGINT_OK)
     try_help ("invalid --bytes value `%s'", optarg);
   if (n < bytes)
     bytes = n;
 }
 break;

      case 's':
 specify_comparison_type (type_status);
 break;

      case 'v':



 version_etc (stdout, "cmp", PACKAGE_NAME, PACKAGE_VERSION,
       _("Torbjorn Granlund"), "David MacKenzie", (char *) 0);
 check_stdout ();
 return EXIT_SUCCESS;

      case 128:
 usage ();
 check_stdout ();
 return EXIT_SUCCESS;

      default:
 try_help (0, 0);
      }

  if (optind == argc)
    try_help ("missing operand after `%s'", argv[argc - 1]);

  file[0] = argv[optind++];
  file[1] = optind < argc ? argv[optind++] : "-";

  for (f = 0; f < 2 && optind < argc; f++)
    {
      char *arg = argv[optind++];
      specify_ignore_initial (f, &arg, 0);
    }

  if (optind < argc)
    try_help ("extra operand `%s'", argv[optind]);

  for (f = 0; f < 2; f++)
    {


      int f1 = f ^ (strcmp (file[1], "-") == 0);



      if (f && ignore_initial[0] == ignore_initial[1]
   && file_name_cmp (file[0], file[1]) == 0)
 return EXIT_SUCCESS;

      file_desc[f1] = (strcmp (file[f1], "-") == 0
         ? STDIN_FILENO
         : open (file[f1], O_RDONLY, 0));
      if (file_desc[f1] < 0 || fstat (file_desc[f1], stat_buf + f1) != 0)
 {
   if (file_desc[f1] < 0 && comparison_type == type_status)
     exit (EXIT_TROUBLE);
   else
     error (EXIT_TROUBLE, errno, "%s", file[f1]);
 }

      set_binary_mode (file_desc[f1], 1);
    }




  if (0 < same_file (&stat_buf[0], &stat_buf[1])
      && same_file_attributes (&stat_buf[0], &stat_buf[1])
      && file_position (0) == file_position (1))
    return EXIT_SUCCESS;



  if (comparison_type != type_status)
    {
      struct stat outstat, nullstat;

      if (fstat (STDOUT_FILENO, &outstat) == 0
   && stat (NULL_DEVICE, &nullstat) == 0
   && 0 < same_file (&outstat, &nullstat))
 comparison_type = type_status;
    }






  if (comparison_type == type_status
      && S_ISREG (stat_buf[0].st_mode)
      && S_ISREG (stat_buf[1].st_mode))
    {
      off_t s0 = stat_buf[0].st_size - file_position (0);
      off_t s1 = stat_buf[1].st_size - file_position (1);
      if (s0 < 0)
 s0 = 0;
      if (s1 < 0)
 s1 = 0;
      if (s0 != s1 && MIN (s0, s1) < bytes)
 exit (EXIT_FAILURE);
    }



  buf_size = buffer_lcm (STAT_BLOCKSIZE (stat_buf[0]),
    STAT_BLOCKSIZE (stat_buf[1]),
    PTRDIFF_MAX - sizeof (word));



  words_per_buffer = (buf_size + 2 * sizeof (word) - 1) / sizeof (word);
  buffer[0] = xmalloc (2 * sizeof (word) * words_per_buffer);
  buffer[1] = buffer[0] + words_per_buffer;

  exit_status = cmp ();

  for (f = 0; f < 2; f++)
    if (close (file_desc[f]) != 0)
      error (EXIT_TROUBLE, errno, "%s", file[f]);
  if (exit_status != 0 && comparison_type != type_status)
    check_stdout ();
  exit (exit_status);
  return exit_status;
}
