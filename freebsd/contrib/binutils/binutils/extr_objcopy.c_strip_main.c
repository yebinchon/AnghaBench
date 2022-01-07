
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct section_list {void* remove; } ;
typedef void* bfd_boolean ;


 int EOF ;
 void* FALSE ;
 scalar_t__ LOCALS_ALL ;
 scalar_t__ LOCALS_START_L ;
 scalar_t__ LOCALS_UNDEF ;




 scalar_t__ STRIP_ALL ;
 scalar_t__ STRIP_DEBUG ;
 scalar_t__ STRIP_NONDEBUG ;
 scalar_t__ STRIP_UNDEF ;
 scalar_t__ STRIP_UNNEEDED ;
 void* TRUE ;
 int _ (char*) ;
 int add_specific_symbol (char*,int **) ;
 int copy_file (char*,char*,char*,char*) ;
 scalar_t__ discard_locals ;
 int display_info () ;
 struct section_list* find_section_list (char*,void*) ;
 int free (char*) ;
 int get_file_size (char*) ;
 int getopt_long (int,char**,char*,int ,int*) ;
 int keep_file_symbols ;
 int * keep_specific_list ;
 char* make_tempname (char*) ;
 int non_fatal (int ,char*) ;
 char* optarg ;
 int optind ;
 void* preserve_dates ;
 int print_version (char*) ;
 void* sections_removed ;
 int set_times (char*,struct stat*) ;
 int smart_rename (char*,char*,void*) ;
 int stat (char*,struct stat*) ;
 int status ;
 int stderr ;
 int stdout ;
 scalar_t__ strcmp (char*,char*) ;
 int strip_options ;
 int * strip_specific_list ;
 scalar_t__ strip_symbols ;
 int strip_usage (int ,int) ;
 int unlink_if_ordinary (char*) ;
 void* verbose ;
 void* wildcard ;

__attribute__((used)) static int
strip_main (int argc, char *argv[])
{
  char *input_target = ((void*)0);
  char *output_target = ((void*)0);
  bfd_boolean show_version = FALSE;
  bfd_boolean formats_info = FALSE;
  int c;
  int i;
  struct section_list *p;
  char *output_file = ((void*)0);

  while ((c = getopt_long (argc, argv, "I:O:F:K:N:R:o:sSpdgxXHhVvw",
      strip_options, (int *) 0)) != EOF)
    {
      switch (c)
 {
 case 'I':
   input_target = optarg;
   break;
 case 'O':
   output_target = optarg;
   break;
 case 'F':
   input_target = output_target = optarg;
   break;
 case 'R':
   p = find_section_list (optarg, TRUE);
   p->remove = TRUE;
   sections_removed = TRUE;
   break;
 case 's':
   strip_symbols = STRIP_ALL;
   break;
 case 'S':
 case 'g':
 case 'd':
   strip_symbols = STRIP_DEBUG;
   break;
 case 128:
   strip_symbols = STRIP_UNNEEDED;
   break;
 case 'K':
   add_specific_symbol (optarg, &keep_specific_list);
   break;
 case 'N':
   add_specific_symbol (optarg, &strip_specific_list);
   break;
 case 'o':
   output_file = optarg;
   break;
 case 'p':
   preserve_dates = TRUE;
   break;
 case 'x':
   discard_locals = LOCALS_ALL;
   break;
 case 'X':
   discard_locals = LOCALS_START_L;
   break;
 case 'v':
   verbose = TRUE;
   break;
 case 'V':
   show_version = TRUE;
   break;
 case 131:
   formats_info = TRUE;
   break;
 case 129:
   strip_symbols = STRIP_NONDEBUG;
   break;
 case 130:
   keep_file_symbols = 1;
   break;
 case 0:

   break;
 case 'w':
   wildcard = TRUE;
   break;
 case 'H':
 case 'h':
   strip_usage (stdout, 0);
 default:
   strip_usage (stderr, 1);
 }
    }

  if (formats_info)
    {
      display_info ();
      return 0;
    }

  if (show_version)
    print_version ("strip");


  if (strip_symbols == STRIP_UNDEF
      && discard_locals == LOCALS_UNDEF
      && strip_specific_list == ((void*)0))
    strip_symbols = STRIP_ALL;

  if (output_target == ((void*)0))
    output_target = input_target;

  i = optind;
  if (i == argc
      || (output_file != ((void*)0) && (i + 1) < argc))
    strip_usage (stderr, 1);

  for (; i < argc; i++)
    {
      int hold_status = status;
      struct stat statbuf;
      char *tmpname;

      if (get_file_size (argv[i]) < 1)
 {
   status = 1;
   continue;
 }

      if (preserve_dates)


 stat (argv[i], &statbuf);

      if (output_file == ((void*)0) || strcmp (argv[i], output_file) == 0)
 tmpname = make_tempname (argv[i]);
      else
 tmpname = output_file;

      if (tmpname == ((void*)0))
 {
   non_fatal (_("could not create temporary file to hold stripped copy of '%s'"),
       argv[i]);
   status = 1;
   continue;
 }

      status = 0;
      copy_file (argv[i], tmpname, input_target, output_target);
      if (status == 0)
 {
   if (preserve_dates)
     set_times (tmpname, &statbuf);
   if (output_file != tmpname)
     smart_rename (tmpname, output_file ? output_file : argv[i],
     preserve_dates);
   status = hold_status;
 }
      else
 unlink_if_ordinary (tmpname);
      if (output_file != tmpname)
 free (tmpname);
    }

  return status;
}
