
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int dummy; } ;
struct dieinfo {char* die; int die_length; int at_fund_type; int at_ordering; int at_bit_offset; int at_sibling; int at_stmt_list; int has_at_stmt_list; int at_low_pc; int has_at_low_pc; int at_high_pc; int at_language; int at_user_def_type; int at_byte_size; int has_at_byte_size; int at_bit_size; int at_member; int at_discr; char* at_location; char* at_mod_fund_type; char* at_subscr_data; char* at_mod_u_d_type; char* at_element_list; int short_element_list; char* at_discr_value; char* at_string_length; char* at_name; char* at_comp_dir; char* at_producer; int at_start_scope; int at_stride_size; int at_src_info; char* at_prototyped; } ;
 int DIE_ID ;
 int DIE_NAME ;






 unsigned short FORM_FROM_ATTR (unsigned short) ;


 int GET_UNSIGNED ;
 int SIZEOF_ATTRIBUTE ;
 scalar_t__ SIZEOF_DIE_LENGTH ;
 scalar_t__ SIZEOF_DIE_TAG ;
 int TARGET_FT_POINTER_SIZE (struct objfile*) ;
 int attribute_size (unsigned short) ;
 int baseaddr ;
 int complaint (int *,char*,int ,int ) ;
 int diecount ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;
 int symfile_complaints ;
 int target_to_host (char*,int,int ,struct objfile*) ;
 int unknown_attribute_form_complaint (int ,int ,unsigned short) ;

__attribute__((used)) static void
completedieinfo (struct dieinfo *dip, struct objfile *objfile)
{
  char *diep;
  char *end;
  unsigned short attr;
  unsigned short form;
  int nbytes;

  diecount++;
  diep = dip->die;
  end = diep + dip->die_length;
  diep += SIZEOF_DIE_LENGTH + SIZEOF_DIE_TAG;
  while (diep < end)
    {
      attr = target_to_host (diep, SIZEOF_ATTRIBUTE, GET_UNSIGNED, objfile);
      diep += SIZEOF_ATTRIBUTE;
      nbytes = attribute_size (attr);
      if (nbytes == -1)
 {
   complaint (&symfile_complaints,
       "DIE @ 0x%x \"%s\", unknown attribute length, skipped remaining attributes",
       DIE_ID, DIE_NAME);
   diep = end;
   continue;
 }
      switch (attr)
 {
 case 156:
   dip->at_fund_type = target_to_host (diep, nbytes, GET_UNSIGNED,
           objfile);
   break;
 case 147:
   dip->at_ordering = target_to_host (diep, nbytes, GET_UNSIGNED,
          objfile);
   break;
 case 163:
   dip->at_bit_offset = target_to_host (diep, nbytes, GET_UNSIGNED,
            objfile);
   break;
 case 143:
   dip->at_sibling = target_to_host (diep, nbytes, GET_UNSIGNED,
         objfile);
   break;
 case 140:
   dip->at_stmt_list = target_to_host (diep, nbytes, GET_UNSIGNED,
           objfile);
   dip->has_at_stmt_list = 1;
   break;
 case 152:
   dip->at_low_pc = target_to_host (diep, nbytes, GET_UNSIGNED,
        objfile);
   dip->at_low_pc += baseaddr;
   dip->has_at_low_pc = 1;
   break;
 case 155:
   dip->at_high_pc = target_to_host (diep, nbytes, GET_UNSIGNED,
         objfile);
   dip->at_high_pc += baseaddr;
   break;
 case 154:
   dip->at_language = target_to_host (diep, nbytes, GET_UNSIGNED,
          objfile);
   break;
 case 136:
   dip->at_user_def_type = target_to_host (diep, nbytes,
        GET_UNSIGNED, objfile);
   break;
 case 161:
   dip->at_byte_size = target_to_host (diep, nbytes, GET_UNSIGNED,
           objfile);
   dip->has_at_byte_size = 1;
   break;
 case 162:
   dip->at_bit_size = target_to_host (diep, nbytes, GET_UNSIGNED,
          objfile);
   break;
 case 151:
   dip->at_member = target_to_host (diep, nbytes, GET_UNSIGNED,
        objfile);
   break;
 case 159:
   dip->at_discr = target_to_host (diep, nbytes, GET_UNSIGNED,
       objfile);
   break;
 case 153:
   dip->at_location = diep;
   break;
 case 150:
   dip->at_mod_fund_type = diep;
   break;
 case 137:
   dip->at_subscr_data = diep;
   break;
 case 149:
   dip->at_mod_u_d_type = diep;
   break;
 case 157:
   dip->at_element_list = diep;
   dip->short_element_list = 0;
   break;
 case 144:
   dip->at_element_list = diep;
   dip->short_element_list = 1;
   break;
 case 158:
   dip->at_discr_value = diep;
   break;
 case 138:
   dip->at_string_length = diep;
   break;
 case 148:
   dip->at_name = diep;
   break;
 case 160:


   dip->at_comp_dir = strrchr (diep, ':');
   if (dip->at_comp_dir != ((void*)0))
     {
       dip->at_comp_dir++;
     }
   else
     {
       dip->at_comp_dir = diep;
     }
   break;
 case 146:
   dip->at_producer = diep;
   break;
 case 141:
   dip->at_start_scope = target_to_host (diep, nbytes, GET_UNSIGNED,
      objfile);
   break;
 case 139:
   dip->at_stride_size = target_to_host (diep, nbytes, GET_UNSIGNED,
      objfile);
   break;
 case 142:
   dip->at_src_info = target_to_host (diep, nbytes, GET_UNSIGNED,
          objfile);
   break;
 case 145:
   dip->at_prototyped = diep;
   break;
 default:





   break;
 }
      form = FORM_FROM_ATTR (attr);
      switch (form)
 {
 case 132:
   diep += 2;
   break;
 case 131:
 case 129:
   diep += 4;
   break;
 case 130:
   diep += 8;
   break;
 case 135:
   diep += TARGET_FT_POINTER_SIZE (objfile);
   break;
 case 134:
   diep += 2 + target_to_host (diep, nbytes, GET_UNSIGNED, objfile);
   break;
 case 133:
   diep += 4 + target_to_host (diep, nbytes, GET_UNSIGNED, objfile);
   break;
 case 128:
   diep += strlen (diep) + 1;
   break;
 default:
   unknown_attribute_form_complaint (DIE_ID, DIE_NAME, form);
   diep = end;
   break;
 }
    }
}
