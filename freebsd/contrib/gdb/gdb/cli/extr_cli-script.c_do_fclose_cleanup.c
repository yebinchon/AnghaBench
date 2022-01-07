
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fclose (void*) ;

__attribute__((used)) static void
do_fclose_cleanup (void *stream)
{
  fclose (stream);
}
