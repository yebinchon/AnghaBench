
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef void* uint64_t ;
struct sec_action {int copy; int remove; int rename; char* newname; } ;
struct elfcopy {char* debuglink; char* prefix_alloc; char* prefix_sec; char* prefix_sym; int flags; int strip; int srec_len; void* set_start; void* pad_to; int fill; void* change_start; void* change_addr; } ;
typedef void* int64_t ;


 int DISCARD_LLABEL ;
 int DISCARD_LOCAL ;
 int EXIT_FAILURE ;
 int GAP_FILL ;
 int KEEP_GLOBAL ;
 int LOCALIZE_HIDDEN ;
 int NO_CHANGE_WARN ;
 int PRESERVE_DATE ;
 int SEC_COPY ;
 int SEC_REMOVE ;
 int SET_START ;
 int SREC_FORCE_LEN ;
 int SREC_FORCE_S3 ;
 int STRIP_ALL ;
 int STRIP_DEBUG ;
 int STRIP_DWO ;
 int STRIP_NONDEBUG ;
 int STRIP_NONDWO ;
 int STRIP_UNNEEDED ;
 int SYMOP_GLOBALIZE ;
 int SYMOP_KEEP ;
 int SYMOP_KEEPG ;
 int SYMOP_LOCALIZE ;
 int SYMOP_REDEF ;
 int SYMOP_STRIP ;
 int SYMOP_WEAKEN ;
 int WEAKEN_ALL ;
 int WILDCARD ;
 int add_section (struct elfcopy*,char*) ;
 int add_to_symop_list (struct elfcopy*,char*,char*,int ) ;
 int create_file (struct elfcopy*,char const*,char const*) ;
 int elfcopy_longopts ;
 int elfcopy_usage () ;
 int errx (int ,char*) ;
 int getopt_long (int,char**,char*,int ,int *) ;
 struct sec_action* lookup_sec_act (struct elfcopy*,char*,int) ;
 char* optarg ;
 scalar_t__ optind ;
 int parse_sec_address_op (struct elfcopy*,int,char*,char*) ;
 int parse_sec_flags (struct sec_action*,char*) ;
 int parse_symlist_file (struct elfcopy*,char*,int ) ;
 int print_version () ;
 int set_input_target (struct elfcopy*,char*) ;
 int set_osabi (struct elfcopy*,char*) ;
 int set_output_target (struct elfcopy*,char*) ;
 char* strchr (char*,char) ;
 int strtoll (char*,int *,int ) ;
 int strtoul (char*,int *,int ) ;
 int strtoull (char*,int *,int ) ;

