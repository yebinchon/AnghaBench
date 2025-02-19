
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {scalar_t__ tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;


 int DLG_TRACE (char*) ;

__attribute__((used)) static void
trace_date(struct tm *current, struct tm *old)
{
    bool changed = (old == 0 ||
      current->tm_mday != old->tm_mday ||
      current->tm_mon != old->tm_mon ||
      current->tm_year != old->tm_year);
    if (changed) {
 DLG_TRACE(("# current %04d/%02d/%02d\n",
     current->tm_year + 1900,
     current->tm_mon + 1,
     current->tm_mday));
    } else {
 DLG_TRACE(("# current (unchanged)\n"));
    }
}
