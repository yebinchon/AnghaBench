
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uid_t ;
struct seq_file {int dummy; } ;
struct nfsd4_fs_locations {scalar_t__ locations_count; TYPE_1__* locations; scalar_t__ migrated; } ;
typedef int gid_t ;
struct TYPE_2__ {int hosts; int path; } ;


 int NFSEXP_ALLFLAGS ;
 int NFSEXP_FSID ;
 int seq_escape (struct seq_file*,int ,char*) ;
 int seq_printf (struct seq_file*,char*,...) ;
 int seq_putc (struct seq_file*,char) ;
 int show_expflags (struct seq_file*,int,int ) ;

__attribute__((used)) static void exp_flags(struct seq_file *m, int flag, int fsid,
  uid_t anonu, uid_t anong, struct nfsd4_fs_locations *fsloc)
{
 show_expflags(m, flag, NFSEXP_ALLFLAGS);
 if (flag & NFSEXP_FSID)
  seq_printf(m, ",fsid=%d", fsid);
 if (anonu != (uid_t)-2 && anonu != (0x10000-2))
  seq_printf(m, ",anonuid=%u", anonu);
 if (anong != (gid_t)-2 && anong != (0x10000-2))
  seq_printf(m, ",anongid=%u", anong);
 if (fsloc && fsloc->locations_count > 0) {
  char *loctype = (fsloc->migrated) ? "refer" : "replicas";
  int i;

  seq_printf(m, ",%s=", loctype);
  seq_escape(m, fsloc->locations[0].path, ",;@ \t\n\\");
  seq_putc(m, '@');
  seq_escape(m, fsloc->locations[0].hosts, ",;@ \t\n\\");
  for (i = 1; i < fsloc->locations_count; i++) {
   seq_putc(m, ';');
   seq_escape(m, fsloc->locations[i].path, ",;@ \t\n\\");
   seq_putc(m, '@');
   seq_escape(m, fsloc->locations[i].hosts, ",;@ \t\n\\");
  }
 }
}
