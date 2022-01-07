
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* netbsd_core_data; } ;
struct TYPE_9__ {TYPE_3__ tdata; } ;
typedef TYPE_4__ bfd ;
struct TYPE_6__ {char* c_name; } ;
struct TYPE_7__ {TYPE_1__ core; } ;



__attribute__((used)) static char*
netbsd_core_file_failing_command (bfd *abfd)
{

  return abfd->tdata.netbsd_core_data->core.c_name;
}
