; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_except.c_check_handlers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_except.c_check_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATEMENT_LIST = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"%H%<...%> handler must be the last handler for its try block\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_handlers(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @TREE_CODE(i32 %5)
  %7 = load i64, i64* @STATEMENT_LIST, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %40

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @tsi_start(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @tsi_end_p(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %40, label %16

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %16, %38
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @tsi_stmt(i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = call i32 @tsi_next(i32* %3)
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @tsi_end_p(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %39

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @TREE_TYPE(i32 %26)
  %28 = load i64, i64* @NULL_TREE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @EXPR_LOCUS(i32 %31)
  %33 = call i32 @pedwarn(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %38

34:                                               ; preds = %25
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @check_handlers_1(i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %30
  br label %17

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %9, %39, %10
  ret void
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @tsi_start(i32) #1

declare dso_local i64 @tsi_end_p(i32) #1

declare dso_local i32 @tsi_stmt(i32) #1

declare dso_local i32 @tsi_next(i32*) #1

declare dso_local i64 @TREE_TYPE(i32) #1

declare dso_local i32 @pedwarn(i8*, i32) #1

declare dso_local i32 @EXPR_LOCUS(i32) #1

declare dso_local i32 @check_handlers_1(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
