; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimple-low.c_lower_return_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gimple-low.c_lower_return_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lower_data = type { i64 }

@MODIFY_EXPR = common dso_local global i64 0, align 8
@GOTO_EXPR = common dso_local global i32 0, align 4
@void_type_node = common dso_local global i32 0, align 4
@TSI_SAME_STMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.lower_data*)* @lower_return_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lower_return_expr(i32* %0, %struct.lower_data* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.lower_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.lower_data* %1, %struct.lower_data** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @tsi_stmt(i32 %11)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i64 @TREE_OPERAND(i64 %13, i32 0)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @TREE_CODE(i64 %18)
  %20 = load i64, i64* @MODIFY_EXPR, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i64, i64* %6, align 8
  %24 = call i64 @TREE_OPERAND(i64 %23, i32 1)
  store i64 %24, i64* %6, align 8
  br label %25

25:                                               ; preds = %22, %17, %2
  %26 = load %struct.lower_data*, %struct.lower_data** %4, align 8
  %27 = getelementptr inbounds %struct.lower_data, %struct.lower_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %7, align 8
  br label %29

29:                                               ; preds = %54, %25
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %29
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @TREE_VALUE(i64 %33)
  %35 = call i64 @TREE_OPERAND(i64 %34, i32 0)
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load i64, i64* %9, align 8
  %40 = call i64 @TREE_CODE(i64 %39)
  %41 = load i64, i64* @MODIFY_EXPR, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i64, i64* %9, align 8
  %45 = call i64 @TREE_OPERAND(i64 %44, i32 1)
  store i64 %45, i64* %9, align 8
  br label %46

46:                                               ; preds = %43, %38, %32
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i64, i64* %7, align 8
  %52 = call i64 @TREE_PURPOSE(i64 %51)
  store i64 %52, i64* %8, align 8
  br label %67

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %7, align 8
  %56 = call i64 @TREE_CHAIN(i64 %55)
  store i64 %56, i64* %7, align 8
  br label %29

57:                                               ; preds = %29
  %58 = call i64 (...) @create_artificial_label()
  store i64 %58, i64* %8, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load %struct.lower_data*, %struct.lower_data** %4, align 8
  %62 = getelementptr inbounds %struct.lower_data, %struct.lower_data* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @tree_cons(i64 %59, i64 %60, i64 %63)
  %65 = load %struct.lower_data*, %struct.lower_data** %4, align 8
  %66 = getelementptr inbounds %struct.lower_data, %struct.lower_data* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %57, %50
  %68 = load i32, i32* @GOTO_EXPR, align 4
  %69 = load i32, i32* @void_type_node, align 4
  %70 = load i64, i64* %8, align 8
  %71 = call i64 @build1(i32 %68, i32 %69, i64 %70)
  store i64 %71, i64* %7, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @EXPR_LOCUS(i64 %73)
  %75 = call i32 @SET_EXPR_LOCUS(i64 %72, i32 %74)
  %76 = load i32*, i32** %3, align 8
  %77 = load i64, i64* %7, align 8
  %78 = load i32, i32* @TSI_SAME_STMT, align 4
  %79 = call i32 @tsi_link_before(i32* %76, i64 %77, i32 %78)
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @tsi_delink(i32* %80)
  ret void
}

declare dso_local i64 @tsi_stmt(i32) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_PURPOSE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @create_artificial_label(...) #1

declare dso_local i64 @tree_cons(i64, i64, i64) #1

declare dso_local i64 @build1(i32, i32, i64) #1

declare dso_local i32 @SET_EXPR_LOCUS(i64, i32) #1

declare dso_local i32 @EXPR_LOCUS(i64) #1

declare dso_local i32 @tsi_link_before(i32*, i64, i32) #1

declare dso_local i32 @tsi_delink(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
