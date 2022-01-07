
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
typedef TYPE_1__ Arch ;


 int strcmp (void const*,int ) ;

__attribute__((used)) static int
ArchFindArchive(const void *ar, const void *archName)
{
    return (strcmp(archName, ((const Arch *)ar)->name));
}
