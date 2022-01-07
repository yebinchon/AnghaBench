; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_search.c_copied_binfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_search.c_copied_binfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @copied_binfo(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i64, i64* @NULL_TREE, align 8
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @BINFO_VIRTUAL_P(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  store i64 %15, i64* %6, align 8
  br label %16

16:                                               ; preds = %21, %14
  %17 = load i64, i64* %6, align 8
  %18 = call i64 @BINFO_INHERITANCE_CHAIN(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %20
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @BINFO_INHERITANCE_CHAIN(i64 %22)
  store i64 %23, i64* %6, align 8
  br label %16

24:                                               ; preds = %16
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @BINFO_TYPE(i64 %25)
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @BINFO_TYPE(i64 %27)
  %29 = call i64 @binfo_for_vbase(i32 %26, i32 %28)
  store i64 %29, i64* %5, align 8
  br label %68

30:                                               ; preds = %2
  %31 = load i64, i64* %3, align 8
  %32 = call i64 @BINFO_INHERITANCE_CHAIN(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %30
  %35 = load i64, i64* %3, align 8
  %36 = call i64 @BINFO_INHERITANCE_CHAIN(i64 %35)
  %37 = load i64, i64* %4, align 8
  %38 = call i64 @copied_binfo(i64 %36, i64 %37)
  store i64 %38, i64* %7, align 8
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %55, %34
  %40 = load i64, i64* %7, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i64, i64* %8, align 8
  %43 = call i64 @BINFO_BASE_ITERATE(i64 %40, i32 %41, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %39
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @BINFO_TYPE(i64 %46)
  %48 = load i64, i64* %3, align 8
  %49 = call i32 @BINFO_TYPE(i64 %48)
  %50 = call i64 @SAME_BINFO_TYPE_P(i32 %47, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i64, i64* %8, align 8
  store i64 %53, i64* %5, align 8
  br label %58

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %39

58:                                               ; preds = %52, %39
  br label %67

59:                                               ; preds = %30
  %60 = load i64, i64* %4, align 8
  %61 = call i32 @BINFO_TYPE(i64 %60)
  %62 = load i64, i64* %3, align 8
  %63 = call i32 @BINFO_TYPE(i64 %62)
  %64 = call i64 @SAME_BINFO_TYPE_P(i32 %61, i32 %63)
  %65 = call i32 @gcc_assert(i64 %64)
  %66 = load i64, i64* %4, align 8
  store i64 %66, i64* %5, align 8
  br label %67

67:                                               ; preds = %59, %58
  br label %68

68:                                               ; preds = %67, %24
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @gcc_assert(i64 %69)
  %71 = load i64, i64* %5, align 8
  ret i64 %71
}

declare dso_local i64 @BINFO_VIRTUAL_P(i64) #1

declare dso_local i64 @BINFO_INHERITANCE_CHAIN(i64) #1

declare dso_local i64 @binfo_for_vbase(i32, i32) #1

declare dso_local i32 @BINFO_TYPE(i64) #1

declare dso_local i64 @BINFO_BASE_ITERATE(i64, i32, i64) #1

declare dso_local i64 @SAME_BINFO_TYPE_P(i32, i32) #1

declare dso_local i32 @gcc_assert(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
