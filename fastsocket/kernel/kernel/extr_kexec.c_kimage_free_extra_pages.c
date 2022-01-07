
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kimage {int unuseable_pages; int dest_pages; } ;


 int kimage_free_page_list (int *) ;

__attribute__((used)) static void kimage_free_extra_pages(struct kimage *image)
{

 kimage_free_page_list(&image->dest_pages);


 kimage_free_page_list(&image->unuseable_pages);

}
