; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_may_be_nonaddressable_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_may_be_nonaddressable_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @may_be_nonaddressable_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @may_be_nonaddressable_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @TREE_CODE(i32 %4)
  switch i32 %5, label %38 [
    i32 129, label %6
    i32 130, label %19
    i32 131, label %19
    i32 128, label %23
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @TREE_OPERAND(i32 %7, i32 1)
  %9 = call i32 @DECL_NONADDRESSABLE_P(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @TREE_OPERAND(i32 %12, i32 0)
  %14 = call i32 @may_be_nonaddressable_p(i32 %13)
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %11, %6
  %17 = phi i1 [ true, %6 ], [ %15, %11 ]
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %2, align 4
  br label %40

19:                                               ; preds = %1, %1
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @TREE_OPERAND(i32 %20, i32 0)
  %22 = call i32 @may_be_nonaddressable_p(i32 %21)
  store i32 %22, i32* %2, align 4
  br label %40

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @TREE_TYPE(i32 %24)
  %26 = call i32 @AGGREGATE_TYPE_P(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @TREE_OPERAND(i32 %29, i32 0)
  %31 = call i32 @TREE_TYPE(i32 %30)
  %32 = call i32 @AGGREGATE_TYPE_P(i32 %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %28, %23
  %36 = phi i1 [ false, %23 ], [ %34, %28 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %2, align 4
  br label %40

38:                                               ; preds = %1
  br label %39

39:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %35, %19, %16
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @DECL_NONADDRESSABLE_P(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @AGGREGATE_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
