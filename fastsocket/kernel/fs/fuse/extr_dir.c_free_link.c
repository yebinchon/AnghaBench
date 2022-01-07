
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IS_ERR (char*) ;
 int free_page (unsigned long) ;

__attribute__((used)) static void free_link(char *link)
{
 if (!IS_ERR(link))
  free_page((unsigned long) link);
}
