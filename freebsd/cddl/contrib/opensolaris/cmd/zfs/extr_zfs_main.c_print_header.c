
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pl_prop; char* pl_user_prop; char* pl_width; struct TYPE_4__* pl_next; } ;
typedef TYPE_1__ zprop_list_t ;
struct TYPE_5__ {TYPE_1__* cb_proplist; } ;
typedef TYPE_2__ list_cbdata_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int ZFS_MAXPROPLEN ;
 scalar_t__ ZPROP_INVAL ;
 int printf (char*,...) ;
 char toupper (char) ;
 scalar_t__ zfs_prop_align_right (scalar_t__) ;
 char* zfs_prop_column_name (scalar_t__) ;

__attribute__((used)) static void
print_header(list_cbdata_t *cb)
{
 zprop_list_t *pl = cb->cb_proplist;
 char headerbuf[ZFS_MAXPROPLEN];
 const char *header;
 int i;
 boolean_t first = B_TRUE;
 boolean_t right_justify;

 for (; pl != ((void*)0); pl = pl->pl_next) {
  if (!first) {
   (void) printf("  ");
  } else {
   first = B_FALSE;
  }

  right_justify = B_FALSE;
  if (pl->pl_prop != ZPROP_INVAL) {
   header = zfs_prop_column_name(pl->pl_prop);
   right_justify = zfs_prop_align_right(pl->pl_prop);
  } else {
   for (i = 0; pl->pl_user_prop[i] != '\0'; i++)
    headerbuf[i] = toupper(pl->pl_user_prop[i]);
   headerbuf[i] = '\0';
   header = headerbuf;
  }

  if (pl->pl_next == ((void*)0) && !right_justify)
   (void) printf("%s", header);
  else if (right_justify)
   (void) printf("%*s", pl->pl_width, header);
  else
   (void) printf("%-*s", pl->pl_width, header);
 }

 (void) printf("\n");
}
