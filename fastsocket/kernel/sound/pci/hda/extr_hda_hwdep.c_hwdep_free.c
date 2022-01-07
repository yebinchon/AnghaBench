
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_hwdep {int private_data; } ;


 int clear_hwdep_elements (int ) ;

__attribute__((used)) static void hwdep_free(struct snd_hwdep *hwdep)
{
 clear_hwdep_elements(hwdep->private_data);
}
