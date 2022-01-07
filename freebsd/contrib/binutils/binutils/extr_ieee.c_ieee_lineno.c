
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee_handle {char* filename; char* pending_lineno_filename; scalar_t__ pending_lineno_addr; int lineno_name_indx; int name_indx; char* lineno_filename; int pending_lineno; int linenos; } ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_boolean ;


 int FALSE ;
 int TRUE ;
 int assert (int ) ;
 scalar_t__ ieee_atn_record_enum ;
 scalar_t__ ieee_bb_record_enum ;
 scalar_t__ ieee_be_record_enum ;
 int ieee_buffer_emptyp (int *) ;
 int ieee_change_buffer (struct ieee_handle*,int *) ;
 scalar_t__ ieee_nn_record ;
 int ieee_write_2bytes (struct ieee_handle*,int) ;
 int ieee_write_asn (struct ieee_handle*,int,scalar_t__) ;
 int ieee_write_byte (struct ieee_handle*,int) ;
 int ieee_write_id (struct ieee_handle*,char*) ;
 int ieee_write_number (struct ieee_handle*,int) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static bfd_boolean
ieee_lineno (void *p, const char *filename, unsigned long lineno, bfd_vma addr)
{
  struct ieee_handle *info = (struct ieee_handle *) p;

  assert (info->filename != ((void*)0));





  if (info->pending_lineno_filename != ((void*)0)
      && addr != info->pending_lineno_addr)
    {

      if (! ieee_buffer_emptyp (&info->linenos))
 {
   if (! ieee_change_buffer (info, &info->linenos))
     return FALSE;
 }
      else
 {
   info->lineno_name_indx = info->name_indx;
   ++info->name_indx;
   if (! ieee_change_buffer (info, &info->linenos)
       || ! ieee_write_byte (info, (int) ieee_bb_record_enum)
       || ! ieee_write_byte (info, 5)
       || ! ieee_write_number (info, 0)
       || ! ieee_write_id (info, info->filename)
       || ! ieee_write_byte (info, (int) ieee_nn_record)
       || ! ieee_write_number (info, info->lineno_name_indx)
       || ! ieee_write_id (info, ""))
     return FALSE;
   info->lineno_filename = info->filename;
 }

      if (strcmp (info->pending_lineno_filename, info->lineno_filename) != 0)
 {
   if (strcmp (info->filename, info->lineno_filename) != 0)
     {


       if (! ieee_write_byte (info, (int) ieee_be_record_enum))
  return FALSE;
       if (strcmp (info->filename, info->pending_lineno_filename) == 0)
  {


    info->lineno_name_indx = info->name_indx;
    ++info->name_indx;
    if (! ieee_write_byte (info, (int) ieee_nn_record)
        || ! ieee_write_number (info, info->lineno_name_indx)
        || ! ieee_write_id (info, ""))
      return FALSE;
  }
     }
   if (strcmp (info->filename, info->pending_lineno_filename) != 0)
     {


       info->lineno_name_indx = info->name_indx;
       ++info->name_indx;
       if (! ieee_write_byte (info, (int) ieee_bb_record_enum)
    || ! ieee_write_byte (info, 5)
    || ! ieee_write_number (info, 0)
    || ! ieee_write_id (info, info->pending_lineno_filename)
    || ! ieee_write_byte (info, (int) ieee_nn_record)
    || ! ieee_write_number (info, info->lineno_name_indx)
    || ! ieee_write_id (info, ""))
  return FALSE;
     }
   info->lineno_filename = info->pending_lineno_filename;
 }

      if (! ieee_write_2bytes (info, (int) ieee_atn_record_enum)
   || ! ieee_write_number (info, info->lineno_name_indx)
   || ! ieee_write_number (info, 0)
   || ! ieee_write_number (info, 7)
   || ! ieee_write_number (info, info->pending_lineno)
   || ! ieee_write_number (info, 0)
   || ! ieee_write_asn (info, info->lineno_name_indx,
          info->pending_lineno_addr))
 return FALSE;
    }

  info->pending_lineno_filename = filename;
  info->pending_lineno = lineno;
  info->pending_lineno_addr = addr;

  return TRUE;
}
