
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ush ;
struct TYPE_4__ {int Len; int Code; } ;
typedef TYPE_1__ ct_data ;


 int Assert (int,char*) ;
 int MAX_BITS ;
 int Tracecv (int,int ) ;
 int Tracev (int ) ;
 int bi_reverse (int ,int) ;
 scalar_t__ isgraph (int) ;
 TYPE_1__* static_ltree ;
 int stderr ;

__attribute__((used)) static void gen_codes(
 ct_data *tree,
 int max_code,
 ush *bl_count
)
{
    ush next_code[MAX_BITS+1];
    ush code = 0;
    int bits;
    int n;




    for (bits = 1; bits <= MAX_BITS; bits++) {
        next_code[bits] = code = (code + bl_count[bits-1]) << 1;
    }



    Assert (code + bl_count[MAX_BITS]-1 == (1<<MAX_BITS)-1,
            "inconsistent bit counts");
    Tracev((stderr,"\ngen_codes: max_code %d ", max_code));

    for (n = 0; n <= max_code; n++) {
        int len = tree[n].Len;
        if (len == 0) continue;

        tree[n].Code = bi_reverse(next_code[len]++, len);

        Tracecv(tree != static_ltree, (stderr,"\nn %3d %c l %2d c %4x (%x) ",
             n, (isgraph(n) ? n : ' '), len, tree[n].Code, next_code[len]-1));
    }
}
