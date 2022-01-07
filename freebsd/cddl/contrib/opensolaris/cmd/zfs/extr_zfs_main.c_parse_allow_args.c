
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct allow_opts {int user; int group; int everyone; int create; int set; int local; int descend; int recursive; char* dataset; char* who; int perms; void* prt_perms; scalar_t__ prt_usage; } ;
typedef scalar_t__ boolean_t ;


 void* B_FALSE ;
 void* B_TRUE ;
 int allow_usage (scalar_t__,void*,int *) ;
 int * gettext (char*) ;
 void* munge_args (int,char**,scalar_t__,int,int *) ;
 scalar_t__ strcmp (char*,char*) ;
 int usage (void*) ;

__attribute__((used)) static void
parse_allow_args(int argc, char **argv, boolean_t un, struct allow_opts *opts)
{
 int uge_sum = opts->user + opts->group + opts->everyone;
 int csuge_sum = opts->create + opts->set + uge_sum;
 int ldcsuge_sum = csuge_sum + opts->local + opts->descend;
 int all_sum = un ? ldcsuge_sum + opts->recursive : ldcsuge_sum;

 if (uge_sum > 1)
  allow_usage(un, B_FALSE,
      gettext("-u, -g, and -e are mutually exclusive\n"));

 if (opts->prt_usage) {
  if (argc == 0 && all_sum == 0)
   allow_usage(un, B_TRUE, ((void*)0));
  else
   usage(B_FALSE);
 }

 if (opts->set) {
  if (csuge_sum > 1)
   allow_usage(un, B_FALSE,
       gettext("invalid options combined with -s\n"));

  opts->dataset = munge_args(argc, argv, un, 3, &opts->perms);
  if (argv[0][0] != '@')
   allow_usage(un, B_FALSE,
       gettext("invalid set name: missing '@' prefix\n"));
  opts->who = argv[0];
 } else if (opts->create) {
  if (ldcsuge_sum > 1)
   allow_usage(un, B_FALSE,
       gettext("invalid options combined with -c\n"));
  opts->dataset = munge_args(argc, argv, un, 2, &opts->perms);
 } else if (opts->everyone) {
  if (csuge_sum > 1)
   allow_usage(un, B_FALSE,
       gettext("invalid options combined with -e\n"));
  opts->dataset = munge_args(argc, argv, un, 2, &opts->perms);
 } else if (uge_sum == 0 && argc > 0 && strcmp(argv[0], "everyone")
     == 0) {
  opts->everyone = B_TRUE;
  argc--;
  argv++;
  opts->dataset = munge_args(argc, argv, un, 2, &opts->perms);
 } else if (argc == 1 && !un) {
  opts->prt_perms = B_TRUE;
  opts->dataset = argv[argc-1];
 } else {
  opts->dataset = munge_args(argc, argv, un, 3, &opts->perms);
  opts->who = argv[0];
 }

 if (!opts->local && !opts->descend) {
  opts->local = B_TRUE;
  opts->descend = B_TRUE;
 }
}
