
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* u_int ;
typedef char* off_t ;
typedef int int64_t ;
typedef int buf ;


 int HN_AUTOSCALE ;
 int HN_B ;
 int HN_DECIMAL ;
 int HN_NOSPACE ;
 int HUMANVALSTR_LEN ;
 scalar_t__ f_humanval ;
 scalar_t__ f_thousands ;
 int humanize_number (char*,int,int ,char*,int ,int) ;
 int printf (char const*,char*,char*) ;

__attribute__((used)) static void
printsize(size_t width, off_t bytes)
{

 if (f_humanval) {




  char buf[HUMANVALSTR_LEN - 1 + 1];

  humanize_number(buf, sizeof(buf), (int64_t)bytes, "",
      HN_AUTOSCALE, HN_B | HN_NOSPACE | HN_DECIMAL);
  (void)printf("%*s ", (u_int)width, buf);
 } else if (f_thousands) {

  const char *format = "%*j'd ";
  (void)printf(format, (u_int)width, bytes);
 } else
  (void)printf("%*jd ", (u_int)width, bytes);
}
