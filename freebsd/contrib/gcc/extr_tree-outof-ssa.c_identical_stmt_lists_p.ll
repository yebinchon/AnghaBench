; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-outof-ssa.c_identical_stmt_lists_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-outof-ssa.c_identical_stmt_lists_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATEMENT_LIST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @identical_stmt_lists_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @identical_stmt_lists_p(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @PENDING_STMT(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @PENDING_STMT(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @TREE_CODE(i32 %14)
  %16 = load i64, i64* @STATEMENT_LIST, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @gcc_assert(i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @TREE_CODE(i32 %20)
  %22 = load i64, i64* @STATEMENT_LIST, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @gcc_assert(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @tsi_start(i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @tsi_start(i32 %28)
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %50, %2
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @tsi_end_p(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @tsi_end_p(i32 %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %34, %30
  %40 = phi i1 [ false, %30 ], [ %38, %34 ]
  br i1 %40, label %41, label %53

41:                                               ; preds = %39
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @tsi_stmt(i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @tsi_stmt(i32 %44)
  %46 = call i32 @identical_copies_p(i32 %43, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  br label %53

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49
  %51 = call i32 @tsi_next(i32* %8)
  %52 = call i32 @tsi_next(i32* %9)
  br label %30

53:                                               ; preds = %48, %39
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @tsi_end_p(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @tsi_end_p(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57, %53
  store i32 0, i32* %3, align 4
  br label %63

62:                                               ; preds = %57
  store i32 1, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %61
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @PENDING_STMT(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @tsi_start(i32) #1

declare dso_local i32 @tsi_end_p(i32) #1

declare dso_local i32 @identical_copies_p(i32, i32) #1

declare dso_local i32 @tsi_stmt(i32) #1

declare dso_local i32 @tsi_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
