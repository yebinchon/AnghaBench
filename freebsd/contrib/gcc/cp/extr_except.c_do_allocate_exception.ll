; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_except.c_do_allocate_exception.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_except.c_do_allocate_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"__cxa_allocate_exception\00", align 1
@NULL_TREE = common dso_local global i32 0, align 4
@size_type_node = common dso_local global i32 0, align 4
@void_list_node = common dso_local global i32 0, align 4
@ptr_type_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @do_allocate_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_allocate_exception(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i32 @get_identifier(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @get_global_value_if_present(i32 %6, i32* %3)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @NULL_TREE, align 4
  %11 = load i32, i32* @size_type_node, align 4
  %12 = load i32, i32* @void_list_node, align 4
  %13 = call i32 @tree_cons(i32 %10, i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @ptr_type_node, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @build_function_type(i32 %15, i32 %16)
  %18 = call i32 @push_library_fn(i32 %14, i32 %17)
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %9, %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @NULL_TREE, align 4
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @size_in_bytes(i32 %22)
  %24 = load i32, i32* @NULL_TREE, align 4
  %25 = call i32 @tree_cons(i32 %21, i32 %23, i32 %24)
  %26 = call i32 @build_function_call(i32 %20, i32 %25)
  ret i32 %26
}

declare dso_local i32 @get_identifier(i8*) #1

declare dso_local i32 @get_global_value_if_present(i32, i32*) #1

declare dso_local i32 @tree_cons(i32, i32, i32) #1

declare dso_local i32 @push_library_fn(i32, i32) #1

declare dso_local i32 @build_function_type(i32, i32) #1

declare dso_local i32 @build_function_call(i32, i32) #1

declare dso_local i32 @size_in_bytes(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
