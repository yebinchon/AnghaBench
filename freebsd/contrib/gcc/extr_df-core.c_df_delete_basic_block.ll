; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-core.c_df_delete_basic_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-core.c_df_delete_basic_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.df = type { i32, %struct.dataflow** }
%struct.dataflow = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dataflow*, i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @df_delete_basic_block(%struct.df* %0, i32 %1) #0 {
  %3 = alloca %struct.df*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dataflow*, align 8
  store %struct.df* %0, %struct.df** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @BASIC_BLOCK(i32 %8)
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %43, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.df*, %struct.df** %3, align 8
  %13 = getelementptr inbounds %struct.df, %struct.df* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %46

16:                                               ; preds = %10
  %17 = load %struct.df*, %struct.df** %3, align 8
  %18 = getelementptr inbounds %struct.df, %struct.df* %17, i32 0, i32 1
  %19 = load %struct.dataflow**, %struct.dataflow*** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.dataflow*, %struct.dataflow** %19, i64 %21
  %23 = load %struct.dataflow*, %struct.dataflow** %22, align 8
  store %struct.dataflow* %23, %struct.dataflow** %7, align 8
  %24 = load %struct.dataflow*, %struct.dataflow** %7, align 8
  %25 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.dataflow*, i32, i32)*, i32 (%struct.dataflow*, i32, i32)** %27, align 8
  %29 = icmp ne i32 (%struct.dataflow*, i32, i32)* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %16
  %31 = load %struct.dataflow*, %struct.dataflow** %7, align 8
  %32 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.dataflow*, i32, i32)*, i32 (%struct.dataflow*, i32, i32)** %34, align 8
  %36 = load %struct.dataflow*, %struct.dataflow** %7, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.dataflow*, %struct.dataflow** %7, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @df_get_bb_info(%struct.dataflow* %38, i32 %39)
  %41 = call i32 %35(%struct.dataflow* %36, i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %30, %16
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %10

46:                                               ; preds = %10
  ret void
}

declare dso_local i32 @BASIC_BLOCK(i32) #1

declare dso_local i32 @df_get_bb_info(%struct.dataflow*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
