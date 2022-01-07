; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_search.c_context_for_name_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_search.c_context_for_name_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@global_namespace = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @context_for_name_lookup(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @DECL_CONTEXT(i64 %4)
  store i64 %5, i64* %3, align 8
  br label %6

6:                                                ; preds = %19, %1
  %7 = load i64, i64* %3, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = load i64, i64* %3, align 8
  %11 = call i64 @TYPE_P(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @ANON_AGGR_TYPE_P(i64 %14)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %13, %9, %6
  %18 = phi i1 [ false, %9 ], [ false, %6 ], [ %16, %13 ]
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = load i64, i64* %3, align 8
  %21 = call i64 @TYPE_CONTEXT(i64 %20)
  store i64 %21, i64* %3, align 8
  br label %6

22:                                               ; preds = %17
  %23 = load i64, i64* %3, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = load i64, i64* @global_namespace, align 8
  store i64 %26, i64* %3, align 8
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i64, i64* %3, align 8
  ret i64 %28
}

declare dso_local i64 @DECL_CONTEXT(i64) #1

declare dso_local i64 @TYPE_P(i64) #1

declare dso_local i64 @ANON_AGGR_TYPE_P(i64) #1

declare dso_local i64 @TYPE_CONTEXT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
