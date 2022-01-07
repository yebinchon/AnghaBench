; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_lvalue_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_lvalue_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FUNCTION_TYPE = common dso_local global i32 0, align 4
@METHOD_TYPE = common dso_local global i32 0, align 4
@ARRAY_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @lvalue_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lvalue_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @TREE_CODE(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %35 [
    i32 131, label %8
    i32 134, label %8
    i32 137, label %8
    i32 136, label %12
    i32 129, label %12
    i32 133, label %13
    i32 139, label %13
    i32 128, label %13
    i32 132, label %13
    i32 130, label %13
    i32 135, label %13
    i32 138, label %28
  ]

8:                                                ; preds = %1, %1, %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @TREE_OPERAND(i32 %9, i32 0)
  %11 = call i32 @lvalue_p(i32 %10)
  store i32 %11, i32* %2, align 4
  br label %36

12:                                               ; preds = %1, %1
  store i32 1, i32* %2, align 4
  br label %36

13:                                               ; preds = %1, %1, %1, %1, %1, %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @TREE_TYPE(i32 %14)
  %16 = call i32 @TREE_CODE(i32 %15)
  %17 = load i32, i32* @FUNCTION_TYPE, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @TREE_TYPE(i32 %20)
  %22 = call i32 @TREE_CODE(i32 %21)
  %23 = load i32, i32* @METHOD_TYPE, align 4
  %24 = icmp ne i32 %22, %23
  br label %25

25:                                               ; preds = %19, %13
  %26 = phi i1 [ false, %13 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %2, align 4
  br label %36

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @TREE_TYPE(i32 %29)
  %31 = call i32 @TREE_CODE(i32 %30)
  %32 = load i32, i32* @ARRAY_TYPE, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %2, align 4
  br label %36

35:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %28, %25, %12, %8
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
