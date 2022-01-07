
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debuginfo {scalar_t__ dwfl; int dbg; int bias; } ;
typedef int Dwfl_Module ;


 int ENOENT ;
 int O_RDONLY ;
 int close (int) ;
 scalar_t__ dwfl_begin (int *) ;
 int dwfl_end (scalar_t__) ;
 int dwfl_module_getdwarf (int *,int *) ;
 int * dwfl_report_offline (scalar_t__,char*,char*,int) ;
 int memset (struct debuginfo*,int ,int) ;
 int offline_callbacks ;
 int open (char const*,int ) ;

__attribute__((used)) static int debuginfo__init_offline_dwarf(struct debuginfo *self,
      const char *path)
{
 Dwfl_Module *mod;
 int fd;

 fd = open(path, O_RDONLY);
 if (fd < 0)
  return fd;

 self->dwfl = dwfl_begin(&offline_callbacks);
 if (!self->dwfl)
  goto error;

 mod = dwfl_report_offline(self->dwfl, "", "", fd);
 if (!mod)
  goto error;

 self->dbg = dwfl_module_getdwarf(mod, &self->bias);
 if (!self->dbg)
  goto error;

 return 0;
error:
 if (self->dwfl)
  dwfl_end(self->dwfl);
 else
  close(fd);
 memset(self, 0, sizeof(*self));

 return -ENOENT;
}
