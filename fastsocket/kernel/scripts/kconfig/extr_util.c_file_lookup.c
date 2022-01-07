
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct file* next; int name; } ;


 struct file* file_list ;
 struct file* malloc (int) ;
 int memset (struct file*,int ,int) ;
 int strcmp (char const*,int ) ;
 int strdup (char const*) ;

struct file *file_lookup(const char *name)
{
 struct file *file;

 for (file = file_list; file; file = file->next) {
  if (!strcmp(name, file->name))
   return file;
 }

 file = malloc(sizeof(*file));
 memset(file, 0, sizeof(*file));
 file->name = strdup(name);
 file->next = file_list;
 file_list = file;
 return file;
}
