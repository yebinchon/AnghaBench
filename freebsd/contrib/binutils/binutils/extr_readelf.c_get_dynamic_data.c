
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_vma ;
typedef int FILE ;


 int _ (char*) ;
 int byte_get (unsigned char*,unsigned int) ;
 void* cmalloc (unsigned int,int) ;
 int error (int ) ;
 unsigned int fread (unsigned char*,unsigned int,unsigned int,int *) ;
 int free (unsigned char*) ;

__attribute__((used)) static bfd_vma *
get_dynamic_data (FILE *file, unsigned int number, unsigned int ent_size)
{
  unsigned char *e_data;
  bfd_vma *i_data;

  e_data = cmalloc (number, ent_size);

  if (e_data == ((void*)0))
    {
      error (_("Out of memory\n"));
      return ((void*)0);
    }

  if (fread (e_data, ent_size, number, file) != number)
    {
      error (_("Unable to read in dynamic data\n"));
      return ((void*)0);
    }

  i_data = cmalloc (number, sizeof (*i_data));

  if (i_data == ((void*)0))
    {
      error (_("Out of memory\n"));
      free (e_data);
      return ((void*)0);
    }

  while (number--)
    i_data[number] = byte_get (e_data + number * ent_size, ent_size);

  free (e_data);

  return i_data;
}
