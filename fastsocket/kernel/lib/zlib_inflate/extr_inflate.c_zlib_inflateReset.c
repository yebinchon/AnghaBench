
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* z_streamp ;
struct inflate_state {unsigned int dmax; unsigned int wsize; unsigned int wbits; scalar_t__ whave; scalar_t__ write; int codes; int next; int distcode; int lencode; scalar_t__ bits; scalar_t__ hold; scalar_t__ havedict; scalar_t__ last; int mode; scalar_t__ total; } ;
struct TYPE_3__ {int adler; int * msg; scalar_t__ total_out; scalar_t__ total_in; int * state; } ;


 int HEAD ;
 int Z_OK ;
 int Z_STREAM_ERROR ;

int zlib_inflateReset(z_streamp strm)
{
    struct inflate_state *state;

    if (strm == ((void*)0) || strm->state == ((void*)0)) return Z_STREAM_ERROR;
    state = (struct inflate_state *)strm->state;
    strm->total_in = strm->total_out = state->total = 0;
    strm->msg = ((void*)0);
    strm->adler = 1;
    state->mode = HEAD;
    state->last = 0;
    state->havedict = 0;
    state->dmax = 32768U;
    state->hold = 0;
    state->bits = 0;
    state->lencode = state->distcode = state->next = state->codes;


    state->wsize = 1U << state->wbits;
    state->write = 0;
    state->whave = 0;

    return Z_OK;
}
