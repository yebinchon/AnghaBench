
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {char const* name; struct file* next; } ;


 struct file* file_list ;
 int free (void*) ;
 struct file* malloc (int) ;
 int memset (struct file*,int ,int) ;
 int strcmp (char const*,char const*) ;
 char* sym_expand_string_value (char const*) ;

struct file *file_lookup(const char *name)
{
 struct file *file;
 const char *file_name = sym_expand_string_value(name);

 for (file = file_list; file; file = file->next) {
  if (!strcmp(name, file->name)) {
   free((void *)file_name);
   return file;
  }
 }

 file = malloc(sizeof(*file));
 memset(file, 0, sizeof(*file));
 file->name = file_name;
 file->next = file_list;
 file_list = file;
 return file;
}
