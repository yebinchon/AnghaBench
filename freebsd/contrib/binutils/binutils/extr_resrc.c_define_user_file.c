
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct stat {int st_size; } ;
struct TYPE_19__ {int language; } ;
struct TYPE_17__ {TYPE_8__* userdata; } ;
struct TYPE_18__ {TYPE_6__ res_info; TYPE_4__ u; int type; } ;
typedef TYPE_5__ rc_res_resource ;
typedef TYPE_6__ rc_res_res_info ;
struct TYPE_14__ {int id; } ;
struct TYPE_20__ {TYPE_1__ u; scalar_t__ named; } ;
typedef TYPE_7__ rc_res_id ;
struct TYPE_15__ {int length; int * data; } ;
struct TYPE_16__ {TYPE_2__ buffer; } ;
struct TYPE_21__ {TYPE_3__ u; int type; int * next; } ;
typedef TYPE_8__ rc_rcdata_item ;
typedef int bfd_byte ;
typedef int FILE ;


 int FOPEN_RB ;
 int RCDATA_BUFFER ;
 int RES_TYPE_USERDATA ;
 int _ (char*) ;
 TYPE_5__* define_resource (int *,int,TYPE_7__*,int ) ;
 int errno ;
 int fatal (int ,char*,int ) ;
 int fclose (int *) ;
 int free (char*) ;
 int get_data (int *,int *,int,char*) ;
 int * open_file_search (char const*,int ,char*,char**) ;
 scalar_t__ res_alloc (int) ;
 int resources ;
 scalar_t__ stat (char*,struct stat*) ;
 int strerror (int ) ;

void
define_user_file (rc_res_id id, rc_res_id type,
    const rc_res_res_info *resinfo, const char *filename)
{
  FILE *e;
  char *real_filename;
  struct stat s;
  bfd_byte *data;
  rc_res_id ids[3];
  rc_res_resource *r;

  e = open_file_search (filename, FOPEN_RB, "file", &real_filename);

  if (stat (real_filename, &s) < 0)
    fatal (_("stat failed on file `%s': %s"), real_filename,
    strerror (errno));

  data = (bfd_byte *) res_alloc (s.st_size);

  get_data (e, data, s.st_size, real_filename);

  fclose (e);
  free (real_filename);

  ids[0] = type;
  ids[1] = id;
  ids[2].named = 0;
  ids[2].u.id = resinfo->language;

  r = define_resource (&resources, 3, ids, 0);
  r->type = RES_TYPE_USERDATA;
  r->u.userdata = ((rc_rcdata_item *)
     res_alloc (sizeof (rc_rcdata_item)));
  r->u.userdata->next = ((void*)0);
  r->u.userdata->type = RCDATA_BUFFER;
  r->u.userdata->u.buffer.length = s.st_size;
  r->u.userdata->u.buffer.data = data;
  r->res_info = *resinfo;
}
