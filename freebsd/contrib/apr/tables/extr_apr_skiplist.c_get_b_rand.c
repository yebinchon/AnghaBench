
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rand () ;

__attribute__((used)) static int get_b_rand(void)
{
    static int ph = 32;
    static int randseq;
    if (ph > 31) {
        ph = 0;
        randseq = rand();
    }
    return randseq & (1 << ph++);
}
