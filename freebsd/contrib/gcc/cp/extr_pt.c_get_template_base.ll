; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_get_template_base.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_get_template_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64, i64)* @get_template_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_template_base(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* @NULL_TREE, align 8
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @TREE_CODE(i64 %14)
  %16 = call i32 @IS_AGGR_TYPE_CODE(i32 %15)
  %17 = call i32 @gcc_assert(i32 %16)
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @complete_type(i64 %18)
  %20 = call i64 @TYPE_BINFO(i32 %19)
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %11, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %4
  %24 = load i64, i64* @NULL_TREE, align 8
  store i64 %24, i64* %5, align 8
  br label %58

25:                                               ; preds = %4
  %26 = load i64, i64* %11, align 8
  %27 = call i64 @TREE_CHAIN(i64 %26)
  store i64 %27, i64* %11, align 8
  br label %28

28:                                               ; preds = %53, %25
  %29 = load i64, i64* %11, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %28
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @BINFO_TYPE(i64 %35)
  %37 = call i64 @try_class_unification(i64 %32, i64 %33, i64 %34, i32 %36)
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %31
  %41 = load i64, i64* %10, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @same_type_p(i64 %44, i64 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = load i64, i64* @NULL_TREE, align 8
  store i64 %49, i64* %5, align 8
  br label %58

50:                                               ; preds = %43, %40
  %51 = load i64, i64* %12, align 8
  store i64 %51, i64* %10, align 8
  br label %52

52:                                               ; preds = %50, %31
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %11, align 8
  %55 = call i64 @TREE_CHAIN(i64 %54)
  store i64 %55, i64* %11, align 8
  br label %28

56:                                               ; preds = %28
  %57 = load i64, i64* %10, align 8
  store i64 %57, i64* %5, align 8
  br label %58

58:                                               ; preds = %56, %48, %23
  %59 = load i64, i64* %5, align 8
  ret i64 %59
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @IS_AGGR_TYPE_CODE(i32) #1

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i64 @TYPE_BINFO(i32) #1

declare dso_local i32 @complete_type(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @try_class_unification(i64, i64, i64, i32) #1

declare dso_local i32 @BINFO_TYPE(i64) #1

declare dso_local i32 @same_type_p(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