__attribute__((used)) static void
elfcopy_main(struct elfcopy *ecp, int argc, char **argv)
{
 struct sec_action *sac;
 const char *infile, *outfile;
 char *fn, *s;
 int opt;

 while ((opt = getopt_long(argc, argv, "dB:gG:I:j:K:L:N:O:pR:s:SwW:xXV",
     elfcopy_longopts, ((void*)0))) != -1) {
  switch(opt) {
  case 'B':

   break;
  case 'R':
   sac = lookup_sec_act(ecp, optarg, 1);
   if (sac->copy != 0)
    errx(EXIT_FAILURE,
        "both copy and remove specified");
   sac->remove = 1;
   ecp->flags |= SEC_REMOVE;
   break;
  case 'S':
   ecp->strip = STRIP_ALL;
   break;
  case 'g':
   ecp->strip = STRIP_DEBUG;
   break;
  case 'G':
   ecp->flags |= KEEP_GLOBAL;
   add_to_symop_list(ecp, optarg, ((void*)0), SYMOP_KEEPG);
   break;
  case 'I':
  case 's':
   set_input_target(ecp, optarg);
   break;
  case 'j':
   sac = lookup_sec_act(ecp, optarg, 1);
   if (sac->remove != 0)
    errx(EXIT_FAILURE,
        "both copy and remove specified");
   sac->copy = 1;
   ecp->flags |= SEC_COPY;
   break;
  case 'K':
   add_to_symop_list(ecp, optarg, ((void*)0), SYMOP_KEEP);
   break;
  case 'L':
   add_to_symop_list(ecp, optarg, ((void*)0), SYMOP_LOCALIZE);
   break;
  case 'N':
   add_to_symop_list(ecp, optarg, ((void*)0), SYMOP_STRIP);
   break;
  case 'O':
   set_output_target(ecp, optarg);
   break;
  case 'p':
   ecp->flags |= PRESERVE_DATE;
   break;
  case 'V':
   print_version();
   break;
  case 'w':
   ecp->flags |= WILDCARD;
   break;
  case 'W':
   add_to_symop_list(ecp, optarg, ((void*)0), SYMOP_WEAKEN);
   break;
  case 'x':
   ecp->flags |= DISCARD_LOCAL;
   break;
  case 'X':
   ecp->flags |= DISCARD_LLABEL;
   break;
  case 162:
   ecp->debuglink = optarg;
   break;
  case 161:
   add_section(ecp, optarg);
   break;
  case 160:
   ecp->change_addr = (int64_t) strtoll(optarg, ((void*)0), 0);
   break;
  case 159:
   parse_sec_address_op(ecp, opt, "--change-section-addr",
       optarg);
   break;
  case 158:
   parse_sec_address_op(ecp, opt, "--change-section-lma",
       optarg);
   break;
  case 157:
   parse_sec_address_op(ecp, opt, "--change-section-vma",
       optarg);
   break;
  case 156:
   ecp->change_start = (int64_t) strtoll(optarg, ((void*)0), 0);
   break;
  case 155:

   break;
  case 154:
   ecp->fill = (uint8_t) strtoul(optarg, ((void*)0), 0);
   ecp->flags |= GAP_FILL;
   break;
  case 153:
   add_to_symop_list(ecp, optarg, ((void*)0), SYMOP_GLOBALIZE);
   break;
  case 152:
   parse_symlist_file(ecp, optarg, SYMOP_GLOBALIZE);
   break;
  case 150:
   parse_symlist_file(ecp, optarg, SYMOP_KEEP);
   break;
  case 151:
   parse_symlist_file(ecp, optarg, SYMOP_KEEPG);
   break;
  case 149:
   ecp->flags |= LOCALIZE_HIDDEN;
   break;
  case 148:
   parse_symlist_file(ecp, optarg, SYMOP_LOCALIZE);
   break;
  case 147:
   ecp->flags |= NO_CHANGE_WARN;
   break;
  case 146:
   ecp->strip = STRIP_NONDEBUG;
   break;
  case 145:
   ecp->strip = STRIP_NONDWO;
   break;
  case 144:
   ecp->pad_to = (uint64_t) strtoull(optarg, ((void*)0), 0);
   break;
  case 143:
   ecp->prefix_alloc = optarg;
   break;
  case 142:
   ecp->prefix_sec = optarg;
   break;
  case 141:
   ecp->prefix_sym = optarg;
   break;
  case 140:
   if ((s = strchr(optarg, '=')) == ((void*)0))
    errx(EXIT_FAILURE,
        "illegal format for --redefine-sym");
   *s++ = '\0';
   add_to_symop_list(ecp, optarg, s, SYMOP_REDEF);
   break;
  case 139:
   parse_symlist_file(ecp, optarg, SYMOP_REDEF);
   break;
  case 138:
   if ((fn = strchr(optarg, '=')) == ((void*)0))
    errx(EXIT_FAILURE,
        "illegal format for --rename-section");
   *fn++ = '\0';


   if ((s = strchr(fn, ',')) != ((void*)0))
    *s++ = '\0';

   sac = lookup_sec_act(ecp, optarg, 1);
   sac->rename = 1;
   sac->newname = fn;
   if (s != ((void*)0))
    parse_sec_flags(sac, s);
   break;
  case 137:
   set_osabi(ecp, optarg);
   break;
  case 136:
   if ((s = strchr(optarg, '=')) == ((void*)0))
    errx(EXIT_FAILURE,
        "illegal format for --set-section-flags");
   *s++ = '\0';
   sac = lookup_sec_act(ecp, optarg, 1);
   parse_sec_flags(sac, s);
   break;
  case 135:
   ecp->flags |= SET_START;
   ecp->set_start = (uint64_t) strtoull(optarg, ((void*)0), 0);
   break;
  case 134:
   ecp->flags |= SREC_FORCE_S3;
   break;
  case 133:
   ecp->flags |= SREC_FORCE_LEN;
   ecp->srec_len = strtoul(optarg, ((void*)0), 0);
   break;
  case 132:
   ecp->strip = STRIP_DWO;
   break;
  case 131:
   parse_symlist_file(ecp, optarg, SYMOP_STRIP);
   break;
  case 130:
   ecp->strip = STRIP_UNNEEDED;
   break;
  case 129:
   ecp->flags |= WEAKEN_ALL;
   break;
  case 128:
   parse_symlist_file(ecp, optarg, SYMOP_WEAKEN);
   break;
  default:
   elfcopy_usage();
  }
 }

 argc -= optind;
 argv += optind;

 if (argc == 0 || argc > 2)
  elfcopy_usage();

 infile = argv[0];
 outfile = ((void*)0);
 if (argc > 1)
  outfile = argv[1];

 create_file(ecp, infile, outfile);
}
