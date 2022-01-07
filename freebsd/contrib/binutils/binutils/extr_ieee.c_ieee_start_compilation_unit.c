
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee_handle {char const* filename; char* modname; unsigned int name_indx; int vars; int types; int * ranges; int linenos; int cxx; } ;
typedef int bfd_boolean ;


 int FALSE ;
 int TRUE ;
 scalar_t__ ieee_bb_record_enum ;
 int ieee_change_buffer (struct ieee_handle*,int *) ;
 int ieee_finish_compilation_unit (struct ieee_handle*) ;
 int ieee_init_buffer (struct ieee_handle*,int *) ;
 int ieee_write_byte (struct ieee_handle*,int) ;
 int ieee_write_id (struct ieee_handle*,char*) ;
 int ieee_write_number (struct ieee_handle*,int ) ;
 void* strrchr (char const*,char) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static bfd_boolean
ieee_start_compilation_unit (void *p, const char *filename)
{
  struct ieee_handle *info = (struct ieee_handle *) p;
  const char *modname;



  char *c, *s;
  unsigned int nindx;

  if (info->filename != ((void*)0))
    {
      if (! ieee_finish_compilation_unit (info))
 return FALSE;
    }

  info->filename = filename;
  modname = strrchr (filename, '/');







  if (modname != ((void*)0))
    ++modname;




  else
    modname = filename;

  c = xstrdup (modname);
  s = strrchr (c, '.');
  if (s != ((void*)0))
    *s = '\0';
  info->modname = c;

  if (! ieee_init_buffer (info, &info->types)
      || ! ieee_init_buffer (info, &info->vars)
      || ! ieee_init_buffer (info, &info->cxx)
      || ! ieee_init_buffer (info, &info->linenos))
    return FALSE;
  info->ranges = ((void*)0);



  if (! ieee_change_buffer (info, &info->types)
      || ! ieee_write_byte (info, (int) ieee_bb_record_enum)
      || ! ieee_write_byte (info, 1)
      || ! ieee_write_number (info, 0)
      || ! ieee_write_id (info, info->modname))
    return FALSE;

  nindx = info->name_indx;
  ++info->name_indx;
  if (! ieee_change_buffer (info, &info->vars)
      || ! ieee_write_byte (info, (int) ieee_bb_record_enum)
      || ! ieee_write_byte (info, 3)
      || ! ieee_write_number (info, 0)
      || ! ieee_write_id (info, info->modname))
    return FALSE;

  return TRUE;
}
