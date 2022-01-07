; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_constructor_name_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_constructor_name_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IDENTIFIER_NODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @constructor_name_p(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @TREE_CODE(i64 %11)
  %13 = load i64, i64* @IDENTIFIER_NODE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %34

16:                                               ; preds = %10
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @constructor_name_full(i64 %17)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %34

23:                                               ; preds = %16
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @IDENTIFIER_TEMPLATE(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @IDENTIFIER_TEMPLATE(i64 %29)
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %34

33:                                               ; preds = %27, %23
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %32, %22, %15, %9
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @constructor_name_full(i64) #1

declare dso_local i64 @IDENTIFIER_TEMPLATE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
