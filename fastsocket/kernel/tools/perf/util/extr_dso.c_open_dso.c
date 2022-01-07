
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machine {char* root_dir; } ;
struct dso {int data_type; } ;


 int EINVAL ;
 int ENOMEM ;
 int O_RDONLY ;
 int PATH_MAX ;
 scalar_t__ dso__binary_type_file (struct dso*,int ,char*,char*,int ) ;
 int free (char*) ;
 char* malloc (int ) ;
 int open (char*,int ) ;

__attribute__((used)) static int open_dso(struct dso *dso, struct machine *machine)
{
 char *root_dir = (char *) "";
 char *name;
 int fd;

 name = malloc(PATH_MAX);
 if (!name)
  return -ENOMEM;

 if (machine)
  root_dir = machine->root_dir;

 if (dso__binary_type_file(dso, dso->data_type,
      root_dir, name, PATH_MAX)) {
  free(name);
  return -EINVAL;
 }

 fd = open(name, O_RDONLY);
 free(name);
 return fd;
}
