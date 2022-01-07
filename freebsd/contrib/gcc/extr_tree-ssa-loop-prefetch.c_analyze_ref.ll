; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-prefetch.c_analyze_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-prefetch.c_analyze_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }
%struct.ar_data = type { i32*, i32*, i32, %struct.loop* }

@COMPONENT_REF = common dso_local global i64 0, align 8
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@idx_analyze_ref = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop*, i32*, i32*, i32*, i32*, i32)* @analyze_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analyze_ref(%struct.loop* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.loop*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ar_data, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.loop* %0, %struct.loop** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %16, align 4
  %19 = load i32*, i32** %10, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32*, i32** %11, align 8
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* %16, align 4
  %22 = call i64 @TREE_CODE(i32 %21)
  %23 = load i64, i64* @COMPONENT_REF, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %6
  %26 = load i32, i32* %16, align 4
  %27 = call i32 @TREE_OPERAND(i32 %26, i32 1)
  %28 = call i64 @DECL_NONADDRESSABLE_P(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %16, align 4
  %32 = call i32 @TREE_OPERAND(i32 %31, i32 0)
  store i32 %32, i32* %16, align 4
  br label %33

33:                                               ; preds = %30, %25, %6
  %34 = load i32, i32* %16, align 4
  %35 = load i32*, i32** %8, align 8
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %59, %33
  %37 = load i32, i32* %16, align 4
  %38 = call i64 @TREE_CODE(i32 %37)
  %39 = load i64, i64* @COMPONENT_REF, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %36
  %42 = load i32, i32* %16, align 4
  %43 = call i32 @TREE_OPERAND(i32 %42, i32 1)
  %44 = call i32 @DECL_FIELD_BIT_OFFSET(i32 %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @TREE_INT_CST_LOW(i32 %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* @BITS_PER_UNIT, align 4
  %49 = srem i32 %47, %48
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @gcc_assert(i32 %51)
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* @BITS_PER_UNIT, align 4
  %55 = sdiv i32 %53, %54
  %56 = load i32*, i32** %11, align 8
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, %55
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %41
  %60 = load i32, i32* %16, align 4
  %61 = call i32 @TREE_OPERAND(i32 %60, i32 0)
  store i32 %61, i32* %16, align 4
  br label %36

62:                                               ; preds = %36
  %63 = load i32, i32* %16, align 4
  %64 = call i32 @unshare_expr(i32 %63)
  %65 = load i32*, i32** %9, align 8
  store i32 %64, i32* %65, align 4
  %66 = load %struct.loop*, %struct.loop** %7, align 8
  %67 = getelementptr inbounds %struct.ar_data, %struct.ar_data* %13, i32 0, i32 3
  store %struct.loop* %66, %struct.loop** %67, align 8
  %68 = load i32, i32* %12, align 4
  %69 = getelementptr inbounds %struct.ar_data, %struct.ar_data* %13, i32 0, i32 2
  store i32 %68, i32* %69, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = getelementptr inbounds %struct.ar_data, %struct.ar_data* %13, i32 0, i32 0
  store i32* %70, i32** %71, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = getelementptr inbounds %struct.ar_data, %struct.ar_data* %13, i32 0, i32 1
  store i32* %72, i32** %73, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* @idx_analyze_ref, align 4
  %76 = call i32 @for_each_index(i32* %74, i32 %75, %struct.ar_data* %13)
  ret i32 %76
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @DECL_NONADDRESSABLE_P(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @DECL_FIELD_BIT_OFFSET(i32) #1

declare dso_local i32 @TREE_INT_CST_LOW(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @unshare_expr(i32) #1

declare dso_local i32 @for_each_index(i32*, i32, %struct.ar_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
