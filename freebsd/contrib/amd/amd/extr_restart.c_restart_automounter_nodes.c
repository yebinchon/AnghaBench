
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int voidp ;
typedef long u_short ;
struct TYPE_6__ {TYPE_2__* mnt; struct TYPE_6__* mnext; } ;
typedef TYPE_1__ mntlist ;
struct TYPE_7__ {long mnt_fsname; long mnt_dir; int mnt_type; } ;
typedef TYPE_2__ mntent_t ;
typedef int am_ops ;
typedef int SVCXPRT ;


 scalar_t__ ESRCH ;
 int MNTTAB_TYPE_NFS ;
 int STREQ (int ,int ) ;
 int XLOG_WARNING ;
 int amfs_link_ops ;
 int amfs_toplvl_ops ;
 scalar_t__ create_nfs_service (int*,long*,int **,int ,int ) ;
 scalar_t__ errno ;
 int free_mntlist (TYPE_1__*) ;
 int get_nfs_dispatcher_version (int ) ;
 int kill (long,int ) ;
 int memset (int ,int ,int) ;
 int mnttab_file_name ;
 int nfs_dispatcher ;
 long nfs_port ;
 int plog (int ,char*,...) ;
 TYPE_1__* read_mtab (char*,int ) ;
 int restart_fake_mntfs (TYPE_2__*,int *) ;
 int sscanf (char*,char*,long*) ;
 char* strchr (long,char) ;
 int strstr (char*,char*) ;

void
restart_automounter_nodes(void)
{
  mntlist *ml, *mlp;

  u_short old_ports[256];

  memset((voidp) &old_ports, 0, sizeof(u_short) * 256);





  for (mlp = ml = read_mtab("restart", mnttab_file_name);
       mlp;
       mlp = mlp->mnext) {
    mntent_t *me = mlp->mnt;
    am_ops *fs_ops = ((void*)0);
    char *colon;
    long pid;
    u_short port;
    int err;

    if (!STREQ(me->mnt_type, MNTTAB_TYPE_NFS))
      continue;







    colon = strchr(me->mnt_fsname, ':');
    if (!colon || !strstr(colon, "(pid"))
      continue;

    err = 1;

    plog(XLOG_WARNING, "%s is an existing automount point", me->mnt_dir);


    if (sscanf(colon, "%*[^(](pid%ld%*[,)]", &pid) != 1) {
      plog(XLOG_WARNING, "Can't parse pid in %s", me->mnt_fsname);
      goto give_up;
    }
    if (kill(pid, 0) != -1 || errno != ESRCH) {
      plog(XLOG_WARNING, "Automounter (pid: %ld) still alive", pid);
      goto give_up;
    }







    if (sscanf(colon, "%*[^,],port%hu)", &port) != 1) {
      plog(XLOG_WARNING, "No port specified for %s", me->mnt_fsname);
      goto give_up;
    }


    if (port != nfs_port) {
      int i;
      for (i = 0; i < 256; i++) {
 if (old_ports[i] == port ||
     old_ports[i] == 0)
   break;
      }
      if (i == 256) {
 plog(XLOG_WARNING, "Too many open ports (256)");
 goto give_up;
      }

      if (old_ports[i] == 0) {
 int soNFS;
 SVCXPRT *nfsxprt;
 if (create_nfs_service(&soNFS, &port, &nfsxprt, nfs_dispatcher,
     get_nfs_dispatcher_version(nfs_dispatcher)) != 0) {
   plog(XLOG_WARNING, "Can't bind to port %u", port);
   goto give_up;
 }
 old_ports[i] = nfs_port = port;
      }
    }
    err = 0;

  give_up:
    if (err) {
      plog(XLOG_WARNING, "Can't restart %s, leaving it alone", me->mnt_dir);
      fs_ops = &amfs_link_ops;
    } else {
      fs_ops = &amfs_toplvl_ops;
    }

    restart_fake_mntfs(me, fs_ops);
  }


  free_mntlist(ml);
}
