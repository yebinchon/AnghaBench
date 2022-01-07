
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 char* calloc (unsigned int,int) ;
 int* dump_sects ;
 int error (int ) ;
 int free (int*) ;
 int memcpy (char*,int*,unsigned int) ;
 unsigned int num_dump_sects ;

__attribute__((used)) static void
request_dump (unsigned int section, int type)
{
  if (section >= num_dump_sects)
    {
      char *new_dump_sects;

      new_dump_sects = calloc (section + 1, 1);

      if (new_dump_sects == ((void*)0))
 error (_("Out of memory allocating dump request table.\n"));
      else
 {

   memcpy (new_dump_sects, dump_sects, num_dump_sects);

   free (dump_sects);

   dump_sects = new_dump_sects;
   num_dump_sects = section + 1;
 }
    }

  if (dump_sects)
    dump_sects[section] |= type;

  return;
}
