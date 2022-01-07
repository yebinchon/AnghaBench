; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_remove_useless_stmts_warn_notreached.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_remove_useless_stmts_warn_notreached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"%Hwill never be executed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @remove_useless_stmts_warn_notreached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_useless_stmts_warn_notreached(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @EXPR_HAS_LOCATION(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @EXPR_LOCATION(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @LOCATION_LINE(i32 %12)
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = call i32 @warning(i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %4)
  store i32 1, i32* %2, align 4
  br label %85

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %17, %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @TREE_CODE(i32 %19)
  switch i32 %20, label %83 [
    i32 130, label %21
    i32 132, label %39
    i32 128, label %58
    i32 129, label %58
    i32 133, label %71
    i32 131, label %75
    i32 134, label %79
  ]

21:                                               ; preds = %18
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @tsi_start(i32 %22)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %36, %21
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @tsi_end_p(i32 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @tsi_stmt(i32 %30)
  %32 = call i32 @remove_useless_stmts_warn_notreached(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 1, i32* %2, align 4
  br label %85

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35
  %37 = call i32 @tsi_next(i32* %5)
  br label %24

38:                                               ; preds = %24
  br label %84

39:                                               ; preds = %18
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @COND_EXPR_COND(i32 %40)
  %42 = call i32 @remove_useless_stmts_warn_notreached(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 1, i32* %2, align 4
  br label %85

45:                                               ; preds = %39
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @COND_EXPR_THEN(i32 %46)
  %48 = call i32 @remove_useless_stmts_warn_notreached(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 1, i32* %2, align 4
  br label %85

51:                                               ; preds = %45
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @COND_EXPR_ELSE(i32 %52)
  %54 = call i32 @remove_useless_stmts_warn_notreached(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 1, i32* %2, align 4
  br label %85

57:                                               ; preds = %51
  br label %84

58:                                               ; preds = %18, %18
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @TREE_OPERAND(i32 %59, i32 0)
  %61 = call i32 @remove_useless_stmts_warn_notreached(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 1, i32* %2, align 4
  br label %85

64:                                               ; preds = %58
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @TREE_OPERAND(i32 %65, i32 1)
  %67 = call i32 @remove_useless_stmts_warn_notreached(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 1, i32* %2, align 4
  br label %85

70:                                               ; preds = %64
  br label %84

71:                                               ; preds = %18
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @CATCH_BODY(i32 %72)
  %74 = call i32 @remove_useless_stmts_warn_notreached(i32 %73)
  store i32 %74, i32* %2, align 4
  br label %85

75:                                               ; preds = %18
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @EH_FILTER_FAILURE(i32 %76)
  %78 = call i32 @remove_useless_stmts_warn_notreached(i32 %77)
  store i32 %78, i32* %2, align 4
  br label %85

79:                                               ; preds = %18
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @BIND_EXPR_BLOCK(i32 %80)
  %82 = call i32 @remove_useless_stmts_warn_notreached(i32 %81)
  store i32 %82, i32* %2, align 4
  br label %85

83:                                               ; preds = %18
  br label %84

84:                                               ; preds = %83, %70, %57, %38
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %79, %75, %71, %69, %63, %56, %50, %44, %34, %15
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i64 @EXPR_HAS_LOCATION(i32) #1

declare dso_local i32 @EXPR_LOCATION(i32) #1

declare dso_local i64 @LOCATION_LINE(i32) #1

declare dso_local i32 @warning(i32, i8*, i32*) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @tsi_start(i32) #1

declare dso_local i32 @tsi_end_p(i32) #1

declare dso_local i32 @tsi_stmt(i32) #1

declare dso_local i32 @tsi_next(i32*) #1

declare dso_local i32 @COND_EXPR_COND(i32) #1

declare dso_local i32 @COND_EXPR_THEN(i32) #1

declare dso_local i32 @COND_EXPR_ELSE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @CATCH_BODY(i32) #1

declare dso_local i32 @EH_FILTER_FAILURE(i32) #1

declare dso_local i32 @BIND_EXPR_BLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
