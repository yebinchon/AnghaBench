
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int BINFO_VPTR_FIELD (int ) ;
 scalar_t__ DEBUG_MANGLE ;
 int DECL_THUNK_P (int ) ;
 int NULL_TREE ;
 int THUNK_FIXED_OFFSET (int ) ;
 int THUNK_TARGET (int ) ;
 int THUNK_VIRTUAL_OFFSET (int ) ;
 char* finish_mangling (int) ;
 int fprintf (int ,char*,char const*) ;
 int get_identifier_nocopy (char const*) ;
 int integer_zero_node ;
 int mangle_call_offset (int ,int ) ;
 int ssize_int (int ) ;
 int start_mangling (int ,int) ;
 int stderr ;
 int write_char (char) ;
 int write_encoding (int ) ;
 int write_string (char*) ;

tree
mangle_thunk (tree fn_decl, const int this_adjusting, tree fixed_offset,
       tree virtual_offset)
{
  const char *result;

  start_mangling (fn_decl, 1);

  write_string ("_Z");
  write_char ('T');

  if (!this_adjusting)
    {

      write_char ('c');
      mangle_call_offset (integer_zero_node, NULL_TREE);
      mangle_call_offset (fixed_offset, virtual_offset);
    }
  else if (!DECL_THUNK_P (fn_decl))

    mangle_call_offset (fixed_offset, virtual_offset);
  else
    {

      write_char ('c');
      mangle_call_offset (fixed_offset, virtual_offset);
      fixed_offset = ssize_int (THUNK_FIXED_OFFSET (fn_decl));
      virtual_offset = THUNK_VIRTUAL_OFFSET (fn_decl);
      if (virtual_offset)
 virtual_offset = BINFO_VPTR_FIELD (virtual_offset);
      mangle_call_offset (fixed_offset, virtual_offset);
      fn_decl = THUNK_TARGET (fn_decl);
    }


  write_encoding (fn_decl);

  result = finish_mangling ( 0);
  if (DEBUG_MANGLE)
    fprintf (stderr, "mangle_thunk = %s\n\n", result);
  return get_identifier_nocopy (result);
}
