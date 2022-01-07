
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int select_partition (char*,char*,int,int) ;

__attribute__((used)) static int
select_source_partition(void)
{
    return select_partition("Select Source Partition",
       "\\nOn which partition is the source?\\n", 9, 60);
}
