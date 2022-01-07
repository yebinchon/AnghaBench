; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_merge_functions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_merge_functions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @merge_functions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @merge_functions(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  br label %8

8:                                                ; preds = %51, %2
  %9 = load i64, i64* %4, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %54

11:                                               ; preds = %8
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @OVL_CURRENT(i64 %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %3, align 8
  store i64 %14, i64* %6, align 8
  br label %15

15:                                               ; preds = %40, %11
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %15
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @OVL_CURRENT(i64 %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %38, label %24

24:                                               ; preds = %18
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @DECL_EXTERN_C_P(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @DECL_EXTERN_C_P(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @DECL_NAME(i64 %33)
  %35 = load i64, i64* %5, align 8
  %36 = call i64 @DECL_NAME(i64 %35)
  %37 = icmp eq i64 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %18
  br label %43

39:                                               ; preds = %32, %28, %24
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %6, align 8
  %42 = call i64 @OVL_NEXT(i64 %41)
  store i64 %42, i64* %6, align 8
  br label %15

43:                                               ; preds = %38, %15
  %44 = load i64, i64* %6, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %3, align 8
  %49 = call i64 @build_overload(i64 %47, i64 %48)
  store i64 %49, i64* %3, align 8
  br label %50

50:                                               ; preds = %46, %43
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %4, align 8
  %53 = call i64 @OVL_NEXT(i64 %52)
  store i64 %53, i64* %4, align 8
  br label %8

54:                                               ; preds = %8
  %55 = load i64, i64* %3, align 8
  ret i64 %55
}

declare dso_local i64 @OVL_CURRENT(i64) #1

declare dso_local i64 @DECL_EXTERN_C_P(i64) #1

declare dso_local i64 @DECL_NAME(i64) #1

declare dso_local i64 @OVL_NEXT(i64) #1

declare dso_local i64 @build_overload(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
