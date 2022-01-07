
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flist {int name; scalar_t__ started_p; struct flist* next; int f; } ;
typedef int lang_bitmap ;


 size_t NUM_BASE_FILES ;
 int * base_files ;
 int get_base_file_bitmap (int ) ;
 int oprintf (int ,char*,...) ;
 int put_mangled_filename (int ,int ) ;

__attribute__((used)) static void
finish_root_table (struct flist *flp, const char *pfx, const char *lastname,
     const char *tname, const char *name)
{
  struct flist *fli2;

  for (fli2 = flp; fli2; fli2 = fli2->next)
    if (fli2->started_p)
      {
 oprintf (fli2->f, "  %s\n", lastname);
 oprintf (fli2->f, "};\n\n");
      }

  for (fli2 = flp; fli2; fli2 = fli2->next)
    if (fli2->started_p)
      {
 lang_bitmap bitmap = get_base_file_bitmap (fli2->name);
 int fnum;

 for (fnum = 0; bitmap != 0; fnum++, bitmap >>= 1)
   if (bitmap & 1)
     {
       oprintf (base_files[fnum],
         "extern const struct %s gt_%s_",
         tname, pfx);
       put_mangled_filename (base_files[fnum], fli2->name);
       oprintf (base_files[fnum], "[];\n");
     }
      }

  {
    size_t fnum;
    for (fnum = 0; fnum < NUM_BASE_FILES; fnum++)
      oprintf (base_files [fnum],
        "const struct %s * const %s[] = {\n",
        tname, name);
  }


  for (fli2 = flp; fli2; fli2 = fli2->next)
    if (fli2->started_p)
      {
 lang_bitmap bitmap = get_base_file_bitmap (fli2->name);
 int fnum;

 fli2->started_p = 0;

 for (fnum = 0; bitmap != 0; fnum++, bitmap >>= 1)
   if (bitmap & 1)
     {
       oprintf (base_files[fnum], "  gt_%s_", pfx);
       put_mangled_filename (base_files[fnum], fli2->name);
       oprintf (base_files[fnum], ",\n");
     }
      }

  {
    size_t fnum;
    for (fnum = 0; fnum < NUM_BASE_FILES; fnum++)
      {
 oprintf (base_files[fnum], "  NULL\n");
 oprintf (base_files[fnum], "};\n");
      }
  }
}
