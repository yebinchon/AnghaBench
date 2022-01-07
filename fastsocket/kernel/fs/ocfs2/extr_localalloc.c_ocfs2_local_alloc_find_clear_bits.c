
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct ocfs2_super {int dummy; } ;
struct TYPE_4__ {int i_total; } ;
struct TYPE_5__ {TYPE_1__ bitmap1; } ;
struct ocfs2_dinode {TYPE_2__ id1; } ;
struct TYPE_6__ {void* la_bitmap; } ;


 TYPE_3__* OCFS2_LOCAL_ALLOC (struct ocfs2_dinode*) ;
 int le32_to_cpu (int ) ;
 int mlog (int ,char*,...) ;
 int mlog_entry (char*,int) ;
 int mlog_exit (int) ;
 int ocfs2_find_next_zero_bit (void*,int,int) ;

__attribute__((used)) static int ocfs2_local_alloc_find_clear_bits(struct ocfs2_super *osb,
          struct ocfs2_dinode *alloc,
          u32 numbits)
{
 int numfound, bitoff, left, startoff, lastzero;
 void *bitmap = ((void*)0);

 mlog_entry("(numbits wanted = %u)\n", numbits);

 if (!alloc->id1.bitmap1.i_total) {
  mlog(0, "No bits in my window!\n");
  bitoff = -1;
  goto bail;
 }

 bitmap = OCFS2_LOCAL_ALLOC(alloc)->la_bitmap;

 numfound = bitoff = startoff = 0;
 lastzero = -1;
 left = le32_to_cpu(alloc->id1.bitmap1.i_total);
 while ((bitoff = ocfs2_find_next_zero_bit(bitmap, left, startoff)) != -1) {
  if (bitoff == left) {

   break;
  }





  if (bitoff == startoff) {

   numfound++;
   startoff++;
  } else {

   numfound = 1;
   startoff = bitoff+1;
  }

  if (numfound == numbits) {

   break;
  }
 }

 mlog(0, "Exiting loop, bitoff = %d, numfound = %d\n", bitoff,
      numfound);

 if (numfound == numbits)
  bitoff = startoff - numfound;
 else
  bitoff = -1;

bail:
 mlog_exit(bitoff);
 return bitoff;
}
