
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



u32 _sqrt(u32 sqsum)
{
    u32 sq_rt;

    int g0, g1, g2, g3, g4;
    int seed;
    int next;
    int step;

    g4 = sqsum / 100000000;
    g3 = (sqsum - g4*100000000) /1000000;
    g2 = (sqsum - g4*100000000 - g3*1000000) /10000;
    g1 = (sqsum - g4*100000000 - g3*1000000 - g2*10000) /100;
    g0 = (sqsum - g4*100000000 - g3*1000000 - g2*10000 - g1*100);

    next = g4;
    step = 0;
    seed = 0;
    while (((seed+1)*(step+1)) <= next)
    {
     step++;
     seed++;
    }

    sq_rt = seed * 10000;
    next = (next-(seed*step))*100 + g3;

    step = 0;
    seed = 2 * seed * 10;
    while (((seed+1)*(step+1)) <= next)
    {
        step++;
     seed++;
    }

    sq_rt = sq_rt + step * 1000;
    next = (next - seed * step) * 100 + g2;
    seed = (seed + step) * 10;
    step = 0;
    while (((seed+1)*(step+1)) <= next)
    {
        step++;
     seed++;
    }

    sq_rt = sq_rt + step * 100;
    next = (next - seed * step) * 100 + g1;
    seed = (seed + step) * 10;
    step = 0;

    while (((seed+1)*(step+1)) <= next)
    {
        step++;
     seed++;
    }

    sq_rt = sq_rt + step * 10;
    next = (next - seed* step) * 100 + g0;
    seed = (seed + step) * 10;
    step = 0;

    while (((seed+1)*(step+1)) <= next)
    {
        step++;
     seed++;
    }

    sq_rt = sq_rt + step;

    return sq_rt;
}
