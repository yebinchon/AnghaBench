
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fir32_state_t {int history; } ;


 int kfree (int ) ;

__attribute__((used)) static inline void fir32_free(struct fir32_state_t *fir)
{
 kfree(fir->history);
}
