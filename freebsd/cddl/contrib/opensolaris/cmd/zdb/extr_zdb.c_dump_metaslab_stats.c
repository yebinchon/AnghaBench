
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int rt_histogram; } ;
typedef TYPE_1__ range_tree_t ;
struct TYPE_7__ {int ms_size; int ms_allocatable_by_size; TYPE_1__* ms_allocatable; } ;
typedef TYPE_2__ metaslab_t ;
typedef int maxbuf ;
typedef int avl_tree_t ;


 int CTASSERT (int) ;
 int NN_NUMBUF_SZ ;
 int RANGE_TREE_HISTOGRAM_SIZE ;
 int avl_numnodes (int *) ;
 int dump_histogram (int ,int ,int ) ;
 int metaslab_block_maxsize (TYPE_2__*) ;
 int printf (char*,...) ;
 int range_tree_space (TYPE_1__*) ;
 int zdb_nicenum (int ,char*,int) ;

__attribute__((used)) static void
dump_metaslab_stats(metaslab_t *msp)
{
 char maxbuf[32];
 range_tree_t *rt = msp->ms_allocatable;
 avl_tree_t *t = &msp->ms_allocatable_by_size;
 int free_pct = range_tree_space(rt) * 100 / msp->ms_size;


 CTASSERT(sizeof (maxbuf) >= NN_NUMBUF_SZ);

 zdb_nicenum(metaslab_block_maxsize(msp), maxbuf, sizeof (maxbuf));

 (void) printf("\t %25s %10lu   %7s  %6s   %4s %4d%%\n",
     "segments", avl_numnodes(t), "maxsize", maxbuf,
     "freepct", free_pct);
 (void) printf("\tIn-memory histogram:\n");
 dump_histogram(rt->rt_histogram, RANGE_TREE_HISTOGRAM_SIZE, 0);
}
