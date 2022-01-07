
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ pb_off; } ;
struct TYPE_6__ {TYPE_1__ sb_pb; } ;
typedef TYPE_2__ PE_SecBuf ;



__attribute__((used)) static int
cmp_sb(PE_SecBuf *a, PE_SecBuf *b)
{

 if (a->sb_pb.pb_off < b->sb_pb.pb_off)
  return (-1);
 else if (a->sb_pb.pb_off == b->sb_pb.pb_off)
  return (0);
 else
  return (1);
}
