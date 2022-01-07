; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-core.c_df_analyze_problem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-core.c_df_analyze_problem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dataflow = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dataflow*, i32)*, i32 (%struct.dataflow*, i32, i32, i32*, i32, i32)*, i32 (%struct.dataflow*, i32, i32)*, i32 (%struct.dataflow*, i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @df_analyze_problem(%struct.dataflow* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.dataflow*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dataflow* %0, %struct.dataflow** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load %struct.dataflow*, %struct.dataflow** %8, align 8
  %16 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %19 = load i32 (%struct.dataflow*, i32, i32)*, i32 (%struct.dataflow*, i32, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.dataflow*, i32, i32)* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %7
  %22 = load %struct.dataflow*, %struct.dataflow** %8, align 8
  %23 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  %26 = load i32 (%struct.dataflow*, i32, i32)*, i32 (%struct.dataflow*, i32, i32)** %25, align 8
  %27 = load %struct.dataflow*, %struct.dataflow** %8, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 %26(%struct.dataflow* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %21, %7
  %32 = load %struct.dataflow*, %struct.dataflow** %8, align 8
  %33 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32 (%struct.dataflow*, i32, i32)*, i32 (%struct.dataflow*, i32, i32)** %35, align 8
  %37 = icmp ne i32 (%struct.dataflow*, i32, i32)* %36, null
  br i1 %37, label %38, label %48

38:                                               ; preds = %31
  %39 = load %struct.dataflow*, %struct.dataflow** %8, align 8
  %40 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32 (%struct.dataflow*, i32, i32)*, i32 (%struct.dataflow*, i32, i32)** %42, align 8
  %44 = load %struct.dataflow*, %struct.dataflow** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 %43(%struct.dataflow* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %38, %31
  %49 = load %struct.dataflow*, %struct.dataflow** %8, align 8
  %50 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32 (%struct.dataflow*, i32, i32, i32*, i32, i32)*, i32 (%struct.dataflow*, i32, i32, i32*, i32, i32)** %52, align 8
  %54 = icmp ne i32 (%struct.dataflow*, i32, i32, i32*, i32, i32)* %53, null
  br i1 %54, label %55, label %68

55:                                               ; preds = %48
  %56 = load %struct.dataflow*, %struct.dataflow** %8, align 8
  %57 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32 (%struct.dataflow*, i32, i32, i32*, i32, i32)*, i32 (%struct.dataflow*, i32, i32, i32*, i32, i32)** %59, align 8
  %61 = load %struct.dataflow*, %struct.dataflow** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32*, i32** %12, align 8
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %14, align 4
  %67 = call i32 %60(%struct.dataflow* %61, i32 %62, i32 %63, i32* %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %55, %48
  %69 = load %struct.dataflow*, %struct.dataflow** %8, align 8
  %70 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32 (%struct.dataflow*, i32)*, i32 (%struct.dataflow*, i32)** %72, align 8
  %74 = icmp ne i32 (%struct.dataflow*, i32)* %73, null
  br i1 %74, label %75, label %84

75:                                               ; preds = %68
  %76 = load %struct.dataflow*, %struct.dataflow** %8, align 8
  %77 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32 (%struct.dataflow*, i32)*, i32 (%struct.dataflow*, i32)** %79, align 8
  %81 = load %struct.dataflow*, %struct.dataflow** %8, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 %80(%struct.dataflow* %81, i32 %82)
  br label %84

84:                                               ; preds = %75, %68
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
