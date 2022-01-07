; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-eh.c_frob_into_branch_around.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-eh.c_frob_into_branch_around.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GOTO_EXPR = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i32 0, align 4
@LABEL_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64, i64)* @frob_into_branch_around to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frob_into_branch_around(i64* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64*, i64** %4, align 8
  %10 = load i64, i64* %9, align 8
  %11 = call i64 @TREE_OPERAND(i64 %10, i32 1)
  store i64 %11, i64* %8, align 8
  %12 = load i64*, i64** %4, align 8
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @TREE_OPERAND(i64 %13, i32 0)
  %15 = load i64*, i64** %4, align 8
  store i64 %14, i64* %15, align 8
  %16 = load i64*, i64** %4, align 8
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @block_may_fallthru(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = call i64 (...) @create_artificial_label()
  store i64 %24, i64* %6, align 8
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i32, i32* @GOTO_EXPR, align 4
  %27 = load i32, i32* @void_type_node, align 4
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @build1(i32 %26, i32 %27, i64 %28)
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64*, i64** %4, align 8
  %32 = call i32 @append_to_statement_list(i64 %30, i64* %31)
  br label %33

33:                                               ; preds = %25, %3
  %34 = load i64, i64* %5, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i32, i32* @LABEL_EXPR, align 4
  %38 = load i32, i32* @void_type_node, align 4
  %39 = load i64, i64* %5, align 8
  %40 = call i64 @build1(i32 %37, i32 %38, i64 %39)
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64*, i64** %4, align 8
  %43 = call i32 @append_to_statement_list(i64 %41, i64* %42)
  br label %44

44:                                               ; preds = %36, %33
  %45 = load i64, i64* %8, align 8
  %46 = load i64*, i64** %4, align 8
  %47 = call i32 @append_to_statement_list(i64 %45, i64* %46)
  %48 = load i64, i64* %6, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load i32, i32* @LABEL_EXPR, align 4
  %52 = load i32, i32* @void_type_node, align 4
  %53 = load i64, i64* %6, align 8
  %54 = call i64 @build1(i32 %51, i32 %52, i64 %53)
  store i64 %54, i64* %7, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i64*, i64** %4, align 8
  %57 = call i32 @append_to_statement_list(i64 %55, i64* %56)
  br label %58

58:                                               ; preds = %50, %44
  ret void
}

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @block_may_fallthru(i64) #1

declare dso_local i64 @create_artificial_label(...) #1

declare dso_local i64 @build1(i32, i32, i64) #1

declare dso_local i32 @append_to_statement_list(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
