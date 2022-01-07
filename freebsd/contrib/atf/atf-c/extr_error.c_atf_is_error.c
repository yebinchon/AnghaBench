
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * atf_error_t ;



bool
atf_is_error(const atf_error_t err)
{
    return err != ((void*)0);
}
