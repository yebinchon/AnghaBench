
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl_state {int groups; int users; } ;


 int kfree (int ) ;

__attribute__((used)) static void
free_state(struct posix_acl_state *state) {
 kfree(state->users);
 kfree(state->groups);
}
