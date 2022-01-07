
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swsusp_header {int dummy; } ;


 int GFP_KERNEL ;
 scalar_t__ __get_free_page (int ) ;
 int panic (char*) ;
 struct swsusp_header* swsusp_header ;

__attribute__((used)) static int swsusp_header_init(void)
{
 swsusp_header = (struct swsusp_header*) __get_free_page(GFP_KERNEL);
 if (!swsusp_header)
  panic("Could not allocate memory for swsusp_header\n");
 return 0;
}
