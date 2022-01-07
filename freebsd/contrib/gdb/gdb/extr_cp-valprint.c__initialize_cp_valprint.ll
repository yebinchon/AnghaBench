; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-valprint.c__initialize_cp_valprint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-valprint.c__initialize_cp_valprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"static-members\00", align 1
@class_support = common dso_local global i32 0, align 4
@var_boolean = common dso_local global i32 0, align 4
@static_field_print = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Set printing of C++ static members.\00", align 1
@setprintlist = common dso_local global i32 0, align 4
@showprintlist = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"vtbl\00", align 1
@vtblprint = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"Set printing of C++ virtual function tables.\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@objectprint = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [60 x i8] c"Set printing of object's derived type based on vtable info.\00", align 1
@dont_print_vb_obstack = common dso_local global i32 0, align 4
@dont_print_statmem_obstack = common dso_local global i32 0, align 4
@xmalloc = common dso_local global i32 0, align 4
@xfree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_cp_valprint() #0 {
  %1 = load i32, i32* @class_support, align 4
  %2 = load i32, i32* @var_boolean, align 4
  %3 = call i32 @add_set_cmd(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %1, i32 %2, i8* bitcast (i32* @static_field_print to i8*), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32* @setprintlist)
  %4 = call i32 @add_show_from_set(i32 %3, i32* @showprintlist)
  store i32 1, i32* @static_field_print, align 4
  %5 = load i32, i32* @class_support, align 4
  %6 = load i32, i32* @var_boolean, align 4
  %7 = call i32 @add_set_cmd(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %5, i32 %6, i8* bitcast (i64* @vtblprint to i8*), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32* @setprintlist)
  %8 = call i32 @add_show_from_set(i32 %7, i32* @showprintlist)
  %9 = load i32, i32* @class_support, align 4
  %10 = load i32, i32* @var_boolean, align 4
  %11 = call i32 @add_set_cmd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %9, i32 %10, i8* bitcast (i64* @objectprint to i8*), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i32* @setprintlist)
  %12 = call i32 @add_show_from_set(i32 %11, i32* @showprintlist)
  store i64 0, i64* @objectprint, align 8
  store i64 0, i64* @vtblprint, align 8
  %13 = call i32 @obstack_begin(i32* @dont_print_vb_obstack, i32 256)
  %14 = load i32, i32* @xmalloc, align 4
  %15 = load i32, i32* @xfree, align 4
  %16 = call i32 @obstack_specify_allocation(i32* @dont_print_statmem_obstack, i32 128, i32 4, i32 %14, i32 %15)
  ret void
}

declare dso_local i32 @add_show_from_set(i32, i32*) #1

declare dso_local i32 @add_set_cmd(i8*, i32, i32, i8*, i8*, i32*) #1

declare dso_local i32 @obstack_begin(i32*, i32) #1

declare dso_local i32 @obstack_specify_allocation(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
