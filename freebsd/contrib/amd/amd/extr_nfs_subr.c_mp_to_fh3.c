
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_7__ {int fhh_id; int fhh_pid; } ;
struct TYPE_8__ {TYPE_1__ s; int fhh_path; } ;
struct am_fh3 {TYPE_2__ u; int fhh_gen; } ;
struct TYPE_9__ {int am_mapno; int am_path; int am_gen; } ;
typedef TYPE_3__ am_node ;
struct TYPE_10__ {int am_fh3_length; scalar_t__ am_fh3_data; } ;
typedef TYPE_4__ am_nfs_fh3 ;


 int AM_FHSIZE3 ;
 int get_server_pid () ;
 int memcpy (int ,int ,int) ;
 int memset (char*,int ,int) ;
 int strlen (int ) ;

void
mp_to_fh3(am_node *mp, am_nfs_fh3 *fhp)
{
  u_int pathlen;
  struct am_fh3 *fp = (struct am_fh3 *) fhp->am_fh3_data;

  memset((char *) fhp, 0, sizeof(am_nfs_fh3));
  fhp->am_fh3_length = AM_FHSIZE3;


  fp->fhh_gen = mp->am_gen;

  pathlen = strlen(mp->am_path);
  if (pathlen <= sizeof(*fp) - sizeof(fp->fhh_gen)) {






    memcpy(fp->u.fhh_path, mp->am_path, pathlen);
  } else {



    fp->u.s.fhh_pid = get_server_pid();




    fp->u.s.fhh_id = mp->am_mapno;
  }
}
