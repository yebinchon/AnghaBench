
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tdesc_t ;
typedef int tdata_t ;
struct match {char const* member_1; int * m_ret; int * member_0; } ;


 int iter_iidescs_by_name (int *,char const*,int ,struct match*) ;
 int matching_iidesc ;

__attribute__((used)) static tdesc_t *
lookup_tdesc(tdata_t *td, char const *name)
{
 struct match match = { ((void*)0), name };
 iter_iidescs_by_name(td, name, matching_iidesc, &match);
 return (match.m_ret);
}
