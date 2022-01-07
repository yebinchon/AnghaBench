
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int DIE_ID ;
 int DIE_NAME ;
 int FT_INTEGER ;
 int GET_UNSIGNED ;
 int SIZEOF_FMT_FT ;
 int SIZEOF_FORMAT_SPECIFIER ;
 int TARGET_FT_LONG_SIZE (int ) ;
 int complaint (int *,char*,int ,int ,...) ;
 struct type* create_array_type (struct type*,struct type*,struct type*) ;
 struct type* create_range_type (struct type*,struct type*,unsigned long,unsigned long) ;
 int current_objfile ;
 struct type* decode_array_element_type (char*) ;
 struct type* decode_fund_type (unsigned short) ;
 struct type* dwarf_fundamental_type (int ,int ) ;
 int symfile_complaints ;
 void* target_to_host (char*,int,int ,int ) ;

__attribute__((used)) static struct type *
decode_subscript_data_item (char *scan, char *end)
{
  struct type *typep = ((void*)0);
  struct type *nexttype;
  struct type *indextype;
  struct type *rangetype;
  unsigned int format;
  unsigned short fundtype;
  unsigned long lowbound;
  unsigned long highbound;
  int nbytes;

  format = target_to_host (scan, SIZEOF_FORMAT_SPECIFIER, GET_UNSIGNED,
      current_objfile);
  scan += SIZEOF_FORMAT_SPECIFIER;
  switch (format)
    {
    case 136:
      typep = decode_array_element_type (scan);
      break;
    case 135:
      fundtype = target_to_host (scan, SIZEOF_FMT_FT, GET_UNSIGNED,
     current_objfile);
      indextype = decode_fund_type (fundtype);
      scan += SIZEOF_FMT_FT;
      nbytes = TARGET_FT_LONG_SIZE (current_objfile);
      lowbound = target_to_host (scan, nbytes, GET_UNSIGNED, current_objfile);
      scan += nbytes;
      highbound = target_to_host (scan, nbytes, GET_UNSIGNED, current_objfile);
      scan += nbytes;
      nexttype = decode_subscript_data_item (scan, end);
      if (nexttype == ((void*)0))
 {

   complaint (&symfile_complaints,
       "DIE @ 0x%x \"%s\", can't decode subscript data items",
       DIE_ID, DIE_NAME);
   nexttype = dwarf_fundamental_type (current_objfile, FT_INTEGER);
 }
      rangetype = create_range_type ((struct type *) ((void*)0), indextype,
         lowbound, highbound);
      typep = create_array_type ((struct type *) ((void*)0), nexttype, rangetype);
      break;
    case 134:
    case 133:
    case 132:
    case 131:
    case 130:
    case 129:
    case 128:
      complaint (&symfile_complaints,
   "DIE @ 0x%x \"%s\", array subscript format 0x%x not handled yet",
   DIE_ID, DIE_NAME, format);
      nexttype = dwarf_fundamental_type (current_objfile, FT_INTEGER);
      rangetype = create_range_type ((struct type *) ((void*)0), nexttype, 0, 0);
      typep = create_array_type ((struct type *) ((void*)0), nexttype, rangetype);
      break;
    default:
      complaint (&symfile_complaints,
   "DIE @ 0x%x \"%s\", unknown array subscript format %x", DIE_ID,
   DIE_NAME, format);
      nexttype = dwarf_fundamental_type (current_objfile, FT_INTEGER);
      rangetype = create_range_type ((struct type *) ((void*)0), nexttype, 0, 0);
      typep = create_array_type ((struct type *) ((void*)0), nexttype, rangetype);
      break;
    }
  return (typep);
}
