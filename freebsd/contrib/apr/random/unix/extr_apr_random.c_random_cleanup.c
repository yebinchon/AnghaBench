
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int apr_status_t ;
struct TYPE_3__ {struct TYPE_3__* next; } ;
typedef TYPE_1__ apr_random_t ;


 int APR_SUCCESS ;
 TYPE_1__* all_random ;

__attribute__((used)) static apr_status_t random_cleanup(void *data)
{
    apr_random_t *remove_this = data,
                 *cur = all_random,
                 **prev_ptr = &all_random;
    while (cur) {
        if (cur == remove_this) {
            *prev_ptr = cur->next;
            break;
        }
        prev_ptr = &cur->next;
        cur = cur->next;
    }
    return APR_SUCCESS;
}
