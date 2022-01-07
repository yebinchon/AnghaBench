; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_supports_overflow_infinity.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vrp.c_supports_overflow_infinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @supports_overflow_infinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @supports_overflow_infinity(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i64 @TYPE_MIN_VALUE(i32 %3)
  %5 = load i64, i64* @NULL_TREE, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = call i64 @TYPE_MIN_VALUE(i32 %8)
  %10 = call i64 @CONSTANT_CLASS_P(i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %7
  %13 = load i32, i32* %2, align 4
  %14 = call i64 @TYPE_MAX_VALUE(i32 %13)
  %15 = load i64, i64* @NULL_TREE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load i32, i32* %2, align 4
  %19 = call i64 @TYPE_MAX_VALUE(i32 %18)
  %20 = call i64 @CONSTANT_CLASS_P(i64 %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %17, %12, %7, %1
  %23 = phi i1 [ false, %12 ], [ false, %7 ], [ false, %1 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  ret i32 %24
}

declare dso_local i64 @TYPE_MIN_VALUE(i32) #1

declare dso_local i64 @CONSTANT_CLASS_P(i64) #1

declare dso_local i64 @TYPE_MAX_VALUE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
