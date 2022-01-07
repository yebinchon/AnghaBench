; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cp-gimplify.c_gimplify_must_not_throw_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cp-gimplify.c_gimplify_must_not_throw_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i32 0, align 4
@terminate_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*)* @gimplify_must_not_throw_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gimplify_must_not_throw_expr(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load i64*, i64** %3, align 8
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @voidify_wrapper_expr(i64 %10, i32* null)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i64 @TREE_OPERAND(i64 %12, i32 0)
  store i64 %13, i64* %7, align 8
  %14 = call i32 @gimplify_stmt(i64* %7)
  %15 = load i64, i64* %7, align 8
  %16 = load i32, i32* @NULL_TREE, align 4
  %17 = load i32, i32* @terminate_node, align 4
  %18 = load i32, i32* @NULL_TREE, align 4
  %19 = call i32 @build_call(i32 %17, i32 %18)
  %20 = call i64 @gimple_build_eh_filter(i64 %15, i32 %16, i32 %19)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i64, i64* %5, align 8
  %25 = load i64*, i64** %4, align 8
  %26 = call i32 @append_to_statement_list(i64 %24, i64* %25)
  %27 = load i64, i64* %6, align 8
  %28 = load i64*, i64** %3, align 8
  store i64 %27, i64* %28, align 8
  br label %32

29:                                               ; preds = %2
  %30 = load i64, i64* %5, align 8
  %31 = load i64*, i64** %3, align 8
  store i64 %30, i64* %31, align 8
  br label %32

32:                                               ; preds = %29, %23
  ret void
}

declare dso_local i64 @voidify_wrapper_expr(i64, i32*) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @gimplify_stmt(i64*) #1

declare dso_local i64 @gimple_build_eh_filter(i64, i32, i32) #1

declare dso_local i32 @build_call(i32, i32) #1

declare dso_local i32 @append_to_statement_list(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
