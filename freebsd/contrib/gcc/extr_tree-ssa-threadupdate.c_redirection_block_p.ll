; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-threadupdate.c_redirection_block_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-threadupdate.c_redirection_block_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LABEL_EXPR = common dso_local global i64 0, align 8
@COND_EXPR = common dso_local global i64 0, align 8
@GOTO_EXPR = common dso_local global i64 0, align 8
@SWITCH_EXPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @redirection_block_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redirection_block_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @bsi_start(i32 %5)
  store i32 %6, i32* %4, align 4
  br label %7

7:                                                ; preds = %26, %1
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @bsi_end_p(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %7
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @bsi_stmt(i32 %12)
  %14 = call i64 @TREE_CODE(i64 %13)
  %15 = load i64, i64* @LABEL_EXPR, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @bsi_stmt(i32 %18)
  %20 = call i64 @IS_EMPTY_STMT(i64 %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %17, %11
  %23 = phi i1 [ true, %11 ], [ %21, %17 ]
  br label %24

24:                                               ; preds = %22, %7
  %25 = phi i1 [ false, %7 ], [ %23, %22 ]
  br i1 %25, label %26, label %28

26:                                               ; preds = %24
  %27 = call i32 @bsi_next(i32* %4)
  br label %7

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @bsi_end_p(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %60

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  %35 = call i64 @bsi_stmt(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  %39 = call i64 @bsi_stmt(i32 %38)
  %40 = call i64 @TREE_CODE(i64 %39)
  %41 = load i64, i64* @COND_EXPR, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %55, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %4, align 4
  %45 = call i64 @bsi_stmt(i32 %44)
  %46 = call i64 @TREE_CODE(i64 %45)
  %47 = load i64, i64* @GOTO_EXPR, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %4, align 4
  %51 = call i64 @bsi_stmt(i32 %50)
  %52 = call i64 @TREE_CODE(i64 %51)
  %53 = load i64, i64* @SWITCH_EXPR, align 8
  %54 = icmp eq i64 %52, %53
  br label %55

55:                                               ; preds = %49, %43, %37
  %56 = phi i1 [ true, %43 ], [ true, %37 ], [ %54, %49 ]
  br label %57

57:                                               ; preds = %55, %33
  %58 = phi i1 [ false, %33 ], [ %56, %55 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %57, %32
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @bsi_start(i32) #1

declare dso_local i64 @bsi_end_p(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @bsi_stmt(i32) #1

declare dso_local i64 @IS_EMPTY_STMT(i64) #1

declare dso_local i32 @bsi_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
