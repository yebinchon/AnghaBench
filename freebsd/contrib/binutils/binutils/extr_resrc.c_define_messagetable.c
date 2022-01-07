
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct stat {int st_size; } ;
struct TYPE_10__ {int language; } ;
struct TYPE_7__ {int * data; int length; } ;
struct TYPE_8__ {TYPE_1__ data; } ;
struct TYPE_9__ {TYPE_4__ res_info; TYPE_2__ u; int type; } ;
typedef TYPE_3__ rc_res_resource ;
typedef TYPE_4__ rc_res_res_info ;
typedef int rc_res_id ;
typedef int bfd_byte ;
typedef int FILE ;


 int FOPEN_RB ;
 int RES_TYPE_MESSAGETABLE ;
 int RT_MESSAGETABLE ;
 int _ (char*) ;
 TYPE_3__* define_standard_resource (int *,int ,int ,int ,int ) ;
 int errno ;
 int fatal (int ,char*,int ) ;
 int fclose (int *) ;
 int free (char*) ;
 int get_data (int *,int *,int ,char*) ;
 int * open_file_search (char const*,int ,char*,char**) ;
 scalar_t__ res_alloc (int ) ;
 int resources ;
 scalar_t__ stat (char*,struct stat*) ;
 int strerror (int ) ;

void
define_messagetable (rc_res_id id, const rc_res_res_info *resinfo,
       const char *filename)
{
  FILE *e;
  char *real_filename;
  struct stat s;
  bfd_byte *data;
  rc_res_resource *r;

  e = open_file_search (filename, FOPEN_RB, "messagetable file",
   &real_filename);

  if (stat (real_filename, &s) < 0)
    fatal (_("stat failed on bitmap file `%s': %s"), real_filename,
    strerror (errno));

  data = (bfd_byte *) res_alloc (s.st_size);

  get_data (e, data, s.st_size, real_filename);

  fclose (e);
  free (real_filename);

  r = define_standard_resource (&resources, RT_MESSAGETABLE, id,
    resinfo->language, 0);

  r->type = RES_TYPE_MESSAGETABLE;
  r->u.data.length = s.st_size;
  r->u.data.data = data;
  r->res_info = *resinfo;
}
