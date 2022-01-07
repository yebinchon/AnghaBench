; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_search.c_binfo_via_virtual.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_search.c_binfo_via_virtual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @binfo_via_virtual(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @CLASSTYPE_VBASECLASSES(i64 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load i64, i64* @NULL_TREE, align 8
  store i64 %13, i64* %3, align 8
  br label %39

14:                                               ; preds = %8, %2
  br label %15

15:                                               ; preds = %34, %14
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @BINFO_TYPE(i64 %19)
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @SAME_BINFO_TYPE_P(i32 %20, i64 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %18, %15
  %26 = phi i1 [ false, %15 ], [ %24, %18 ]
  br i1 %26, label %27, label %37

27:                                               ; preds = %25
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @BINFO_VIRTUAL_P(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i64, i64* %4, align 8
  store i64 %32, i64* %3, align 8
  br label %39

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %4, align 8
  %36 = call i64 @BINFO_INHERITANCE_CHAIN(i64 %35)
  store i64 %36, i64* %4, align 8
  br label %15

37:                                               ; preds = %25
  %38 = load i64, i64* @NULL_TREE, align 8
  store i64 %38, i64* %3, align 8
  br label %39

39:                                               ; preds = %37, %31, %12
  %40 = load i64, i64* %3, align 8
  ret i64 %40
}

declare dso_local i32 @CLASSTYPE_VBASECLASSES(i64) #1

declare dso_local i32 @SAME_BINFO_TYPE_P(i32, i64) #1

declare dso_local i32 @BINFO_TYPE(i64) #1

declare dso_local i64 @BINFO_VIRTUAL_P(i64) #1

declare dso_local i64 @BINFO_INHERITANCE_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
