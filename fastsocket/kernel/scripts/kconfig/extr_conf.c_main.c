
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;
struct stat {int dummy; } ;


 int LC_ALL ;
 int LOCALEDIR ;
 int PACKAGE ;
 int S_DEF_USER ;
 char* _ (char*) ;



 int bindtextdomain (int ,int ) ;
 int check_conf (int *) ;
 int conf (int *) ;
 int conf_cnt ;
 scalar_t__ conf_get_changed () ;
 char* conf_get_configname () ;
 char* conf_get_default_confname () ;
 int conf_parse (char const*) ;
 int conf_read (char*) ;
 int conf_read_simple (char const*,int ) ;
 int conf_set_all_new_symbols (int ) ;
 scalar_t__ conf_write (int *) ;
 scalar_t__ conf_write_autoconf () ;
 int def_default ;
 int def_mod ;
 int def_no ;
 int def_random ;
 int def_yes ;
 char* defconfig_file ;


 int exit (int) ;
 int fprintf (int ,char*,...) ;
 char* getenv (char*) ;
 int getopt (int,char**,char*) ;
 int gettimeofday (struct timeval*,int *) ;
 int input_mode ;
 scalar_t__ isatty (int) ;
 char* optarg ;
 int optind ;
 int printf (char*,...) ;
 int return_value ;
 int * rootEntry ;
 int rootmenu ;





 int setlocale (int ,char*) ;
 int srand (unsigned int) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int stderr ;
 int sync_kconfig ;
 int textdomain (int ) ;
 int valid_stdin ;

int main(int ac, char **av)
{
 int opt;
 const char *name;
 struct stat tmpstat;

 setlocale(LC_ALL, "");
 bindtextdomain(PACKAGE, LOCALEDIR);
 textdomain(PACKAGE);

  while ((opt = getopt(ac, av, "osbBdD:nmyrh")) != -1) {
  switch (opt) {
  case 'o':
   input_mode = 135;
   break;
  case 's':
   input_mode = 135;
   sync_kconfig = 1;
   break;
  case 'b':
   input_mode = 134;
   break;
  case 'B':
   input_mode = 133;
   break;
  case 'd':
   input_mode = 132;
   break;
  case 'D':
   input_mode = 132;
   defconfig_file = optarg;
   break;
  case 'n':
   input_mode = 130;
   break;
  case 'm':
   input_mode = 131;
   break;
  case 'y':
   input_mode = 128;
   break;
  case 'r':
  {
   struct timeval now;
   unsigned int seed;





   gettimeofday(&now, ((void*)0));

   seed = (unsigned int)((now.tv_sec + 1) * (now.tv_usec + 1));
   srand(seed);

   input_mode = 129;
   break;
  }
  case 'h':
   printf(_("See README for usage info\n"));
   exit(0);
   break;
  default:
   fprintf(stderr, _("See README for usage info\n"));
   exit(1);
  }
 }
 if (ac == optind) {
  printf(_("%s: Kconfig file missing\n"), av[0]);
  exit(1);
 }
 name = av[optind];
 conf_parse(name);

 if (sync_kconfig) {
  name = conf_get_configname();
  if (stat(name, &tmpstat)) {
   fprintf(stderr, _("***\n"
    "*** You have not yet configured your kernel!\n"
    "*** (missing kernel config file \"%s\")\n"
    "***\n"
    "*** Please run some configurator (e.g. \"make oldconfig\" or\n"
    "*** \"make menuconfig\" or \"make xconfig\").\n"
    "***\n"), name);
   exit(1);
  }
 }

 switch (input_mode) {
 case 132:
  if (!defconfig_file)
   defconfig_file = conf_get_default_confname();
  if (conf_read(defconfig_file)) {
   printf(_("***\n"
    "*** Can't find default configuration \"%s\"!\n"
    "***\n"), defconfig_file);
   exit(1);
  }
  break;
 case 135:
 case 137:
 case 136:
 case 134:
 case 133:
  conf_read(((void*)0));
  break;
 case 130:
 case 131:
 case 128:
 case 129:
  name = getenv("KCONFIG_ALLCONFIG");
  if (name && !stat(name, &tmpstat)) {
   conf_read_simple(name, S_DEF_USER);
   break;
  }
  switch (input_mode) {
  case 130: name = "allno.config"; break;
  case 131: name = "allmod.config"; break;
  case 128: name = "allyes.config"; break;
  case 129: name = "allrandom.config"; break;
  default: break;
  }
  if (!stat(name, &tmpstat))
   conf_read_simple(name, S_DEF_USER);
  else if (!stat("all.config", &tmpstat))
   conf_read_simple("all.config", S_DEF_USER);
  break;
 default:
  break;
 }

 if (sync_kconfig) {
  if (conf_get_changed()) {
   name = getenv("KCONFIG_NOSILENTUPDATE");
   if (name && *name) {
    fprintf(stderr,
     _("\n*** Kernel configuration requires explicit update.\n\n"));
    return 1;
   }
  }
  valid_stdin = isatty(0) && isatty(1) && isatty(2);
 }

 switch (input_mode) {
 case 130:
  conf_set_all_new_symbols(def_no);
  break;
 case 128:
  conf_set_all_new_symbols(def_yes);
  break;
 case 131:
  conf_set_all_new_symbols(def_mod);
  break;
 case 129:
  conf_set_all_new_symbols(def_random);
  break;
 case 132:
  conf_set_all_new_symbols(def_default);
  break;
 case 136:
 case 137:
  rootEntry = &rootmenu;
  conf(&rootmenu);
  input_mode = 135;

 case 134:
 case 133:
 case 135:

  do {
   conf_cnt = 0;
   check_conf(&rootmenu);
  } while (conf_cnt &&
    (input_mode != 134 &&
     input_mode != 133));
  break;
 }

 if (sync_kconfig) {



  if (conf_get_changed() && conf_write(((void*)0))) {
   fprintf(stderr, _("\n*** Error during writing of the kernel configuration.\n\n"));
   exit(1);
  }
  if (conf_write_autoconf()) {
   fprintf(stderr, _("\n*** Error during update of the kernel configuration.\n\n"));
   return 1;
  }
 } else {
  if (conf_write(((void*)0))) {
   fprintf(stderr, _("\n*** Error during writing of the kernel configuration.\n\n"));
   exit(1);
  }
 }
 return return_value;
}
