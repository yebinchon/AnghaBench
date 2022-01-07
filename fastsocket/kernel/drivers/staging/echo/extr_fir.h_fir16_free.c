
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fir16_state_t {int history; } ;


 int kfree (int ) ;

__attribute__((used)) static inline void fir16_free(struct fir16_state_t *fir)
{
 kfree(fir->history);
}
