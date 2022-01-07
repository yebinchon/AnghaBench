
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_OK ;
 size_t PATH_MAX ;
 scalar_t__ access (char*,int ) ;
 int free (char*) ;
 scalar_t__ readlink (char*,char*,size_t const) ;
 int snprintf (char*,size_t const,char*,char const*,char const*,char const*) ;
 scalar_t__ unlink (char*) ;
 char* zalloc (size_t const) ;

int build_id_cache__remove_s(const char *sbuild_id, const char *debugdir)
{
 const size_t size = PATH_MAX;
 char *filename = zalloc(size),
      *linkname = zalloc(size);
 int err = -1;

 if (filename == ((void*)0) || linkname == ((void*)0))
  goto out_free;

 snprintf(linkname, size, "%s/.build-id/%.2s/%s",
   debugdir, sbuild_id, sbuild_id + 2);

 if (access(linkname, F_OK))
  goto out_free;

 if (readlink(linkname, filename, size - 1) < 0)
  goto out_free;

 if (unlink(linkname))
  goto out_free;




 snprintf(linkname, size, "%s/.build-id/%.2s/%s",
   debugdir, sbuild_id, filename);

 if (unlink(linkname))
  goto out_free;

 err = 0;
out_free:
 free(filename);
 free(linkname);
 return err;
}
