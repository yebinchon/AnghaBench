; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_get_qualified_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_get_qualified_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_qualified_type(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @TYPE_QUALS(i64 %7)
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  store i64 %12, i64* %3, align 8
  br label %33

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @TYPE_MAIN_VARIANT(i64 %14)
  store i64 %15, i64* %6, align 8
  br label %16

16:                                               ; preds = %28, %13
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @check_qualified_type(i64 %20, i64 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i64, i64* %6, align 8
  store i64 %26, i64* %3, align 8
  br label %33

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @TYPE_NEXT_VARIANT(i64 %29)
  store i64 %30, i64* %6, align 8
  br label %16

31:                                               ; preds = %16
  %32 = load i64, i64* @NULL_TREE, align 8
  store i64 %32, i64* %3, align 8
  br label %33

33:                                               ; preds = %31, %25, %11
  %34 = load i64, i64* %3, align 8
  ret i64 %34
}

declare dso_local i32 @TYPE_QUALS(i64) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i64 @check_qualified_type(i64, i64, i32) #1

declare dso_local i64 @TYPE_NEXT_VARIANT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
