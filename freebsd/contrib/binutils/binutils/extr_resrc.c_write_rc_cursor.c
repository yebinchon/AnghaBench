
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int rc_uint_type ;
struct TYPE_3__ {scalar_t__ data; scalar_t__ length; scalar_t__ yhotspot; scalar_t__ xhotspot; } ;
typedef TYPE_1__ rc_cursor ;
typedef int bfd_byte ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;
 int indent (int *,int) ;
 int write_rc_datablock (int *,int ,int const*,int ,int ,int ) ;

__attribute__((used)) static void
write_rc_cursor (FILE *e, const rc_cursor *cursor)
{
  fprintf (e, "BEGIN\n");
  indent (e, 2);
  fprintf (e, " 0x%x, 0x%x,\t/* Hotspot x: %d, y: %d.  */\n",
    (unsigned int) cursor->xhotspot, (unsigned int) cursor->yhotspot,
    (int) cursor->xhotspot, (int) cursor->yhotspot);
  write_rc_datablock (e, (rc_uint_type) cursor->length, (const bfd_byte *) cursor->data,
          0, 0, 0);
  fprintf (e, "END\n");
}
