; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_init.c_expand_aggr_init_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_init.c_expand_aggr_init_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i64 0, align 8
@VAR_DECL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i64, i32)* @expand_aggr_init_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expand_aggr_init_1(i64 %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i64, i64* %8, align 8
  %13 = call i64 @TREE_TYPE(i64 %12)
  store i64 %13, i64* %11, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* @error_mark_node, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* @error_mark_node, align 8
  %20 = icmp ne i64 %18, %19
  br label %21

21:                                               ; preds = %17, %5
  %22 = phi i1 [ false, %5 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @gcc_assert(i32 %23)
  %25 = call i32 (...) @building_stmt_tree()
  %26 = call i32 @gcc_assert(i32 %25)
  %27 = load i64, i64* %9, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %21
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @TREE_CODE(i64 %30)
  %32 = load i64, i64* @VAR_DECL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = load i64, i64* %9, align 8
  %36 = call i64 @COMPOUND_LITERAL_P(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i64 @store_init_value(i64 %39, i64 %40)
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @finish_expr_stmt(i64 %45)
  br label %47

47:                                               ; preds = %44, %38
  br label %55

48:                                               ; preds = %34, %29, %21
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @expand_default_init(i64 %49, i64 %50, i64 %51, i64 %52, i32 %53)
  br label %55

55:                                               ; preds = %48, %47
  ret void
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @building_stmt_tree(...) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @COMPOUND_LITERAL_P(i64) #1

declare dso_local i64 @store_init_value(i64, i64) #1

declare dso_local i32 @finish_expr_stmt(i64) #1

declare dso_local i32 @expand_default_init(i64, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
