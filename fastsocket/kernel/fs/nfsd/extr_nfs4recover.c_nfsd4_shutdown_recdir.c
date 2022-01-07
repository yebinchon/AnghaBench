
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fput (int *) ;
 int * rec_file ;

void
nfsd4_shutdown_recdir(void)
{
 if (!rec_file)
  return;
 fput(rec_file);
 rec_file = ((void*)0);
}
