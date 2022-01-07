
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int l_base; int s_base; } ;
typedef TYPE_1__ YYSTACKDATA ;


 int free (int ) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void yyfreestack(YYSTACKDATA *data)
{
    free(data->s_base);
    free(data->l_base);
    memset(data, 0, sizeof(*data));
}
