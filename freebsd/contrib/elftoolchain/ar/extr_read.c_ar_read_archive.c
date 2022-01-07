
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uid_t ;
typedef scalar_t__ time_t ;
struct tm {int dummy; } ;
struct stat {scalar_t__ st_mtime; } ;
struct bsdar {char const* filename; int options; int argc; char** argv; int * output; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef int mode_t ;
typedef int gid_t ;
typedef int buf ;
typedef int FILE ;


 int AC (int ) ;
 int ACV (int ) ;
 int ARCHIVE_EOF ;
 int ARCHIVE_EXTRACT_SECURE_NODOTDOT ;
 int ARCHIVE_EXTRACT_SECURE_SYMLINKS ;
 int ARCHIVE_EXTRACT_TIME ;
 int ARCHIVE_FATAL ;
 scalar_t__ ARCHIVE_FORMAT_AR_BSD ;
 int ARCHIVE_RETRY ;
 int ARCHIVE_WARN ;
 int AR_BSD ;
 int AR_CC ;
 int AR_O ;
 int AR_U ;
 int AR_V ;
 int DEF_BLKSZ ;
 scalar_t__ ENOENT ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int archive_entry_gid (struct archive_entry*) ;
 int archive_entry_mode (struct archive_entry*) ;
 scalar_t__ archive_entry_mtime (struct archive_entry*) ;
 char* archive_entry_pathname (struct archive_entry*) ;
 size_t archive_entry_size (struct archive_entry*) ;
 int archive_entry_uid (struct archive_entry*) ;
 char const* archive_error_string (struct archive*) ;
 scalar_t__ archive_format (struct archive*) ;
 int archive_read_close (struct archive*) ;
 int archive_read_data_into_fd (struct archive*,int ) ;
 int archive_read_data_skip (struct archive*) ;
 int archive_read_extract (struct archive*,struct archive_entry*,int) ;
 int archive_read_free (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int archive_read_open_filename (struct archive*,char const*,int ) ;
 int archive_read_support_format_ar (struct archive*) ;
 int assert (int) ;
 char* basename (char*) ;
 int bsdar_errc (struct bsdar*,scalar_t__,char*) ;
 scalar_t__ bsdar_is_pseudomember (struct bsdar*,char const*) ;
 char* bsdar_strmode (int ) ;
 int bsdar_warnc (struct bsdar*,scalar_t__,char*,...) ;
 scalar_t__ errno ;
 int fflush (int *) ;
 int fileno (int *) ;
 int fprintf (int *,char*,...) ;
 struct tm* localtime (scalar_t__*) ;
 scalar_t__ stat (char const*,struct stat*) ;
 scalar_t__ strchr (char const*,char) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int strftime (char*,int,char*,struct tm*) ;

int
ar_read_archive(struct bsdar *bsdar, int mode)
{
 FILE *out;
 struct archive *a;
 struct archive_entry *entry;
 struct stat sb;
 struct tm *tp;
 const char *bname;
 const char *name;
 mode_t md;
 size_t size;
 time_t mtime;
 uid_t uid;
 gid_t gid;
 char **av;
 char buf[25];
 int found;
 int exitcode, i, flags, r;

 assert(mode == 'p' || mode == 't' || mode == 'x');

 if ((a = archive_read_new()) == ((void*)0))
  bsdar_errc(bsdar, 0, "archive_read_new failed");
 archive_read_support_format_ar(a);
 AC(archive_read_open_filename(a, bsdar->filename, DEF_BLKSZ));

 exitcode = EXIT_SUCCESS;
 out = bsdar->output;

 for (;;) {
  r = archive_read_next_header(a, &entry);
  if (r == ARCHIVE_WARN || r == ARCHIVE_RETRY ||
      r == ARCHIVE_FATAL)
   bsdar_warnc(bsdar, 0, "%s", archive_error_string(a));
  if (r == ARCHIVE_EOF || r == ARCHIVE_FATAL)
   break;
  if (r == ARCHIVE_RETRY) {
   bsdar_warnc(bsdar, 0, "Retrying...");
   continue;
  }

  if (archive_format(a) == ARCHIVE_FORMAT_AR_BSD)
   bsdar->options |= AR_BSD;
  else
   bsdar->options &= ~AR_BSD;

  if ((name = archive_entry_pathname(entry)) == ((void*)0))
   break;


  if (bsdar_is_pseudomember(bsdar, name))
   continue;


  if (strchr(name, '/')) {
   bsdar_warnc(bsdar, 0, "ignoring entry: %s",
       name);
   continue;
  }





  if (bsdar->argc > 0) {
   found = 0;
   for(i = 0; i < bsdar->argc; i++) {
    av = &bsdar->argv[i];
    if (*av == ((void*)0))
     continue;




    if ((bname = basename(*av)) == ((void*)0))
     bsdar_errc(bsdar, errno,
         "basename failed");
    if (strcmp(bname, name) != 0)
     continue;

    *av = ((void*)0);
    found = 1;
    break;
   }
   if (!found)
    continue;
  }

  if (mode == 't') {
   if (bsdar->options & AR_V) {
    md = archive_entry_mode(entry);
    uid = archive_entry_uid(entry);
    gid = archive_entry_gid(entry);
    size = archive_entry_size(entry);
    mtime = archive_entry_mtime(entry);
    (void)fprintf(out, "%s %6d/%-6d %8ju ",
        bsdar_strmode(md) + 1, uid, gid,
        (uintmax_t)size);
    tp = localtime(&mtime);
    (void)strftime(buf, sizeof(buf),
        "%b %e %H:%M %Y", tp);
    (void)fprintf(out, "%s %s", buf, name);
   } else
    (void)fprintf(out, "%s", name);
   r = archive_read_data_skip(a);
   if (r == ARCHIVE_WARN || r == ARCHIVE_RETRY ||
       r == ARCHIVE_FATAL) {
    (void)fprintf(out, "\n");
    bsdar_warnc(bsdar, 0, "%s",
        archive_error_string(a));
   }

   if (r == ARCHIVE_FATAL)
    break;

   (void)fprintf(out, "\n");
  } else {

   if (mode == 'p') {
    if (bsdar->options & AR_V) {
     (void)fprintf(out, "\n<%s>\n\n",
         name);
     fflush(out);
    }
    r = archive_read_data_into_fd(a, fileno(out));
   } else {

    if (stat(name, &sb) != 0) {
     if (errno != ENOENT) {
      bsdar_warnc(bsdar, errno,
          "stat %s failed",
          bsdar->filename);
      continue;
     }
    } else {

     if (bsdar->options & AR_CC)
      continue;
     if (bsdar->options & AR_U &&
         archive_entry_mtime(entry) <=
         sb.st_mtime)
      continue;
    }

    if (bsdar->options & AR_V)
     (void)fprintf(out, "x - %s\n", name);

    flags = ARCHIVE_EXTRACT_SECURE_SYMLINKS |
         ARCHIVE_EXTRACT_SECURE_NODOTDOT;
    if (bsdar->options & AR_O)
     flags |= ARCHIVE_EXTRACT_TIME;

    r = archive_read_extract(a, entry, flags);
   }

   if (r) {
    bsdar_warnc(bsdar, 0, "%s",
        archive_error_string(a));
    exitcode = EXIT_FAILURE;
   }
  }
 }

 if (r == ARCHIVE_FATAL)
  exitcode = EXIT_FAILURE;

 AC(archive_read_close(a));
 ACV(archive_read_free(a));

 return (exitcode);
}
