; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_search.c_protected_accessible_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_search.c_protected_accessible_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ak_none = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64)* @protected_accessible_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @protected_accessible_p(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @context_for_name_lookup(i64 %10)
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @DERIVED_FROM_P(i64 %11, i64 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %46

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @access_in_type(i64 %17, i64 %18)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @ak_none, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %46

24:                                               ; preds = %16
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @DECL_NONSTATIC_MEMBER_P(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  %29 = load i64, i64* %7, align 8
  store i64 %29, i64* %9, align 8
  br label %30

30:                                               ; preds = %34, %28
  %31 = load i64, i64* %9, align 8
  %32 = call i64 @BINFO_INHERITANCE_CHAIN(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i64, i64* %9, align 8
  %36 = call i64 @BINFO_INHERITANCE_CHAIN(i64 %35)
  store i64 %36, i64* %9, align 8
  br label %30

37:                                               ; preds = %30
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i64 @BINFO_TYPE(i64 %39)
  %41 = call i32 @DERIVED_FROM_P(i64 %38, i64 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %46

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %24
  store i32 1, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %43, %23, %15
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @DERIVED_FROM_P(i64, i64) #1

declare dso_local i64 @context_for_name_lookup(i64) #1

declare dso_local i64 @access_in_type(i64, i64) #1

declare dso_local i64 @DECL_NONSTATIC_MEMBER_P(i64) #1

declare dso_local i64 @BINFO_INHERITANCE_CHAIN(i64) #1

declare dso_local i64 @BINFO_TYPE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
