
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {struct file_line* files; } ;
struct file_line {struct file_line* next; } ;


 struct file_line* file_line__new (char*,int) ;

__attribute__((used)) static int message__add_file_line(struct message *self, char *file, int lineno)
{
 int rc = -1;
 struct file_line *fl = file_line__new(file, lineno);

 if (fl == ((void*)0))
  goto out;

 fl->next = self->files;
 self->files = fl;
 rc = 0;
out:
 return rc;
}
