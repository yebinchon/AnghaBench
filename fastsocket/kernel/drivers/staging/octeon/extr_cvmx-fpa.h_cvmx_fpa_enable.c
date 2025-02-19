
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fpf_wr; } ;
union cvmx_fpa_fpfx_marks {void* u64; TYPE_1__ s; } ;
struct TYPE_4__ {int enb; } ;
union cvmx_fpa_ctl_status {void* u64; TYPE_2__ s; } ;


 scalar_t__ CVMX_FPA_CTL_STATUS ;
 scalar_t__ CVMX_FPA_FPF1_MARKS ;
 int cvmx_dprintf (char*) ;
 scalar_t__ cvmx_octeon_is_pass1 () ;
 void* cvmx_read_csr (scalar_t__) ;
 int cvmx_wait (int) ;
 int cvmx_write_csr (scalar_t__,void*) ;

__attribute__((used)) static inline void cvmx_fpa_enable(void)
{
 union cvmx_fpa_ctl_status status;

 status.u64 = cvmx_read_csr(CVMX_FPA_CTL_STATUS);
 if (status.s.enb) {
  cvmx_dprintf
      ("Warning: Enabling FPA when FPA already enabled.\n");
 }





 if (cvmx_octeon_is_pass1()) {
  union cvmx_fpa_fpfx_marks marks;
  int i;
  for (i = 1; i < 8; i++) {
   marks.u64 =
       cvmx_read_csr(CVMX_FPA_FPF1_MARKS + (i - 1) * 8ull);
   marks.s.fpf_wr = 0xe0;
   cvmx_write_csr(CVMX_FPA_FPF1_MARKS + (i - 1) * 8ull,
           marks.u64);
  }


  cvmx_wait(10);
 }


 status.u64 = 0;
 status.s.enb = 1;
 cvmx_write_csr(CVMX_FPA_CTL_STATUS, status.u64);
}
