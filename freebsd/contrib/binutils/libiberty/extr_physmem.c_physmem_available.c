
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vmstats ;
typedef int usermem ;
struct tbl_vmstats {double free_count; double pagesize; } ;
struct rminfo {double availrmem; } ;
struct pst_static {double page_size; } ;
struct pst_dynamic {double psd_free; } ;
struct TYPE_5__ {int dwLength; scalar_t__ ullAvailPhys; } ;
typedef TYPE_1__ lMEMORYSTATUSEX ;
struct TYPE_6__ {scalar_t__ dwAvailPhys; } ;
typedef int (* PFN_MS_EX ) (TYPE_1__*) ;
typedef TYPE_3__ MEMORYSTATUS ;
typedef int HMODULE ;


 int ARRAY_SIZE (int*) ;

 int GetModuleHandle (char*) ;
 scalar_t__ GetProcAddress (int ,char*) ;
 int GlobalMemoryStatus (TYPE_3__*) ;

 int MPSA_RMINFO ;
 int MP_SAGET ;
 int TBL_VMSTATS ;
 int _SC_AVPHYS_PAGES ;
 int _SC_PAGESIZE ;
 int physmem_total () ;
 scalar_t__ pstat_getdynamic (struct pst_dynamic*,int,int,int ) ;
 scalar_t__ pstat_getstatic (struct pst_static*,int,int,int ) ;
 double sysconf (int ) ;
 scalar_t__ sysctl (int*,int ,unsigned int*,size_t*,int *,int ) ;
 scalar_t__ sysmp (int ,int ,struct rminfo*,int) ;
 int table (int ,int ,struct tbl_vmstats*,int,int) ;

double
physmem_available (void)
{
  return physmem_total () / 4;
}
