; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_convert_nontype_argument_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_convert_nontype_argument_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tf_none = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8
@ADDR_EXPR = common dso_local global i64 0, align 8
@BASELINK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [96 x i8] c"%qE is not a valid template argument for type %qT because function %qD has not external linkage\00", align 1
@NULL_TREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @convert_nontype_argument_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @convert_nontype_argument_function(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i32, i32* @tf_none, align 4
  %13 = call i64 @instantiate_type(i64 %10, i64 %11, i32 %12)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @error_mark_node, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* @error_mark_node, align 8
  store i64 %18, i64* %3, align 8
  br label %48

19:                                               ; preds = %2
  %20 = load i64, i64* %7, align 8
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i64 @TREE_CODE(i64 %21)
  %23 = load i64, i64* @ADDR_EXPR, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @TREE_OPERAND(i64 %26, i32 0)
  store i64 %27, i64* %8, align 8
  br label %28

28:                                               ; preds = %25, %19
  %29 = load i64, i64* %8, align 8
  %30 = call i64 @TREE_CODE(i64 %29)
  %31 = load i64, i64* @BASELINK, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i64, i64* %8, align 8
  %35 = call i64 @BASELINK_FUNCTIONS(i64 %34)
  store i64 %35, i64* %8, align 8
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @DECL_EXTERNAL_LINKAGE_P(i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @error(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i64 %41, i64 %42, i64 %43)
  %45 = load i64, i64* @NULL_TREE, align 8
  store i64 %45, i64* %3, align 8
  br label %48

46:                                               ; preds = %36
  %47 = load i64, i64* %7, align 8
  store i64 %47, i64* %3, align 8
  br label %48

48:                                               ; preds = %46, %40, %17
  %49 = load i64, i64* %3, align 8
  ret i64 %49
}

declare dso_local i64 @instantiate_type(i64, i64, i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @BASELINK_FUNCTIONS(i64) #1

declare dso_local i32 @DECL_EXTERNAL_LINKAGE_P(i64) #1

declare dso_local i32 @error(i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
