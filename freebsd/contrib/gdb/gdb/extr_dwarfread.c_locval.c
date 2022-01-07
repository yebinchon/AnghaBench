
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dieinfo {char* at_location; int isreg; int offreg; int optimized_out; void* basereg; } ;


 int AT_location ;
 int DIE_ID ;
 int DIE_NAME ;
 long DWARF_REG_TO_REGNUM (void*) ;
 int GET_SIGNED ;
 int GET_UNSIGNED ;







 int SIZEOF_LOC_ATOM_CODE ;
 int TARGET_FT_LONG_SIZE (int ) ;
 unsigned short attribute_size (int ) ;
 int complaint (int *,char*,int ,int ,long) ;
 int current_objfile ;
 int symfile_complaints ;
 void* target_to_host (char*,int,int ,int ) ;

__attribute__((used)) static int
locval (struct dieinfo *dip)
{
  unsigned short nbytes;
  unsigned short locsize;
  auto long stack[64];
  int stacki;
  char *loc;
  char *end;
  int loc_atom_code;
  int loc_value_size;

  loc = dip->at_location;
  nbytes = attribute_size (AT_location);
  locsize = target_to_host (loc, nbytes, GET_UNSIGNED, current_objfile);
  loc += nbytes;
  end = loc + locsize;
  stacki = 0;
  stack[stacki] = 0;
  dip->isreg = 0;
  dip->offreg = 0;
  dip->optimized_out = 1;
  loc_value_size = TARGET_FT_LONG_SIZE (current_objfile);
  while (loc < end)
    {
      dip->optimized_out = 0;
      loc_atom_code = target_to_host (loc, SIZEOF_LOC_ATOM_CODE, GET_UNSIGNED,
          current_objfile);
      loc += SIZEOF_LOC_ATOM_CODE;
      switch (loc_atom_code)
 {
 case 0:

   loc = end;
   break;
 case 128:

   stack[++stacki]
     = DWARF_REG_TO_REGNUM (target_to_host (loc, loc_value_size,
         GET_UNSIGNED,
         current_objfile));
   loc += loc_value_size;
   dip->isreg = 1;
   break;
 case 132:



   dip->offreg = 1;
   dip->basereg = target_to_host (loc, loc_value_size, GET_UNSIGNED,
      current_objfile);
   loc += loc_value_size;
   stack[++stacki] = 0;
   break;
 case 133:

   stack[++stacki] = target_to_host (loc, loc_value_size,
         GET_UNSIGNED, current_objfile);
   loc += loc_value_size;
   break;
 case 131:

   stack[++stacki] = target_to_host (loc, loc_value_size,
         GET_SIGNED, current_objfile);
   loc += loc_value_size;
   break;
 case 130:

   complaint (&symfile_complaints,
       "DIE @ 0x%x \"%s\", OP_DEREF2 address 0x%lx not handled",
       DIE_ID, DIE_NAME, stack[stacki]);
   break;
 case 129:
   complaint (&symfile_complaints,
       "DIE @ 0x%x \"%s\", OP_DEREF4 address 0x%lx not handled",
       DIE_ID, DIE_NAME, stack[stacki]);
   break;
 case 134:
   stack[stacki - 1] += stack[stacki];
   stacki--;
   break;
 }
    }
  return (stack[stacki]);
}
