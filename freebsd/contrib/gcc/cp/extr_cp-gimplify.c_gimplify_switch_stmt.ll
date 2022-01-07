; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cp-gimplify.c_gimplify_switch_stmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cp-gimplify.c_gimplify_switch_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input_location = common dso_local global i32 0, align 4
@bc_break = common dso_local global i32 0, align 4
@SWITCH_EXPR = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*)* @gimplify_switch_stmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gimplify_switch_stmt(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64* %0, i64** %2, align 8
  %7 = load i64*, i64** %2, align 8
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %3, align 8
  %9 = load i32, i32* @input_location, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @bc_break, align 4
  %11 = call i64 @begin_bc_block(i32 %10)
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %3, align 8
  %13 = call i64 @SWITCH_STMT_BODY(i64 %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = call i64 (...) @build_empty_stmt()
  store i64 %17, i64* %5, align 8
  br label %18

18:                                               ; preds = %16, %1
  %19 = load i32, i32* @SWITCH_EXPR, align 4
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @SWITCH_STMT_TYPE(i64 %20)
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @SWITCH_STMT_COND(i64 %22)
  %24 = load i64, i64* %5, align 8
  %25 = load i32, i32* @NULL_TREE, align 4
  %26 = call i64 @build3(i32 %19, i32 %21, i32 %23, i64 %24, i32 %25)
  %27 = load i64*, i64** %2, align 8
  store i64 %26, i64* %27, align 8
  %28 = load i64*, i64** %2, align 8
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @SET_EXPR_LOCATION(i64 %29, i32 %30)
  %32 = load i64*, i64** %2, align 8
  %33 = call i32 @gimplify_stmt(i64* %32)
  %34 = load i32, i32* @bc_break, align 4
  %35 = load i64, i64* %4, align 8
  %36 = load i64*, i64** %2, align 8
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @finish_bc_block(i32 %34, i64 %35, i64 %37)
  %39 = load i64*, i64** %2, align 8
  store i64 %38, i64* %39, align 8
  ret void
}

declare dso_local i64 @begin_bc_block(i32) #1

declare dso_local i64 @SWITCH_STMT_BODY(i64) #1

declare dso_local i64 @build_empty_stmt(...) #1

declare dso_local i64 @build3(i32, i32, i32, i64, i32) #1

declare dso_local i32 @SWITCH_STMT_TYPE(i64) #1

declare dso_local i32 @SWITCH_STMT_COND(i64) #1

declare dso_local i32 @SET_EXPR_LOCATION(i64, i32) #1

declare dso_local i32 @gimplify_stmt(i64*) #1

declare dso_local i64 @finish_bc_block(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
