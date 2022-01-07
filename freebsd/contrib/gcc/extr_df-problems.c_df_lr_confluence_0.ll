; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-problems.c_df_lr_confluence_0.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-problems.c_df_lr_confluence_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.dataflow = type { %struct.df* }
%struct.df = type { i32 }
%struct.TYPE_6__ = type { i32 }

@EXIT_BLOCK_PTR = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dataflow*, %struct.TYPE_5__*)* @df_lr_confluence_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @df_lr_confluence_0(%struct.dataflow* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.dataflow*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.df*, align 8
  %6 = alloca i32, align 4
  store %struct.dataflow* %0, %struct.dataflow** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %7 = load %struct.dataflow*, %struct.dataflow** %3, align 8
  %8 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %7, i32 0, i32 0
  %9 = load %struct.df*, %struct.df** %8, align 8
  store %struct.df* %9, %struct.df** %5, align 8
  %10 = load %struct.dataflow*, %struct.dataflow** %3, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_6__* @df_lr_get_bb_info(%struct.dataflow* %10, i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @EXIT_BLOCK_PTR, align 8
  %19 = icmp ne %struct.TYPE_5__* %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.df*, %struct.df** %5, align 8
  %23 = getelementptr inbounds %struct.df, %struct.df* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @bitmap_copy(i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %20, %2
  ret void
}

declare dso_local %struct.TYPE_6__* @df_lr_get_bb_info(%struct.dataflow*, i32) #1

declare dso_local i32 @bitmap_copy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
