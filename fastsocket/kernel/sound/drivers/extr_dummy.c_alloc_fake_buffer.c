
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int GFP_KERNEL ;
 void** dummy_page ;
 int fake_buffer ;
 int free_fake_buffer () ;
 scalar_t__ get_zeroed_page (int ) ;

__attribute__((used)) static int alloc_fake_buffer(void)
{
 int i;

 if (!fake_buffer)
  return 0;
 for (i = 0; i < 2; i++) {
  dummy_page[i] = (void *)get_zeroed_page(GFP_KERNEL);
  if (!dummy_page[i]) {
   free_fake_buffer();
   return -ENOMEM;
  }
 }
 return 0;
}
