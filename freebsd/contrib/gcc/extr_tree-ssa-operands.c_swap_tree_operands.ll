; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-operands.c_swap_tree_operands.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-operands.c_swap_tree_operands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap_tree_operands(i64 %0, i64* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i64*, align 8
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %13 = load i64*, i64** %5, align 8
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = call i64 (...) @ssa_operands_active()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %86

19:                                               ; preds = %3
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %86

23:                                               ; preds = %19
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %9, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call %struct.TYPE_5__* @USE_OPS(i64 %24)
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %11, align 8
  br label %26

26:                                               ; preds = %39, %23
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %28 = icmp ne %struct.TYPE_5__* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %31 = call %struct.TYPE_6__* @USE_OP_PTR(%struct.TYPE_5__* %30)
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i64*, i64** %5, align 8
  %35 = icmp eq i64* %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %9, align 8
  br label %43

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %11, align 8
  br label %26

43:                                               ; preds = %36, %26
  %44 = load i64, i64* %4, align 8
  %45 = call %struct.TYPE_5__* @USE_OPS(i64 %44)
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %11, align 8
  br label %46

46:                                               ; preds = %59, %43
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %48 = icmp ne %struct.TYPE_5__* %47, null
  br i1 %48, label %49, label %63

49:                                               ; preds = %46
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %51 = call %struct.TYPE_6__* @USE_OP_PTR(%struct.TYPE_5__* %50)
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i64*, i64** %6, align 8
  %55 = icmp eq i64* %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  store %struct.TYPE_5__* %57, %struct.TYPE_5__** %10, align 8
  br label %63

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %11, align 8
  br label %46

63:                                               ; preds = %56, %46
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %65 = icmp ne %struct.TYPE_5__* %64, null
  br i1 %65, label %66, label %85

66:                                               ; preds = %63
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %68 = icmp ne %struct.TYPE_5__* %67, null
  br i1 %68, label %69, label %85

69:                                               ; preds = %66
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %71 = call %struct.TYPE_6__* @USE_OP_PTR(%struct.TYPE_5__* %70)
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  store i64* %73, i64** %12, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %75 = call %struct.TYPE_6__* @USE_OP_PTR(%struct.TYPE_5__* %74)
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %79 = call %struct.TYPE_6__* @USE_OP_PTR(%struct.TYPE_5__* %78)
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i64* %77, i64** %80, align 8
  %81 = load i64*, i64** %12, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %83 = call %struct.TYPE_6__* @USE_OP_PTR(%struct.TYPE_5__* %82)
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i64* %81, i64** %84, align 8
  br label %85

85:                                               ; preds = %69, %66, %63
  br label %86

86:                                               ; preds = %85, %19, %3
  %87 = load i64, i64* %8, align 8
  %88 = load i64*, i64** %5, align 8
  store i64 %87, i64* %88, align 8
  %89 = load i64, i64* %7, align 8
  %90 = load i64*, i64** %6, align 8
  store i64 %89, i64* %90, align 8
  ret void
}

declare dso_local i64 @ssa_operands_active(...) #1

declare dso_local %struct.TYPE_5__* @USE_OPS(i64) #1

declare dso_local %struct.TYPE_6__* @USE_OP_PTR(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
