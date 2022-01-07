; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_comp_target_types.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_comp_target_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLOCK_POINTER_TYPE = common dso_local global i64 0, align 8
@ARRAY_TYPE = common dso_local global i64 0, align 8
@pedantic = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"types are not quite compatible\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @comp_target_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comp_target_types(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @TREE_CODE(i32 %9)
  %11 = load i64, i64* @BLOCK_POINTER_TYPE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @TREE_CODE(i32 %14)
  %16 = load i64, i64* @BLOCK_POINTER_TYPE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @TREE_TYPE(i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @TREE_TYPE(i32 %21)
  %23 = call i32 @types_are_block_compatible(i32 %20, i32 %22)
  store i32 %23, i32* %3, align 4
  br label %64

24:                                               ; preds = %13, %2
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @TREE_CODE(i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @TREE_CODE(i32 %27)
  %29 = icmp ne i64 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %64

31:                                               ; preds = %24
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @TREE_TYPE(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @TREE_TYPE(i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @TREE_CODE(i32 %36)
  %38 = load i64, i64* @ARRAY_TYPE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @TYPE_MAIN_VARIANT(i32 %41)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %40, %31
  %44 = load i32, i32* %8, align 4
  %45 = call i64 @TREE_CODE(i32 %44)
  %46 = load i64, i64* @ARRAY_TYPE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @TYPE_MAIN_VARIANT(i32 %49)
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @comptypes(i32 %52, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load i64, i64* @pedantic, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 @pedwarn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %57, %51
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %30, %18
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @types_are_block_compatible(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TYPE_MAIN_VARIANT(i32) #1

declare dso_local i32 @comptypes(i32, i32) #1

declare dso_local i32 @pedwarn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
