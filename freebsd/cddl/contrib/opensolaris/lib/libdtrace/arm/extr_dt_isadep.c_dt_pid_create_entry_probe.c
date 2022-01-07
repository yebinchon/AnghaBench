
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct ps_prochandle {int dummy; } ;
struct TYPE_9__ {uintptr_t ftps_pc; size_t ftps_size; int ftps_noffs; scalar_t__* ftps_offs; int ftps_type; } ;
typedef TYPE_1__ fasttrap_probe_spec_t ;
struct TYPE_10__ {int dt_ftfd; } ;
typedef TYPE_2__ dtrace_hdl_t ;
struct TYPE_11__ {scalar_t__ st_size; scalar_t__ st_value; } ;
typedef TYPE_3__ GElf_Sym ;


 int DTFTP_ENTRY ;
 int FASTTRAPIOC_MAKEPROBE ;
 int dt_dprintf (char*,int ) ;
 int dt_set_errno (TYPE_2__*,int ) ;
 int errno ;
 scalar_t__ ioctl (int ,int ,TYPE_1__*) ;
 int strerror (int ) ;

int
dt_pid_create_entry_probe(struct ps_prochandle *P, dtrace_hdl_t *dtp,
    fasttrap_probe_spec_t *ftp, const GElf_Sym *symp)
{
 ftp->ftps_type = DTFTP_ENTRY;
 ftp->ftps_pc = (uintptr_t)symp->st_value;
 ftp->ftps_size = (size_t)symp->st_size;
 ftp->ftps_noffs = 1;
 ftp->ftps_offs[0] = 0;

 if (ioctl(dtp->dt_ftfd, FASTTRAPIOC_MAKEPROBE, ftp) != 0) {
  dt_dprintf("fasttrap probe creation ioctl failed: %s\n",
      strerror(errno));
  return (dt_set_errno(dtp, errno));
 }

 return (1);
}
