
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int dummy; } ;
typedef int off_t ;


 int sprintf (char*,char*) ;

__attribute__((used)) static int tcm_loop_proc_info(struct Scsi_Host *host, char *buffer,
    char **start, off_t offset,
    int length, int inout)
{
 return sprintf(buffer, "tcm_loop_proc_info()\n");
}
