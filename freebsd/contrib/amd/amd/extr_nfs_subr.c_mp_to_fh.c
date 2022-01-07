
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_5__ {int fhh_id; int fhh_pid; } ;
struct TYPE_6__ {TYPE_1__ s; int fhh_path; } ;
struct am_fh {TYPE_2__ u; int fhh_gen; } ;
struct TYPE_7__ {int am_mapno; int am_path; int am_gen; } ;
typedef TYPE_3__ am_node ;
typedef int am_nfs_fh ;


 int get_server_pid () ;
 int memcpy (int ,int ,int) ;
 int memset (char*,int ,int) ;
 int strlen (int ) ;

void
mp_to_fh(am_node *mp, am_nfs_fh *fhp)
{
  u_int pathlen;
  struct am_fh *fp = (struct am_fh *) fhp;

  memset((char *) fhp, 0, sizeof(am_nfs_fh));


  fp->fhh_gen = mp->am_gen;

  pathlen = strlen(mp->am_path);
  if (pathlen <= sizeof(*fhp) - sizeof(fp->fhh_gen)) {






    memcpy(fp->u.fhh_path, mp->am_path, pathlen);
  } else {



    fp->u.s.fhh_pid = get_server_pid();




    fp->u.s.fhh_id = mp->am_mapno;
  }
}
