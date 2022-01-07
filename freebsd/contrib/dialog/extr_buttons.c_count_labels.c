
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t
count_labels(const char **labels)
{
    size_t result = 0;
    if (labels != 0) {
 while (*labels++ != 0) {
     ++result;
 }
    }
    return result;
}
