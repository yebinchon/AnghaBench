
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_driver {char** board_name; unsigned int num_names; int offset; } ;


 scalar_t__ strcmp (char const* const,char const*) ;

void *comedi_recognize(struct comedi_driver *driv, const char *name)
{
 unsigned i;
 const char *const *name_ptr = driv->board_name;
 for (i = 0; i < driv->num_names; i++) {
  if (strcmp(*name_ptr, name) == 0)
   return (void *)name_ptr;
  name_ptr =
      (const char *const *)((const char *)name_ptr +
       driv->offset);
 }

 return ((void*)0);
}
