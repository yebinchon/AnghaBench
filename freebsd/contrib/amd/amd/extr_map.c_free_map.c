
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int* am_fd; scalar_t__ am_autofs_fh; int ** am_alarray; int * am_al; int ** am_transp; int ** am_pref; int ** am_path; int ** am_name; int ** am_link; } ;
typedef TYPE_1__ am_node ;
typedef int am_loc ;


 int XFREE (int **) ;
 int XLOG_FATAL ;
 int autofs_release_fh (TYPE_1__*) ;
 int exported_ap_free (TYPE_1__*) ;
 int free_loc (int *) ;
 int plog (int ,char*,int **) ;
 int remove_am (TYPE_1__*) ;

void
free_map(am_node *mp)
{
  remove_am(mp);

  if (mp->am_fd[1] != -1)
    plog(XLOG_FATAL, "free_map: called prior to notifying the child for %s.",
 mp->am_path);

  XFREE(mp->am_link);
  XFREE(mp->am_name);
  XFREE(mp->am_path);
  XFREE(mp->am_pref);
  XFREE(mp->am_transp);

  if (mp->am_al)
    free_loc(mp->am_al);

  if (mp->am_alarray) {
    am_loc **temp_al;
    for (temp_al = mp->am_alarray; *temp_al; temp_al++)
      free_loc(*temp_al);
    XFREE(mp->am_alarray);
  }






  exported_ap_free(mp);
}
