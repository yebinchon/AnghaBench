
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct stat {int st_size; } ;
struct TYPE_13__ {int language; } ;
struct TYPE_10__ {int length; int* data; } ;
struct TYPE_11__ {TYPE_1__ data; } ;
struct TYPE_12__ {TYPE_4__ res_info; TYPE_2__ u; int type; } ;
typedef TYPE_3__ rc_res_resource ;
typedef TYPE_4__ rc_res_res_info ;
typedef int rc_res_id ;
struct TYPE_14__ {long length; int* data; struct TYPE_14__* next; scalar_t__ index; } ;
typedef TYPE_5__ rc_fontdir ;
typedef int bfd_byte ;
typedef int FILE ;


 int FOPEN_RB ;
 int RES_TYPE_FONT ;
 int RT_FONT ;
 int _ (char*) ;
 TYPE_3__* define_standard_resource (int *,int ,int ,int ,int ) ;
 int errno ;
 int fatal (int ,char*,int ) ;
 int fclose (int *) ;
 TYPE_5__* fontdirs ;
 TYPE_4__ fontdirs_resinfo ;
 scalar_t__ fonts ;
 int free (char*) ;
 int get_data (int *,int*,int,char*) ;
 int memcpy (int*,int*,int) ;
 int * open_file_search (char const*,int ,char*,char**) ;
 scalar_t__ res_alloc (int) ;
 int resources ;
 scalar_t__ stat (char*,struct stat*) ;
 int strcpy (char*,char const*) ;
 int strerror (int ) ;
 long strlen (char const*) ;

void
define_font (rc_res_id id, const rc_res_res_info *resinfo,
      const char *filename)
{
  FILE *e;
  char *real_filename;
  struct stat s;
  bfd_byte *data;
  rc_res_resource *r;
  long offset;
  long fontdatalength;
  bfd_byte *fontdata;
  rc_fontdir *fd;
  const char *device, *face;
  rc_fontdir **pp;

  e = open_file_search (filename, FOPEN_RB, "font file", &real_filename);

  if (stat (real_filename, &s) < 0)
    fatal (_("stat failed on font file `%s': %s"), real_filename,
    strerror (errno));

  data = (bfd_byte *) res_alloc (s.st_size);

  get_data (e, data, s.st_size, real_filename);

  fclose (e);
  free (real_filename);

  r = define_standard_resource (&resources, RT_FONT, id,
    resinfo->language, 0);

  r->type = RES_TYPE_FONT;
  r->u.data.length = s.st_size;
  r->u.data.data = data;
  r->res_info = *resinfo;






  offset = ((((((data[47] << 8)
  | data[46]) << 8)
       | data[45]) << 8)
     | data[44]);
  if (offset > 0 && offset < s.st_size)
    device = (char *) data + offset;
  else
    device = "";

  offset = ((((((data[51] << 8)
  | data[50]) << 8)
       | data[49]) << 8)
     | data[48]);
  if (offset > 0 && offset < s.st_size)
    face = (char *) data + offset;
  else
    face = "";

  ++fonts;

  fontdatalength = 58 + strlen (device) + strlen (face);
  fontdata = (bfd_byte *) res_alloc (fontdatalength);
  memcpy (fontdata, data, 56);
  strcpy ((char *) fontdata + 56, device);
  strcpy ((char *) fontdata + 57 + strlen (device), face);

  fd = (rc_fontdir *) res_alloc (sizeof (rc_fontdir));
  fd->next = ((void*)0);
  fd->index = fonts;
  fd->length = fontdatalength;
  fd->data = fontdata;

  for (pp = &fontdirs; *pp != ((void*)0); pp = &(*pp)->next)
    ;
  *pp = fd;



  fontdirs_resinfo = *resinfo;
}
