; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_casts_away_constness.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_casts_away_constness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REFERENCE_TYPE = common dso_local global i64 0, align 8
@POINTER_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @casts_away_constness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @casts_away_constness(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @TREE_CODE(i32 %6)
  %8 = load i64, i64* @REFERENCE_TYPE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @TREE_CODE(i32 %11)
  %13 = load i64, i64* @REFERENCE_TYPE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @TREE_TYPE(i32 %16)
  br label %20

18:                                               ; preds = %10
  %19 = load i32, i32* %4, align 4
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi i32 [ %17, %15 ], [ %19, %18 ]
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @build_pointer_type(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @TREE_TYPE(i32 %24)
  %26 = call i32 @build_pointer_type(i32 %25)
  %27 = call i32 @casts_away_constness(i32 %23, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %67

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @TYPE_PTRMEM_P(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @TYPE_PTRMEM_P(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @TYPE_PTRMEM_POINTED_TO_TYPE(i32 %37)
  %39 = call i32 @build_pointer_type(i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @TYPE_PTRMEM_POINTED_TO_TYPE(i32 %40)
  %42 = call i32 @build_pointer_type(i32 %41)
  %43 = call i32 @casts_away_constness(i32 %39, i32 %42)
  store i32 %43, i32* %3, align 4
  br label %67

44:                                               ; preds = %32, %28
  %45 = load i32, i32* %4, align 4
  %46 = call i64 @TREE_CODE(i32 %45)
  %47 = load i64, i64* @POINTER_TYPE, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @TREE_CODE(i32 %50)
  %52 = load i64, i64* @POINTER_TYPE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49, %44
  store i32 0, i32* %3, align 4
  br label %67

55:                                               ; preds = %49
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @TYPE_MAIN_VARIANT(i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @TYPE_MAIN_VARIANT(i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = call i32 @casts_away_constness_r(i32* %4, i32* %5)
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @can_convert(i32 %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %55
  store i32 1, i32* %3, align 4
  br label %67

66:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %65, %54, %36, %20
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @build_pointer_type(i32) #1

declare dso_local i64 @TYPE_PTRMEM_P(i32) #1

declare dso_local i32 @TYPE_PTRMEM_POINTED_TO_TYPE(i32) #1

declare dso_local i32 @TYPE_MAIN_VARIANT(i32) #1

declare dso_local i32 @casts_away_constness_r(i32*, i32*) #1

declare dso_local i32 @can_convert(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
