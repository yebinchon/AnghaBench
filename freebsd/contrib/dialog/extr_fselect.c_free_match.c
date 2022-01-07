
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ length; int data; } ;
typedef TYPE_1__ MATCH ;


 int free (int ) ;

__attribute__((used)) static void
free_match(MATCH * match_list)
{
    free(match_list->data);
    match_list->length = 0;
}
