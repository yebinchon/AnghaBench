
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int swab; int trunc; double bytes; int out_part; int out_full; int in_part; int in_full; } ;


 int C_NOINFO ;
 int C_NOXFER ;
 int C_PROGRESS ;
 int ddflags ;
 int fprintf (int ,char*,...) ;
 scalar_t__ need_summary ;
 double secs_elapsed () ;
 TYPE_1__ st ;
 int stderr ;

void
summary(void)
{
 double secs;

 if (ddflags & C_NOINFO)
  return;

 if (ddflags & C_PROGRESS)
  fprintf(stderr, "\n");

 secs = secs_elapsed();

 (void)fprintf(stderr,
     "%ju+%ju records in\n%ju+%ju records out\n",
     st.in_full, st.in_part, st.out_full, st.out_part);
 if (st.swab)
  (void)fprintf(stderr, "%ju odd length swab %s\n",
       st.swab, (st.swab == 1) ? "block" : "blocks");
 if (st.trunc)
  (void)fprintf(stderr, "%ju truncated %s\n",
       st.trunc, (st.trunc == 1) ? "block" : "blocks");
 if (!(ddflags & C_NOXFER)) {
  (void)fprintf(stderr,
      "%ju bytes transferred in %.6f secs (%.0f bytes/sec)\n",
      st.bytes, secs, st.bytes / secs);
 }
 need_summary = 0;
}
