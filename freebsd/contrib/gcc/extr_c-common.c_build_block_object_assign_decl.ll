; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_build_block_object_assign_decl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_build_block_object_assign_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@block_object_assign_decl = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"_Block_object_assign\00", align 1
@void_type_node = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@ptr_type_node = common dso_local global i32 0, align 4
@integer_type_node = common dso_local global i32 0, align 4
@void_list_node = common dso_local global i32 0, align 4
@NOT_BUILT_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @build_block_object_assign_decl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @build_block_object_assign_decl() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i64, i64* @block_object_assign_decl, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i64, i64* @block_object_assign_decl, align 8
  store i64 %7, i64* %1, align 8
  br label %33

8:                                                ; preds = %0
  %9 = call i32 @get_identifier(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %10 = call i64 @lookup_name(i32 %9)
  store i64 %10, i64* @block_object_assign_decl, align 8
  %11 = load i64, i64* @block_object_assign_decl, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = load i64, i64* @block_object_assign_decl, align 8
  store i64 %14, i64* %1, align 8
  br label %33

15:                                               ; preds = %8
  %16 = load i32, i32* @void_type_node, align 4
  %17 = load i32, i32* @NULL_TREE, align 4
  %18 = load i32, i32* @ptr_type_node, align 4
  %19 = load i32, i32* @NULL_TREE, align 4
  %20 = load i32, i32* @ptr_type_node, align 4
  %21 = load i32, i32* @NULL_TREE, align 4
  %22 = load i32, i32* @integer_type_node, align 4
  %23 = load i32, i32* @void_list_node, align 4
  %24 = call i32 @tree_cons(i32 %21, i32 %22, i32 %23)
  %25 = call i32 @tree_cons(i32 %19, i32 %20, i32 %24)
  %26 = call i32 @tree_cons(i32 %17, i32 %18, i32 %25)
  %27 = call i64 @build_function_type(i32 %16, i32 %26)
  store i64 %27, i64* %2, align 8
  %28 = load i64, i64* %2, align 8
  %29 = load i32, i32* @NOT_BUILT_IN, align 4
  %30 = load i32, i32* @NULL_TREE, align 4
  %31 = call i64 @builtin_function(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %28, i32 0, i32 %29, i32 0, i32 %30)
  store i64 %31, i64* @block_object_assign_decl, align 8
  store i64 0, i64* %3, align 8
  %32 = load i64, i64* %3, align 8
  store i64 %32, i64* %1, align 8
  br label %33

33:                                               ; preds = %15, %13, %6
  %34 = load i64, i64* %1, align 8
  ret i64 %34
}

declare dso_local i64 @lookup_name(i32) #1

declare dso_local i32 @get_identifier(i8*) #1

declare dso_local i64 @build_function_type(i32, i32) #1

declare dso_local i32 @tree_cons(i32, i32, i32) #1

declare dso_local i64 @builtin_function(i8*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
