
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct breakpoint {scalar_t__ type; char* triggered_dll_pathname; } ;
struct bpstats {struct bpstats* next; struct breakpoint* breakpoint_at; } ;
typedef struct bpstats* bpstat ;


 int PIDGET (int ) ;
 char* SOLIB_LOADED_LIBRARY_PATHNAME (int ) ;
 char* SOLIB_UNLOADED_LIBRARY_PATHNAME (int ) ;
 scalar_t__ bp_catch_catch ;
 scalar_t__ bp_catch_load ;
 scalar_t__ bp_catch_throw ;
 scalar_t__ bp_catch_unload ;
 struct bpstats* bpstat_alloc (struct breakpoint*,struct bpstats*) ;
 int bpstat_clear (struct bpstats**) ;
 int inferior_ptid ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int xfree (char*) ;
 scalar_t__ xmalloc (scalar_t__) ;

void
bpstat_get_triggered_catchpoints (bpstat ep_list, bpstat *cp_list)
{
  struct bpstats root_bs[1];
  bpstat bs = root_bs;
  struct breakpoint *ep;
  char *dll_pathname;

  bpstat_clear (cp_list);
  root_bs->next = ((void*)0);

  for (; ep_list != ((void*)0); ep_list = ep_list->next)
    {

      ep = ep_list->breakpoint_at;
      if (ep == ((void*)0))
 break;
      if ((ep->type != bp_catch_load) &&
   (ep->type != bp_catch_unload) &&
   (ep->type != bp_catch_catch) &&
   (ep->type != bp_catch_throw))

 continue;


      bs = bpstat_alloc (ep, bs);
      *bs = *ep_list;
      bs->next = ((void*)0);
      bs = root_bs->next;
      dll_pathname = ((void*)0);

      if (dll_pathname)
 {
   ep->triggered_dll_pathname = (char *)
     xmalloc (strlen (dll_pathname) + 1);
   strcpy (ep->triggered_dll_pathname, dll_pathname);
 }
      else
 ep->triggered_dll_pathname = ((void*)0);
    }

  *cp_list = bs;
}
