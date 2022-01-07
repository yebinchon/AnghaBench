
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HT ;


 int EXIT_FAILURE ;
 int HT_clear (int *,int (*) (char*)) ;
 int HT_free (int *,int (*) (char*)) ;
 void* HT_new () ;
 int * all_chains ;
 scalar_t__ all_chains_len ;
 scalar_t__ all_chains_ptr ;
 int conf_close () ;
 int conf_init (char const*) ;
 scalar_t__ conf_next_line () ;
 long current_linenum ;
 int exit (int ) ;
 int fprintf (int ,char*,long) ;
 void* keys ;
 char* parse_header_name () ;
 scalar_t__ parse_keyvalue (int *) ;
 int parse_object (char*,int *,long) ;
 int stderr ;
 void* trust_anchors ;
 int xfree (char*) ;

__attribute__((used)) static void
process_conf_file(const char *fname)
{
 char *objtype;
 HT *objdata;
 long objlinenum;

 keys = HT_new();
 trust_anchors = HT_new();
 all_chains = ((void*)0);
 all_chains_ptr = 0;
 all_chains_len = 0;
 conf_init(fname);
 objtype = ((void*)0);
 objdata = HT_new();
 objlinenum = 0;
 for (;;) {
  char *hname;

  if (conf_next_line() < 0) {
   break;
  }
  hname = parse_header_name();
  if (hname != ((void*)0)) {
   if (objtype != ((void*)0)) {
    parse_object(objtype, objdata, objlinenum);
    HT_clear(objdata, xfree);
    xfree(objtype);
   }
   objtype = hname;
   objlinenum = current_linenum;
   continue;
  }
  if (objtype == ((void*)0)) {
   fprintf(stderr, "no current section (line %ld)\n",
    current_linenum);
   exit(EXIT_FAILURE);
  }
  if (parse_keyvalue(objdata) < 0) {
   fprintf(stderr, "wrong configuration, line %ld\n",
    current_linenum);
   exit(EXIT_FAILURE);
  }
 }
 if (objtype != ((void*)0)) {
  parse_object(objtype, objdata, objlinenum);
  xfree(objtype);
 }
 HT_free(objdata, xfree);
 conf_close();
}
