
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtc_file {struct dtc_file* dir; int name; int file; } ;


 int die (char*,int ,int ) ;
 int errno ;
 scalar_t__ fclose (int ) ;
 int free (struct dtc_file*) ;
 int strerror (int ) ;

void dtc_close_file(struct dtc_file *file)
{
 if (fclose(file->file))
  die("Error closing \"%s\": %s\n", file->name, strerror(errno));

 free(file->dir);
 free(file);
}
