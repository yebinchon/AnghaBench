
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static
size_t
array_size(const char *words[])
{
    size_t count;
    const char **word;

    count = 0;
    for (word = words; *word != ((void*)0); word++)
        count++;

    return count;
}
