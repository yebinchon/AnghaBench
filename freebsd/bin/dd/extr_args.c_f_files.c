
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIZE_MAX ;
 int errx (int,char*,int ) ;
 int files_cnt ;
 int get_num (char*) ;

__attribute__((used)) static void
f_files(char *arg)
{

 files_cnt = get_num(arg);
 if (files_cnt < 1)
  errx(1, "files must be between 1 and %zu", SIZE_MAX);
}
