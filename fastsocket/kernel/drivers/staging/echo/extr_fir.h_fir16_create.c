
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fir16_state_t {int taps; int curr_pos; int const* history; int const* coeffs; } ;
typedef int int16_t ;


 int GFP_KERNEL ;
 void* kcalloc (int,int,int ) ;

__attribute__((used)) static inline const int16_t *fir16_create(struct fir16_state_t *fir,
           const int16_t *coeffs, int taps)
{
 fir->taps = taps;
 fir->curr_pos = taps - 1;
 fir->coeffs = coeffs;



 fir->history = kcalloc(taps, sizeof(int16_t), GFP_KERNEL);

 return fir->history;
}
