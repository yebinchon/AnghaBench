
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct rminfo {double physmem; } ;
struct pst_static {double physical_memory; double page_size; } ;
typedef int physmem ;
struct TYPE_6__ {int dwLength; scalar_t__ ullTotalPhys; } ;
typedef TYPE_1__ lMEMORYSTATUSEX ;
typedef int caddr_t ;
struct TYPE_8__ {double physmem; } ;
struct TYPE_7__ {scalar_t__ dwTotalPhys; } ;
typedef int (* PFN_MS_EX ) (TYPE_1__*) ;
typedef TYPE_3__ MEMORYSTATUS ;
typedef int HMODULE ;


 int ARRAY_SIZE (int*) ;

 int GSI_PHYSMEM ;
 int GetModuleHandle (char*) ;
 scalar_t__ GetProcAddress (int ,char*) ;
 int GlobalMemoryStatus (TYPE_3__*) ;

 int MPSA_RMINFO ;
 int MP_SAGET ;
 int _SC_PAGESIZE ;
 int _SC_PHYS_PAGES ;
 TYPE_4__ _system_configuration ;
 int getsysinfo (int ,int ,int,int *,int *,int *) ;
 scalar_t__ pstat_getstatic (struct pst_static*,int,int,int ) ;
 double sysconf (int ) ;
 scalar_t__ sysctl (int*,int ,unsigned int*,size_t*,int *,int ) ;
 scalar_t__ sysmp (int ,int ,struct rminfo*,int) ;

double
physmem_total (void)
{
  return 0;
}
