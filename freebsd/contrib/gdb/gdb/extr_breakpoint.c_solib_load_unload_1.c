
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtabs_and_lines {int nelts; char* sals; } ;
struct symtab {int dummy; } ;
struct cleanup {int dummy; } ;
struct breakpoint {char* cond_string; int thread; char* addr_string; char* dll_pathname; int disposition; int enable_state; int * cond; scalar_t__ number; } ;
typedef enum bptype { ____Placeholder_bptype } bptype ;


 int bp_enabled ;
 scalar_t__ breakpoint_count ;
 struct symtabs_and_lines decode_line_1 (char**,int,struct symtab*,int ,char***,int *) ;
 int discard_cleanups (struct cleanup*) ;
 int disp_del ;
 int disp_donttouch ;
 int do_cleanups (struct cleanup*) ;
 struct cleanup* make_cleanup (int ,...) ;
 int mention (struct breakpoint*) ;
 int null_cleanup ;
 int resolve_sal_pc (char*) ;
 char* savestring (char*,int) ;
 int set_breakpoint_count (scalar_t__) ;
 struct breakpoint* set_raw_breakpoint (char,int) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int warning (char*) ;
 int xfree ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static void
solib_load_unload_1 (char *hookname, int tempflag, char *dll_pathname,
       char *cond_string, enum bptype bp_kind)
{
  struct breakpoint *b;
  struct symtabs_and_lines sals;
  struct cleanup *old_chain;
  struct cleanup *canonical_strings_chain = ((void*)0);
  char *addr_start = hookname;
  char *addr_end = ((void*)0);
  char **canonical = (char **) ((void*)0);
  int thread = -1;


  sals = decode_line_1 (&hookname, 1, (struct symtab *) ((void*)0), 0, &canonical, ((void*)0));
  addr_end = hookname;

  if (sals.nelts == 0)
    {
      warning ("Unable to set a breakpoint on dynamic linker callback.");
      warning ("Suggest linking with /opt/langtools/lib/end.o.");
      warning ("GDB will be unable to track shl_load/shl_unload calls");
      return;
    }
  if (sals.nelts != 1)
    {
      warning ("Unable to set unique breakpoint on dynamic linker callback.");
      warning ("GDB will be unable to track shl_load/shl_unload calls");
      return;
    }



  old_chain = make_cleanup (xfree, sals.sals);
  if (canonical != (char **) ((void*)0))
    {
      make_cleanup (xfree, canonical);
      canonical_strings_chain = make_cleanup (null_cleanup, 0);
      if (canonical[0] != ((void*)0))
 make_cleanup (xfree, canonical[0]);
    }

  resolve_sal_pc (&sals.sals[0]);


  if (canonical != (char **) ((void*)0))
    discard_cleanups (canonical_strings_chain);

  b = set_raw_breakpoint (sals.sals[0], bp_kind);
  set_breakpoint_count (breakpoint_count + 1);
  b->number = breakpoint_count;
  b->cond = ((void*)0);
  b->cond_string = (cond_string == ((void*)0)) ?
    ((void*)0) : savestring (cond_string, strlen (cond_string));
  b->thread = thread;

  if (canonical != (char **) ((void*)0) && canonical[0] != ((void*)0))
    b->addr_string = canonical[0];
  else if (addr_start)
    b->addr_string = savestring (addr_start, addr_end - addr_start);

  b->enable_state = bp_enabled;
  b->disposition = tempflag ? disp_del : disp_donttouch;

  if (dll_pathname == ((void*)0))
    b->dll_pathname = ((void*)0);
  else
    {
      b->dll_pathname = (char *) xmalloc (strlen (dll_pathname) + 1);
      strcpy (b->dll_pathname, dll_pathname);
    }

  mention (b);
  do_cleanups (old_chain);
}
