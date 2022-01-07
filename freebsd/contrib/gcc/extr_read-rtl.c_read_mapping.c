
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapping {struct map_value* values; } ;
struct map_value {int dummy; } ;
struct macro_group {int (* find_builtin ) (char*,int *) ;} ;
typedef int htab_t ;
typedef int FILE ;


 struct map_value** add_map_value (struct map_value**,int,char const*) ;
 struct mapping* add_mapping (struct macro_group*,int ,char*,int *) ;
 int fatal_expected_char (int *,char,int) ;
 int read_name (char*,int *) ;
 int read_skip_spaces (int *) ;
 char* read_string (int *,int) ;
 int stub1 (char*,int *) ;
 int ungetc (int,int *) ;

__attribute__((used)) static struct mapping *
read_mapping (struct macro_group *group, htab_t table, FILE *infile)
{
  char tmp_char[256];
  struct mapping *m;
  struct map_value **end_ptr;
  const char *string;
  int number, c;


  read_name (tmp_char, infile);
  m = add_mapping (group, table, tmp_char, infile);

  c = read_skip_spaces (infile);
  if (c != '[')
    fatal_expected_char (infile, '[', c);


  end_ptr = &m->values;
  c = read_skip_spaces (infile);
  do
    {
      if (c != '(')
 {


   ungetc (c, infile);
   read_name (tmp_char, infile);
   string = "";
 }
      else
 {

   read_name (tmp_char, infile);
   string = read_string (infile, 0);
   c = read_skip_spaces (infile);
   if (c != ')')
     fatal_expected_char (infile, ')', c);
 }
      number = group->find_builtin (tmp_char, infile);
      end_ptr = add_map_value (end_ptr, number, string);
      c = read_skip_spaces (infile);
    }
  while (c != ']');

  c = read_skip_spaces (infile);
  if (c != ')')
    fatal_expected_char (infile, ')', c);

  return m;
}
