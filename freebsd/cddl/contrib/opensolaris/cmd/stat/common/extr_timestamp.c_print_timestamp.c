
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint_t ;
typedef char* time_t ;
typedef int dstr ;


 scalar_t__ DDATE ;
 scalar_t__ UDATE ;
 int localtime (char**) ;
 int printf (char*,char*) ;
 int strftime (char*,int,char*,int ) ;
 char* time (int *) ;

void
print_timestamp(uint_t timestamp_fmt)
{
 time_t t = time(((void*)0));

 if (timestamp_fmt == UDATE) {
  (void) printf("%ld\n", t);
 } else if (timestamp_fmt == DDATE) {
  char dstr[64];
  int len;

  len = strftime(dstr, sizeof (dstr), "%+", localtime(&t));
  if (len > 0)
   (void) printf("%s\n", dstr);
 }
}
