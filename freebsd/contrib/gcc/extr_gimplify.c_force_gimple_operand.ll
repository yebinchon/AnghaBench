; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_force_gimple_operand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimplify.c_force_gimple_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@NULL_TREE = common dso_local global i64 0, align 8
@in_ssa_p = common dso_local global i32 0, align 4
@gimplify_ctxp = common dso_local global %struct.TYPE_2__* null, align 8
@MODIFY_EXPR = common dso_local global i32 0, align 4
@fb_rvalue = common dso_local global i32 0, align 4
@GS_ERROR = common dso_local global i32 0, align 4
@referenced_vars = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @force_gimple_operand(i64 %0, i64* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64 (i64)*, align 8
  store i64 %0, i64* %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* @NULL_TREE, align 8
  %14 = load i64*, i64** %7, align 8
  store i64 %13, i64* %14, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @is_gimple_val(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i64, i64* %6, align 8
  store i64 %19, i64* %5, align 8
  br label %67

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i64 (i64)* @is_gimple_val, i64 (i64)* @is_gimple_reg_rhs
  store i64 (i64)* %24, i64 (i64)** %12, align 8
  %25 = call i32 (...) @push_gimplify_context()
  %26 = load i32, i32* @in_ssa_p, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gimplify_ctxp, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %20
  %32 = load i32, i32* @MODIFY_EXPR, align 4
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @TREE_TYPE(i64 %33)
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i64 @build2(i32 %32, i32 %34, i64 %35, i64 %36)
  store i64 %37, i64* %6, align 8
  br label %38

38:                                               ; preds = %31, %20
  %39 = load i64*, i64** %7, align 8
  %40 = load i64 (i64)*, i64 (i64)** %12, align 8
  %41 = load i32, i32* @fb_rvalue, align 4
  %42 = call i32 @gimplify_expr(i64* %6, i64* %39, i32* null, i64 (i64)* %40, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @GS_ERROR, align 4
  %45 = icmp ne i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @gcc_assert(i32 %46)
  %48 = load i64, i64* @referenced_vars, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %38
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gimplify_ctxp, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %10, align 8
  br label %54

54:                                               ; preds = %60, %50
  %55 = load i64, i64* %10, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @add_referenced_var(i64 %58)
  br label %60

60:                                               ; preds = %57
  %61 = load i64, i64* %10, align 8
  %62 = call i64 @TREE_CHAIN(i64 %61)
  store i64 %62, i64* %10, align 8
  br label %54

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %38
  %65 = call i32 @pop_gimplify_context(i32* null)
  %66 = load i64, i64* %6, align 8
  store i64 %66, i64* %5, align 8
  br label %67

67:                                               ; preds = %64, %18
  %68 = load i64, i64* %5, align 8
  ret i64 %68
}

declare dso_local i64 @is_gimple_val(i64) #1

declare dso_local i64 @is_gimple_reg_rhs(i64) #1

declare dso_local i32 @push_gimplify_context(...) #1

declare dso_local i64 @build2(i32, i32, i64, i64) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i32 @gimplify_expr(i64*, i64*, i32*, i64 (i64)*, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @add_referenced_var(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @pop_gimplify_context(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
