
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int ps_b; } ;
struct TYPE_7__ {TYPE_2__* pb_buf; } ;
struct TYPE_8__ {int sb_flags; TYPE_1__ sb_pb; TYPE_3__* sb_ps; } ;
typedef TYPE_2__ PE_SecBuf ;
typedef TYPE_3__ PE_Scn ;


 int LIBPE_F_BUFFER_MALLOCED ;
 int STAILQ_REMOVE (int *,TYPE_2__*,int ,int ) ;
 int _PE_SecBuf ;
 int assert (int ) ;
 int free (TYPE_2__*) ;
 int sb_next ;

void
libpe_release_buffer(PE_SecBuf *sb)
{
 PE_Scn *ps;

 assert(sb != ((void*)0));

 ps = sb->sb_ps;

 STAILQ_REMOVE(&ps->ps_b, sb, _PE_SecBuf, sb_next);

 if (sb->sb_flags & LIBPE_F_BUFFER_MALLOCED)
  free(sb->sb_pb.pb_buf);

 free(sb);
}
