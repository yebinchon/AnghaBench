
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timex {int status; } ;
struct timespec {int dummy; } ;


 int STA_PLL ;
 int STA_RONLY ;
 int STA_UNSYNC ;
 int TIME_OK ;
 int get_seconds () ;
 int time_reftime ;
 int time_state ;
 int time_status ;

__attribute__((used)) static inline void process_adj_status(struct timex *txc, struct timespec *ts)
{
 if ((time_status & STA_PLL) && !(txc->status & STA_PLL)) {
  time_state = TIME_OK;
  time_status = STA_UNSYNC;
 }





 if (!(time_status & STA_PLL) && (txc->status & STA_PLL))
  time_reftime = get_seconds();


 time_status &= STA_RONLY;
 time_status |= txc->status & ~STA_RONLY;

}
