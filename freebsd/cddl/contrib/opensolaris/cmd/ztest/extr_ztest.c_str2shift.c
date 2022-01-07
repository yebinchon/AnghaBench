
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B_FALSE ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;
 int strlen (char const*) ;
 char toupper (char const) ;
 int usage (int ) ;

__attribute__((used)) static int
str2shift(const char *buf)
{
 const char *ends = "BKMGTPEZ";
 int i;

 if (buf[0] == '\0')
  return (0);
 for (i = 0; i < strlen(ends); i++) {
  if (toupper(buf[0]) == ends[i])
   break;
 }
 if (i == strlen(ends)) {
  (void) fprintf(stderr, "ztest: invalid bytes suffix: %s\n",
      buf);
  usage(B_FALSE);
 }
 if (buf[1] == '\0' || (toupper(buf[1]) == 'B' && buf[2] == '\0')) {
  return (10*i);
 }
 (void) fprintf(stderr, "ztest: invalid bytes suffix: %s\n", buf);
 usage(B_FALSE);

}
