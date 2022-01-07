
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct search_path {struct search_path* next; int dir; int * member_2; int * member_1; int * member_0; } ;
struct dtc_file {char* dir; char* name; int file; } ;


 scalar_t__ ENOENT ;
 int die (char*,char const*,int ) ;
 scalar_t__ dtc_open_one (struct dtc_file*,int ,char const*) ;
 scalar_t__ errno ;
 int fopen (char const*,char*) ;
 int memcpy (char*,char const*,int) ;
 int stdin ;
 char* strdup (char const*) ;
 scalar_t__ streq (char const*,char*) ;
 int strerror (scalar_t__) ;
 char* strrchr (char const*,char) ;
 void* xmalloc (int) ;

struct dtc_file *dtc_open_file(const char *fname,
                               const struct search_path *search)
{
 static const struct search_path default_search = { ((void*)0), ((void*)0), ((void*)0) };

 struct dtc_file *file;
 const char *slash;

 file = xmalloc(sizeof(struct dtc_file));

 slash = strrchr(fname, '/');
 if (slash) {
  char *dir = xmalloc(slash - fname + 1);

  memcpy(dir, fname, slash - fname);
  dir[slash - fname] = 0;
  file->dir = dir;
 } else {
  file->dir = ((void*)0);
 }

 if (streq(fname, "-")) {
  file->name = "stdin";
  file->file = stdin;
  return file;
 }

 if (fname[0] == '/') {
  file->file = fopen(fname, "r");
  if (!file->file)
   goto fail;

  file->name = strdup(fname);
  return file;
 }

 if (!search)
  search = &default_search;

 while (search) {
  if (dtc_open_one(file, search->dir, fname))
   return file;

  if (errno != ENOENT)
   goto fail;

  search = search->next;
 }

fail:
 die("Couldn't open \"%s\": %s\n", fname, strerror(errno));
}
