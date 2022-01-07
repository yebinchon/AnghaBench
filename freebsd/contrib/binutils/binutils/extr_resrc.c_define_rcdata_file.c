
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct stat {int st_size; } ;
typedef int rc_res_res_info ;
typedef int rc_res_id ;
struct TYPE_5__ {int length; int * data; } ;
struct TYPE_6__ {TYPE_1__ buffer; } ;
struct TYPE_7__ {TYPE_2__ u; int type; int * next; } ;
typedef TYPE_3__ rc_rcdata_item ;
typedef int bfd_byte ;
typedef int FILE ;


 int FOPEN_RB ;
 int RCDATA_BUFFER ;
 int _ (char*) ;
 int define_rcdata (int ,int const*,TYPE_3__*) ;
 int errno ;
 int fatal (int ,char*,int ) ;
 int fclose (int *) ;
 int free (char*) ;
 int get_data (int *,int *,int,char*) ;
 int * open_file_search (char const*,int ,char*,char**) ;
 scalar_t__ res_alloc (int) ;
 scalar_t__ stat (char*,struct stat*) ;
 int strerror (int ) ;

void
define_rcdata_file (rc_res_id id, const rc_res_res_info *resinfo,
      const char *filename)
{
  rc_rcdata_item *ri;
  FILE *e;
  char *real_filename;
  struct stat s;
  bfd_byte *data;

  e = open_file_search (filename, FOPEN_RB, "file", &real_filename);


  if (stat (real_filename, &s) < 0)
    fatal (_("stat failed on file `%s': %s"), real_filename,
    strerror (errno));

  data = (bfd_byte *) res_alloc (s.st_size);

  get_data (e, data, s.st_size, real_filename);

  fclose (e);
  free (real_filename);

  ri = (rc_rcdata_item *) res_alloc (sizeof (rc_rcdata_item));
  ri->next = ((void*)0);
  ri->type = RCDATA_BUFFER;
  ri->u.buffer.length = s.st_size;
  ri->u.buffer.data = data;

  define_rcdata (id, resinfo, ri);
}
