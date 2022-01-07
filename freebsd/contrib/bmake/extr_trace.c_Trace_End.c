
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fclose (int *) ;
 int * trfile ;

void
Trace_End(void)
{
 if (trfile != ((void*)0))
  fclose(trfile);
}
