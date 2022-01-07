
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char ev_type; char* ev_desc; } ;
typedef TYPE_1__ ls_event_info_t ;


 int LS_MAX_EVENTS ;
 int fprintf (int ,char*,...) ;
 TYPE_1__* g_event_info ;
 int stderr ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static void
show_events(char event_type, char *desc)
{
 int i, first = -1, last;

 for (i = 0; i < LS_MAX_EVENTS; i++) {
  ls_event_info_t *evp = &g_event_info[i];
  if (evp->ev_type != event_type ||
      strncmp(evp->ev_desc, "Unknown event", 13) == 0)
   continue;
  if (first == -1)
   first = i;
  last = i;
 }

 (void) fprintf(stderr,
     "\n%s events (lockstat -%c or lockstat -e %d-%d):\n\n",
     desc, event_type, first, last);

 for (i = first; i <= last; i++)
  (void) fprintf(stderr,
      "%4d = %s\n", i, g_event_info[i].ev_desc);
}
