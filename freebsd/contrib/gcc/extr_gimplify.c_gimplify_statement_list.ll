; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_gimplify_statement_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_gimplify_statement_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATEMENT_LIST = common dso_local global i64 0, align 8
@TSI_SAME_STMT = common dso_local global i32 0, align 4
@GS_OK = common dso_local global i32 0, align 4
@GS_ALL_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32**)* @gimplify_statement_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gimplify_statement_list(i32** %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32** %0, i32*** %4, align 8
  store i32** %1, i32*** %5, align 8
  %9 = load i32**, i32*** %4, align 8
  %10 = load i32*, i32** %9, align 8
  %11 = call i32* @voidify_wrapper_expr(i32* %10, i32* null)
  store i32* %11, i32** %6, align 8
  %12 = load i32**, i32*** %4, align 8
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @tsi_start(i32* %13)
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %43, %2
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @tsi_end_p(i32 %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %44

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @tsi_stmt_ptr(i32 %21)
  %23 = call i32 @gimplify_stmt(i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = call i32* @tsi_stmt(i32 %24)
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = call i32 @tsi_delink(i32* %7)
  br label %43

30:                                               ; preds = %20
  %31 = load i32*, i32** %8, align 8
  %32 = call i64 @TREE_CODE(i32* %31)
  %33 = load i64, i64* @STATEMENT_LIST, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* @TSI_SAME_STMT, align 4
  %38 = call i32 @tsi_link_before(i32* %7, i32* %36, i32 %37)
  %39 = call i32 @tsi_delink(i32* %7)
  br label %42

40:                                               ; preds = %30
  %41 = call i32 @tsi_next(i32* %7)
  br label %42

42:                                               ; preds = %40, %35
  br label %43

43:                                               ; preds = %42, %28
  br label %15

44:                                               ; preds = %15
  %45 = load i32*, i32** %6, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i32**, i32*** %4, align 8
  %49 = load i32*, i32** %48, align 8
  %50 = load i32**, i32*** %5, align 8
  %51 = call i32 @append_to_statement_list(i32* %49, i32** %50)
  %52 = load i32*, i32** %6, align 8
  %53 = load i32**, i32*** %4, align 8
  store i32* %52, i32** %53, align 8
  %54 = load i32, i32* @GS_OK, align 4
  store i32 %54, i32* %3, align 4
  br label %57

55:                                               ; preds = %44
  %56 = load i32, i32* @GS_ALL_DONE, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %47
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32* @voidify_wrapper_expr(i32*, i32*) #1

declare dso_local i32 @tsi_start(i32*) #1

declare dso_local i32 @tsi_end_p(i32) #1

declare dso_local i32 @gimplify_stmt(i32) #1

declare dso_local i32 @tsi_stmt_ptr(i32) #1

declare dso_local i32* @tsi_stmt(i32) #1

declare dso_local i32 @tsi_delink(i32*) #1

declare dso_local i64 @TREE_CODE(i32*) #1

declare dso_local i32 @tsi_link_before(i32*, i32*, i32) #1

declare dso_local i32 @tsi_next(i32*) #1

declare dso_local i32 @append_to_statement_list(i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
