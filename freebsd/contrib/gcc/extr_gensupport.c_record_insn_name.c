
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** insn_name_ptr ;
 int insn_name_ptr_size ;
 int memset (char**,int ,int) ;
 int sprintf (char*,char*,char const*,int) ;
 scalar_t__ strlen (char const*) ;
 char* xmalloc (scalar_t__) ;
 char** xrealloc (char**,int) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static void
record_insn_name (int code, const char *name)
{
  static const char *last_real_name = "insn";
  static int last_real_code = 0;
  char *new;

  if (insn_name_ptr_size <= code)
    {
      int new_size;
      new_size = (insn_name_ptr_size ? insn_name_ptr_size * 2 : 512);
      insn_name_ptr = xrealloc (insn_name_ptr, sizeof(char *) * new_size);
      memset (insn_name_ptr + insn_name_ptr_size, 0,
       sizeof(char *) * (new_size - insn_name_ptr_size));
      insn_name_ptr_size = new_size;
    }

  if (!name || name[0] == '\0')
    {
      new = xmalloc (strlen (last_real_name) + 10);
      sprintf (new, "%s+%d", last_real_name, code - last_real_code);
    }
  else
    {
      last_real_name = new = xstrdup (name);
      last_real_code = code;
    }

  insn_name_ptr[code] = new;
}
