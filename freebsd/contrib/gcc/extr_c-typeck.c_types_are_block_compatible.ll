; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_types_are_block_compatible.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_types_are_block_compatible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FUNCTION_TYPE = common dso_local global i64 0, align 8
@POINTER_TYPE = common dso_local global i64 0, align 8
@BLOCK_POINTER_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @types_are_block_compatible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @types_are_block_compatible(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @TYPE_MAIN_VARIANT(i32 %6)
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @TYPE_MAIN_VARIANT(i32 %8)
  %10 = icmp eq i64 %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %59

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @TREE_CODE(i32 %13)
  %15 = load i64, i64* @FUNCTION_TYPE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @TREE_CODE(i32 %18)
  %20 = load i64, i64* @FUNCTION_TYPE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @functiontypes_are_block_compatible(i32 %23, i32 %24)
  store i32 %25, i32* %3, align 4
  br label %59

26:                                               ; preds = %17, %12
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @TREE_CODE(i32 %27)
  %29 = load i64, i64* @POINTER_TYPE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @TREE_CODE(i32 %32)
  %34 = load i64, i64* @POINTER_TYPE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @TREE_TYPE(i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @TREE_TYPE(i32 %39)
  %41 = call i32 @types_are_block_compatible(i32 %38, i32 %40)
  store i32 %41, i32* %3, align 4
  br label %59

42:                                               ; preds = %31, %26
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @TREE_CODE(i32 %43)
  %45 = load i64, i64* @BLOCK_POINTER_TYPE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load i32, i32* %5, align 4
  %49 = call i64 @TREE_CODE(i32 %48)
  %50 = load i64, i64* @BLOCK_POINTER_TYPE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @TREE_TYPE(i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @TREE_TYPE(i32 %55)
  %57 = call i32 @types_are_block_compatible(i32 %54, i32 %56)
  store i32 %57, i32* %3, align 4
  br label %59

58:                                               ; preds = %47, %42
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %52, %36, %22, %11
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @TYPE_MAIN_VARIANT(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @functiontypes_are_block_compatible(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
