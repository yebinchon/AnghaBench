
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* voc; } ;
struct TYPE_3__ {int panning; } ;


 TYPE_2__* devc ;

__attribute__((used)) static void opl3_panning(int dev, int voice, int value)
{
 devc->voc[voice].panning = value;
}
