; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_search.c_accessible_base_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_search.c_accessible_base_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @accessible_base_p(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @same_type_p(i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %38

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @TYPE_FIELDS(i32 %15)
  store i32 %16, i32* %8, align 4
  br label %17

17:                                               ; preds = %22, %14
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @DECL_SELF_REFERENCE_P(i32 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @TREE_CHAIN(i32 %23)
  store i32 %24, i32* %8, align 4
  br label %17

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %30, %25
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @ANON_AGGR_TYPE_P(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @TYPE_CONTEXT(i32 %31)
  store i32 %32, i32* %5, align 4
  br label %26

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @accessible_p(i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %33, %13
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i64 @same_type_p(i32, i32) #1

declare dso_local i32 @TYPE_FIELDS(i32) #1

declare dso_local i32 @DECL_SELF_REFERENCE_P(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i64 @ANON_AGGR_TYPE_P(i32) #1

declare dso_local i32 @TYPE_CONTEXT(i32) #1

declare dso_local i32 @accessible_p(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
