
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debuginfo {int dummy; } ;


 scalar_t__ debuginfo__init_offline_dwarf (struct debuginfo*,char const*) ;
 int free (struct debuginfo*) ;
 struct debuginfo* zalloc (int) ;

struct debuginfo *debuginfo__new(const char *path)
{
 struct debuginfo *self = zalloc(sizeof(struct debuginfo));
 if (!self)
  return ((void*)0);

 if (debuginfo__init_offline_dwarf(self, path) < 0) {
  free(self);
  self = ((void*)0);
 }

 return self;
}
