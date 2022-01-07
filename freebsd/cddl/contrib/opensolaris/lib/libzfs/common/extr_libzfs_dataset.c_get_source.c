
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ zprop_source_t ;
struct TYPE_3__ {int zfs_name; } ;
typedef TYPE_1__ zfs_handle_t ;


 int ZPROP_SOURCE_VAL_RECVD ;
 scalar_t__ ZPROP_SRC_DEFAULT ;
 scalar_t__ ZPROP_SRC_INHERITED ;
 scalar_t__ ZPROP_SRC_LOCAL ;
 scalar_t__ ZPROP_SRC_NONE ;
 scalar_t__ ZPROP_SRC_RECEIVED ;
 scalar_t__ ZPROP_SRC_TEMPORARY ;
 scalar_t__ strcmp (char*,int ) ;
 int strlcpy (char*,char*,size_t) ;
 int * strstr (char*,int ) ;

__attribute__((used)) static void
get_source(zfs_handle_t *zhp, zprop_source_t *srctype, char *source,
    char *statbuf, size_t statlen)
{
 if (statbuf == ((void*)0) || *srctype == ZPROP_SRC_TEMPORARY)
  return;

 if (source == ((void*)0)) {
  *srctype = ZPROP_SRC_NONE;
 } else if (source[0] == '\0') {
  *srctype = ZPROP_SRC_DEFAULT;
 } else if (strstr(source, ZPROP_SOURCE_VAL_RECVD) != ((void*)0)) {
  *srctype = ZPROP_SRC_RECEIVED;
 } else {
  if (strcmp(source, zhp->zfs_name) == 0) {
   *srctype = ZPROP_SRC_LOCAL;
  } else {
   (void) strlcpy(statbuf, source, statlen);
   *srctype = ZPROP_SRC_INHERITED;
  }
 }

}
