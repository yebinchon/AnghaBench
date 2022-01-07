
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* page; TYPE_2__* zone; } ;
struct small_page_entry {TYPE_1__ common; struct small_page_entry* next; } ;
struct TYPE_7__ {int pagesize; int page_mask; int quire_size; int dev_zero_fd; scalar_t__ small_page_overhead; int debug_file; int lg_pagesize; TYPE_2__* zones; } ;
struct TYPE_6__ {char* name; struct small_page_entry* free_pages; } ;


 int BYTES_PER_ALLOC_BIT ;
 scalar_t__ FREE_BIN_DELTA ;
 TYPE_4__ G ;
 int GGC_PAGE_SIZE ;
 scalar_t__ MAX_ALIGNMENT ;
 int O_RDONLY ;
 scalar_t__ PAGE_OVERHEAD ;
 char* alloc_anon (int *,int,TYPE_2__*) ;
 int exact_log2 (int) ;
 int fopen (char*,char*) ;
 int gcc_assert (int) ;
 int getpagesize () ;
 TYPE_2__ main_zone ;
 int munmap (char*,int) ;
 int new_ggc_zone_1 (int *,char*) ;
 int open (char*,int ) ;
 int rtl_zone ;
 int set_page_table_entry (char*,TYPE_1__*) ;
 int setlinebuf (int ) ;
 int stdout ;
 int tree_id_zone ;
 int tree_zone ;
 struct small_page_entry* xcalloc (int,scalar_t__) ;

void
init_ggc (void)
{




  gcc_assert (FREE_BIN_DELTA == MAX_ALIGNMENT);


  main_zone.name = "Main zone";
  G.zones = &main_zone;


  new_ggc_zone_1 (&rtl_zone, "RTL zone");
  new_ggc_zone_1 (&tree_zone, "Tree zone");
  new_ggc_zone_1 (&tree_id_zone, "Tree identifier zone");

  G.pagesize = getpagesize();
  G.lg_pagesize = exact_log2 (G.pagesize);
  G.page_mask = ~(G.pagesize - 1);


  gcc_assert ((G.pagesize & (GGC_PAGE_SIZE - 1)) == 0);


  G.quire_size = 16 * G.pagesize / GGC_PAGE_SIZE;




  G.small_page_overhead
    = PAGE_OVERHEAD + (GGC_PAGE_SIZE / BYTES_PER_ALLOC_BIT / 8);
  G.debug_file = stdout;
}
