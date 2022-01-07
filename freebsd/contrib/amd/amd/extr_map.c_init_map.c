
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {int nt_seconds; } ;
struct TYPE_13__ {int na_fsid; TYPE_8__ na_atime; TYPE_8__ na_ctime; TYPE_8__ na_mtime; int na_fileid; } ;
struct TYPE_10__ {int s_mtime; } ;
struct TYPE_9__ {int ns_status; } ;
struct TYPE_11__ {int am_dev; int am_rdev; int* am_fd; TYPE_7__ am_fattr; TYPE_2__ am_stats; int am_gen; TYPE_1__ am_attr; int am_timeo; int * am_autofs_fh; void* am_path; void* am_name; int * am_alarray; int am_al; } ;
typedef TYPE_3__ am_node ;
struct TYPE_12__ {int am_timeo; } ;


 int NFS_OK ;
 int clocktime (TYPE_8__*) ;
 TYPE_7__ gen_fattr ;
 TYPE_6__ gopt ;
 int new_gen () ;
 int new_loc () ;
 int new_ttl (TYPE_3__*) ;
 void* xstrdup (char*) ;

void
init_map(am_node *mp, char *dir)
{





  mp->am_al = new_loc();
  mp->am_alarray = ((void*)0);
  mp->am_name = xstrdup(dir);
  mp->am_path = xstrdup(dir);
  mp->am_gen = new_gen();




  mp->am_timeo = gopt.am_timeo;
  mp->am_attr.ns_status = NFS_OK;
  mp->am_fattr = gen_fattr;
  mp->am_fattr.na_fsid = 42;
  mp->am_fattr.na_fileid = mp->am_gen;
  clocktime(&mp->am_fattr.na_atime);

  mp->am_fattr.na_mtime = mp->am_fattr.na_ctime = mp->am_fattr.na_atime;

  new_ttl(mp);
  mp->am_stats.s_mtime = mp->am_fattr.na_atime.nt_seconds;
  mp->am_dev = -1;
  mp->am_rdev = -1;
  mp->am_fd[0] = -1;
  mp->am_fd[1] = -1;
}
