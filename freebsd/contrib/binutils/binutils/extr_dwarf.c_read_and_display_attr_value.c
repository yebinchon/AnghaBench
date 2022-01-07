
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uvalue ;
struct TYPE_3__ {unsigned int max_loc_offsets; unsigned int num_loc_offsets; int* loc_offsets; int* have_frame_base; unsigned long base_address; unsigned int max_range_lists; unsigned int num_range_lists; int* range_lists; } ;
typedef TYPE_1__ debug_info ;
 unsigned long DW_ATE_hi_user ;

 unsigned long DW_ATE_lo_user ;
 unsigned long DW_CC_hi_user ;
 unsigned long DW_CC_lo_user ;
 unsigned long DW_LANG_hi_user ;
 unsigned long DW_LANG_lo_user ;






 char* _ (char*) ;
 unsigned long byte_get (unsigned char*,int) ;
 int decode_location_expression (unsigned char*,unsigned long,unsigned long,unsigned long) ;
 unsigned char* display_block (unsigned char*,unsigned long) ;
 scalar_t__ do_debug_loc ;
 scalar_t__ do_debug_ranges ;
 int error (char*) ;
 int fetch_indirect_string (unsigned long) ;
 char* get_FORM_name (unsigned long) ;
 int have_frame_base ;
 int need_base_address ;
 scalar_t__ num_debug_info_entries ;
 int printf (char*,...) ;
 unsigned long read_leb128 (unsigned char*,unsigned int*,int) ;
 int strlen (char*) ;
 int warn (char*,unsigned long) ;
 void* xcrealloc (int*,unsigned int,int) ;

