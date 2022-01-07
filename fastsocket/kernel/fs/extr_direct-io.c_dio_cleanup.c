
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio_submit {int dummy; } ;
struct dio {int dummy; } ;


 int dio_get_page (struct dio*,struct dio_submit*) ;
 scalar_t__ dio_pages_present (struct dio_submit*) ;
 int page_cache_release (int ) ;

__attribute__((used)) static inline void dio_cleanup(struct dio *dio, struct dio_submit *sdio)
{
 while (dio_pages_present(sdio))
  page_cache_release(dio_get_page(dio, sdio));
}
