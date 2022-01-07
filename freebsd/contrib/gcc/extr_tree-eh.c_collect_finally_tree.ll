; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-eh.c_collect_finally_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-eh.c_collect_finally_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @collect_finally_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @collect_finally_tree(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  br label %6

6:                                                ; preds = %32, %29, %23, %14, %2
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @TREE_CODE(i32 %7)
  switch i32 %8, label %50 [
    i32 131, label %9
    i32 128, label %14
    i32 129, label %23
    i32 133, label %29
    i32 132, label %32
    i32 130, label %35
  ]

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @LABEL_EXPR_LABEL(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @record_in_finally_tree(i32 %11, i32 %12)
  br label %51

14:                                               ; preds = %6
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @record_in_finally_tree(i32 %15, i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @TREE_OPERAND(i32 %18, i32 0)
  %20 = load i32, i32* %3, align 4
  call void @collect_finally_tree(i32 %19, i32 %20)
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @TREE_OPERAND(i32 %21, i32 1)
  store i32 %22, i32* %3, align 4
  br label %6

23:                                               ; preds = %6
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @TREE_OPERAND(i32 %24, i32 0)
  %26 = load i32, i32* %4, align 4
  call void @collect_finally_tree(i32 %25, i32 %26)
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @TREE_OPERAND(i32 %27, i32 1)
  store i32 %28, i32* %3, align 4
  br label %6

29:                                               ; preds = %6
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @CATCH_BODY(i32 %30)
  store i32 %31, i32* %3, align 4
  br label %6

32:                                               ; preds = %6
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @EH_FILTER_FAILURE(i32 %33)
  store i32 %34, i32* %3, align 4
  br label %6

35:                                               ; preds = %6
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @tsi_start(i32 %36)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %47, %35
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @tsi_end_p(i32 %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @tsi_stmt(i32 %44)
  %46 = load i32, i32* %4, align 4
  call void @collect_finally_tree(i32 %45, i32 %46)
  br label %47

47:                                               ; preds = %43
  %48 = call i32 @tsi_next(i32* %5)
  br label %38

49:                                               ; preds = %38
  br label %51

50:                                               ; preds = %6
  br label %51

51:                                               ; preds = %50, %49, %9
  ret void
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @record_in_finally_tree(i32, i32) #1

declare dso_local i32 @LABEL_EXPR_LABEL(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @CATCH_BODY(i32) #1

declare dso_local i32 @EH_FILTER_FAILURE(i32) #1

declare dso_local i32 @tsi_start(i32) #1

declare dso_local i32 @tsi_end_p(i32) #1

declare dso_local i32 @tsi_stmt(i32) #1

declare dso_local i32 @tsi_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
