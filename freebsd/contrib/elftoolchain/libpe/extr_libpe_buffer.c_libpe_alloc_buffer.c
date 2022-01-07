
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int ps_b; } ;
struct TYPE_8__ {int pb_align; size_t pb_size; int * pb_buf; scalar_t__ pb_off; } ;
struct TYPE_9__ {TYPE_1__ sb_pb; int sb_flags; TYPE_3__* sb_ps; } ;
typedef TYPE_2__ PE_SecBuf ;
typedef TYPE_3__ PE_Scn ;


 int ENOMEM ;
 int LIBPE_F_BUFFER_MALLOCED ;
 int STAILQ_INSERT_TAIL (int *,TYPE_2__*,int ) ;
 int errno ;
 int free (TYPE_2__*) ;
 void* malloc (size_t) ;
 int sb_next ;

PE_SecBuf *
libpe_alloc_buffer(PE_Scn *ps, size_t sz)
{
 PE_SecBuf *sb;

 if ((sb = malloc(sizeof(PE_SecBuf))) == ((void*)0)) {
  errno = ENOMEM;
  return (((void*)0));
 }

 sb->sb_ps = ps;
 sb->sb_flags = 0;
 sb->sb_pb.pb_align = 1;
 sb->sb_pb.pb_off = 0;
 sb->sb_pb.pb_size = sz;
 if (sz > 0) {
  if ((sb->sb_pb.pb_buf = malloc(sz)) == ((void*)0)) {
   free(sb);
   errno = ENOMEM;
   return (((void*)0));
  }
  sb->sb_flags |= LIBPE_F_BUFFER_MALLOCED;
 } else
  sb->sb_pb.pb_buf = ((void*)0);

 STAILQ_INSERT_TAIL(&ps->ps_b, sb, sb_next);

 return (sb);
}
