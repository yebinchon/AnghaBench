
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct output {int dummy; } ;
typedef int FILE ;


 int doformat_wr ;
 int fclose (int *) ;
 int * fwopen (struct output*,int ) ;
 int vfprintf (int *,char const*,int ) ;

void
doformat(struct output *dest, const char *f, va_list ap)
{
 FILE *fp;

 if ((fp = fwopen(dest, doformat_wr)) != ((void*)0)) {
  vfprintf(fp, f, ap);
  fclose(fp);
 }
}
