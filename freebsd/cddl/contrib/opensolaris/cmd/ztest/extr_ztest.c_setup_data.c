
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int zh_hdr_size; int zh_stats_size; int zh_stats_count; scalar_t__ zh_size; scalar_t__ zh_opts_size; } ;
typedef TYPE_1__ ztest_shared_hdr_t ;
typedef int uint8_t ;
typedef int caddr_t ;


 int ASSERT (int) ;
 TYPE_1__* MAP_FAILED ;
 int MAP_SHARED ;
 int P2ROUNDUP (int,int ) ;
 int PROT_READ ;
 int PROT_WRITE ;
 int getpagesize () ;
 scalar_t__ mmap (int ,int ,int,int ,int ,int ) ;
 int munmap (int ,int ) ;
 int shared_data_size (TYPE_1__*) ;
 int ztest_fd_data ;
 void* ztest_shared ;
 void* ztest_shared_callstate ;
 void* ztest_shared_ds ;
 TYPE_1__* ztest_shared_hdr ;
 void* ztest_shared_opts ;

__attribute__((used)) static void
setup_data(void)
{
 int size, offset;
 ztest_shared_hdr_t *hdr;
 uint8_t *buf;

 hdr = (void *)mmap(0, P2ROUNDUP(sizeof (*hdr), getpagesize()),
     PROT_READ, MAP_SHARED, ztest_fd_data, 0);
 ASSERT(hdr != MAP_FAILED);

 size = shared_data_size(hdr);

 (void) munmap((caddr_t)hdr, P2ROUNDUP(sizeof (*hdr), getpagesize()));
 hdr = ztest_shared_hdr = (void *)mmap(0, P2ROUNDUP(size, getpagesize()),
     PROT_READ | PROT_WRITE, MAP_SHARED, ztest_fd_data, 0);
 ASSERT(hdr != MAP_FAILED);
 buf = (uint8_t *)hdr;

 offset = hdr->zh_hdr_size;
 ztest_shared_opts = (void *)&buf[offset];
 offset += hdr->zh_opts_size;
 ztest_shared = (void *)&buf[offset];
 offset += hdr->zh_size;
 ztest_shared_callstate = (void *)&buf[offset];
 offset += hdr->zh_stats_size * hdr->zh_stats_count;
 ztest_shared_ds = (void *)&buf[offset];
}
