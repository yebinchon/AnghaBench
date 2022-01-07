; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_search.c_shared_member_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_search.c_shared_member_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VAR_DECL = common dso_local global i64 0, align 8
@TYPE_DECL = common dso_local global i64 0, align 8
@CONST_DECL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @shared_member_p(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i64 @TREE_CODE(i64 %5)
  %7 = load i64, i64* @VAR_DECL, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = call i64 @TREE_CODE(i64 %10)
  %12 = load i64, i64* @TYPE_DECL, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = load i64, i64* %3, align 8
  %16 = call i64 @TREE_CODE(i64 %15)
  %17 = load i64, i64* @CONST_DECL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %9, %1
  store i32 1, i32* %2, align 4
  br label %41

20:                                               ; preds = %14
  %21 = load i64, i64* %3, align 8
  %22 = call i64 @is_overloaded_fn(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %36, %24
  %26 = load i64, i64* %3, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load i64, i64* %3, align 8
  %30 = call i64 @OVL_CURRENT(i64 %29)
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i64 @DECL_NONSTATIC_MEMBER_FUNCTION_P(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %41

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %3, align 8
  %38 = call i64 @OVL_NEXT(i64 %37)
  store i64 %38, i64* %3, align 8
  br label %25

39:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %41

40:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %39, %34, %19
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @is_overloaded_fn(i64) #1

declare dso_local i64 @OVL_CURRENT(i64) #1

declare dso_local i64 @DECL_NONSTATIC_MEMBER_FUNCTION_P(i64) #1

declare dso_local i64 @OVL_NEXT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