__attribute__((used)) static unsigned char *
read_and_display_attr_value (unsigned long attribute,
        unsigned long form,
        unsigned char *data,
        unsigned long cu_offset,
        unsigned long pointer_size,
        unsigned long offset_size,
        int dwarf_version,
        debug_info *debug_info_p,
        int do_loc)
{
  unsigned long uvalue = 0;
  unsigned char *block_start = ((void*)0);
  unsigned int bytes_read;

  switch (form)
    {
    default:
      break;

    case 168:
      if (dwarf_version == 2)
 {
   uvalue = byte_get (data, pointer_size);
   data += pointer_size;
 }
      else if (dwarf_version == 3)
 {
   uvalue = byte_get (data, offset_size);
   data += offset_size;
 }
      else
 {
   error (_("Internal error: DWARF version is not 2 or 3.\n"));
 }
      break;

    case 184:
      uvalue = byte_get (data, pointer_size);
      data += pointer_size;
      break;

    case 164:
      uvalue = byte_get (data, offset_size);
      data += offset_size;
      break;

    case 174:
      uvalue = 1;
      break;

    case 172:
    case 175:
    case 179:
      uvalue = byte_get (data++, 1);
      break;

    case 171:
    case 178:
      uvalue = byte_get (data, 2);
      data += 2;
      break;

    case 170:
    case 177:
      uvalue = byte_get (data, 4);
      data += 4;
      break;

    case 166:
      uvalue = read_leb128 (data, & bytes_read, 1);
      data += bytes_read;
      break;

    case 167:
    case 163:
      uvalue = read_leb128 (data, & bytes_read, 0);
      data += bytes_read;
      break;

    case 173:
      form = read_leb128 (data, & bytes_read, 0);
      data += bytes_read;
      if (!do_loc)
 printf (" %s", get_FORM_name (form));
      return read_and_display_attr_value (attribute, form, data,
       cu_offset, pointer_size,
       offset_size, dwarf_version,
       debug_info_p, do_loc);
    }

  switch (form)
    {
    case 168:
      if (!do_loc)
 printf (" <#%lx>", uvalue);
      break;

    case 172:
    case 171:
    case 170:
    case 167:
      if (!do_loc)
 printf (" <%lx>", uvalue + cu_offset);
      break;

    case 177:
    case 184:
      if (!do_loc)
 printf (" %#lx", uvalue);
      break;

    case 174:
    case 175:
    case 179:
    case 178:
    case 166:
    case 163:
      if (!do_loc)
 printf (" %ld", uvalue);
      break;

    case 169:
    case 176:
      if (!do_loc)
 {
   uvalue = byte_get (data, 4);
   printf (" %lx", uvalue);
   printf (" %lx", (unsigned long) byte_get (data + 4, 4));
 }
      if ((do_loc || do_debug_loc || do_debug_ranges)
   && num_debug_info_entries == 0)
 {
   if (sizeof (uvalue) == 8)
     uvalue = byte_get (data, 8);
   else
     error (_("DW_FORM_data8 is unsupported when sizeof (unsigned long) != 8\n"));
 }
      data += 8;
      break;

    case 165:
      if (!do_loc)
 printf (" %s", data);
      data += strlen ((char *) data) + 1;
      break;

    case 183:
      uvalue = read_leb128 (data, & bytes_read, 0);
      block_start = data + bytes_read;
      if (do_loc)
 data = block_start + uvalue;
      else
 data = display_block (block_start, uvalue);
      break;

    case 182:
      uvalue = byte_get (data, 1);
      block_start = data + 1;
      if (do_loc)
 data = block_start + uvalue;
      else
 data = display_block (block_start, uvalue);
      break;

    case 181:
      uvalue = byte_get (data, 2);
      block_start = data + 2;
      if (do_loc)
 data = block_start + uvalue;
      else
 data = display_block (block_start, uvalue);
      break;

    case 180:
      uvalue = byte_get (data, 4);
      block_start = data + 4;
      if (do_loc)
 data = block_start + uvalue;
      else
 data = display_block (block_start, uvalue);
      break;

    case 164:
      if (!do_loc)
 printf (_(" (indirect string, offset: 0x%lx): %s"),
  uvalue, fetch_indirect_string (uvalue));
      break;

    case 173:

      break;

    default:
      warn (_("Unrecognized form: %lu\n"), form);
      break;
    }


  if ((do_loc || do_debug_loc || do_debug_ranges)
      && num_debug_info_entries == 0)
    {
      switch (attribute)
 {
 case 201:
   have_frame_base = 1;
 case 197:
 case 203:
 case 188:
 case 207:
 case 206:
 case 204:
 case 192:
 case 191:
 case 195:
   if (form == 177 || form == 176)
     {

       unsigned int max = debug_info_p->max_loc_offsets;
       unsigned int num = debug_info_p->num_loc_offsets;

       if (max == 0 || num >= max)
  {
    max += 1024;
    debug_info_p->loc_offsets
      = xcrealloc (debug_info_p->loc_offsets,
     max, sizeof (*debug_info_p->loc_offsets));
    debug_info_p->have_frame_base
      = xcrealloc (debug_info_p->have_frame_base,
     max, sizeof (*debug_info_p->have_frame_base));
    debug_info_p->max_loc_offsets = max;
  }
       debug_info_p->loc_offsets [num] = uvalue;
       debug_info_p->have_frame_base [num] = have_frame_base;
       debug_info_p->num_loc_offsets++;
     }
   break;

 case 196:
   if (need_base_address)
     debug_info_p->base_address = uvalue;
   break;

 case 193:
   if (form == 177 || form == 176)
     {

       unsigned int max = debug_info_p->max_range_lists;
       unsigned int num = debug_info_p->num_range_lists;

       if (max == 0 || num >= max)
  {
    max += 1024;
    debug_info_p->range_lists
      = xcrealloc (debug_info_p->range_lists,
     max, sizeof (*debug_info_p->range_lists));
    debug_info_p->max_range_lists = max;
  }
       debug_info_p->range_lists [num] = uvalue;
       debug_info_p->num_range_lists++;
     }
   break;

 default:
   break;
 }
    }

  if (do_loc)
    return data;

  printf ("\t");

  switch (attribute)
    {
    case 199:
      switch (uvalue)
 {
 case 155:
   printf (_("(not inlined)"));
   break;
 case 156:
   printf (_("(inlined)"));
   break;
 case 157:
   printf (_("(declared as inline but ignored)"));
   break;
 case 158:
   printf (_("(declared as inline and inlined)"));
   break;
 default:
   printf (_("  (Unknown inline attribute value: %lx)"), uvalue);
   break;
 }
      break;

    case 198:
      switch (uvalue)
 {

 case 151: printf ("(ANSI C)"); break;
 case 152: printf ("(non-ANSI C)"); break;
 case 154: printf ("(Ada)"); break;
 case 149: printf ("(C++)"); break;
 case 148: printf ("(Cobol 74)"); break;
 case 147: printf ("(Cobol 85)"); break;
 case 145: printf ("(FORTRAN 77)"); break;
 case 144: printf ("(Fortran 90)"); break;
 case 136: printf ("(ANSI Pascal)"); break;
 case 140: printf ("(Modula 2)"); break;

 case 142: printf ("(Java)"); break;
 case 150: printf ("(ANSI C99)"); break;
 case 153: printf ("(ADA 95)"); break;
 case 143: printf ("(Fortran 95)"); break;

 case 137: printf ("(PLI)"); break;
 case 139: printf ("(Objective C)"); break;
 case 138: printf ("(Objective C++)"); break;
 case 135: printf ("(Unified Parallel C)"); break;
 case 146: printf ("(D)"); break;

 case 141: printf ("(MIPS assembler)"); break;

 case 134: printf ("(Unified Parallel C)"); break;
 default:
   if (uvalue >= DW_LANG_lo_user && uvalue <= DW_LANG_hi_user)
     printf ("(implementation defined: %lx)", uvalue);
   else
     printf ("(Unknown: %lx)", uvalue);
   break;
 }
      break;

    case 202:
      switch (uvalue)
 {
 case 209: printf ("(void)"); break;
 case 219: printf ("(machine address)"); break;
 case 218: printf ("(boolean)"); break;
 case 217: printf ("(complex float)"); break;
 case 215: printf ("(float)"); break;
 case 213: printf ("(signed)"); break;
 case 212: printf ("(signed char)"); break;
 case 211: printf ("(unsigned)"); break;
 case 210: printf ("(unsigned char)"); break;

 case 214: printf ("(imaginary float)"); break;
 case 216: printf ("(decimal float)"); break;
 default:
   if (uvalue >= DW_ATE_lo_user
       && uvalue <= DW_ATE_hi_user)
     printf ("(user defined type)");
   else
     printf ("(unknown type)");
   break;
 }
      break;

    case 208:
      switch (uvalue)
 {
 case 220: printf ("(public)"); break;
 case 221: printf ("(protected)"); break;
 case 222: printf ("(private)"); break;
 default:
   printf ("(unknown accessibility)");
   break;
 }
      break;

    case 189:
      switch (uvalue)
 {
 case 129: printf ("(local)"); break;
 case 130: printf ("(exported)"); break;
 case 128: printf ("(qualified)"); break;
 default: printf ("(unknown visibility)"); break;
 }
      break;

    case 190:
      switch (uvalue)
 {
 case 133: printf ("(none)"); break;
 case 131: printf ("(virtual)"); break;
 case 132:printf ("(pure_virtual)"); break;
 default: printf ("(unknown virtuality)"); break;
 }
      break;

    case 200:
      switch (uvalue)
 {
 case 161: printf ("(case_sensitive)"); break;
 case 159: printf ("(up_case)"); break;
 case 160: printf ("(down_case)"); break;
 case 162: printf ("(case_insensitive)"); break;
 default: printf ("(unknown case)"); break;
 }
      break;

    case 205:
      switch (uvalue)
 {
 case 186: printf ("(normal)"); break;
 case 185: printf ("(program)"); break;
 case 187: printf ("(nocall)"); break;
 default:
   if (uvalue >= DW_CC_lo_user
       && uvalue <= DW_CC_hi_user)
     printf ("(user defined)");
   else
     printf ("(unknown convention)");
 }
      break;

    case 194:
      switch (uvalue)
 {
 case -1: printf ("(undefined)"); break;
 case 0: printf ("(row major)"); break;
 case 1: printf ("(column major)"); break;
 }
      break;

    case 201:
      have_frame_base = 1;
    case 197:
    case 203:
    case 188:
    case 207:
    case 206:
    case 204:
    case 192:
    case 191:
    case 195:
      if (block_start)
 {
   int need_frame_base;

   printf ("(");
   need_frame_base = decode_location_expression (block_start,
       pointer_size,
       uvalue,
       cu_offset);
   printf (")");
   if (need_frame_base && !have_frame_base)
     printf (_(" [without DW_AT_frame_base]"));
 }
      else if (form == 177 || form == 176)
 printf (_("(location list)"));

      break;

    default:
      break;
    }

  return data;
}
