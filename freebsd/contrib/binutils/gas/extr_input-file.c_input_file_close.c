
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * f_in ;
 int fclose (int *) ;

void
input_file_close (void)
{

  if (f_in != ((void*)0))
    fclose (f_in);

  f_in = 0;
}
