
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_SET ;
 int find_strings (char const*,int *,int ,size_t) ;
 int fseeko (int *,int ,int ) ;

int
handle_binary(const char *name, FILE *pfile, size_t size)
{

 (void)fseeko(pfile, 0, SEEK_SET);
 return (find_strings(name, pfile, 0, size));
}
