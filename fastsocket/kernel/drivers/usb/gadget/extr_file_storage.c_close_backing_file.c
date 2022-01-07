
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lun {int * filp; } ;


 int LDBG (struct lun*,char*) ;
 int fput (int *) ;

__attribute__((used)) static void close_backing_file(struct lun *curlun)
{
 if (curlun->filp) {
  LDBG(curlun, "close backing file\n");
  fput(curlun->filp);
  curlun->filp = ((void*)0);
 }
}
