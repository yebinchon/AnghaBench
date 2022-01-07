
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FREE (int *****) ;
 int assert (int ****) ;
 int ntags ;
 int ***** tag_table ;

__attribute__((used)) static void
free_tags(void)
{
    int i;

    if (tag_table == 0)
 return;

    for (i = 0; i < ntags; ++i)
    {
 assert(tag_table[i]);
 FREE(tag_table[i]);
    }
    FREE(tag_table);
}
