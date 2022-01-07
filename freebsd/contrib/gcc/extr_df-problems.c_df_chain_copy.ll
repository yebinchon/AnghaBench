; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-problems.c_df_chain_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-problems.c_df_chain_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dataflow = type { i32 }
%struct.df_ref = type { i32 }
%struct.df_link = type { %struct.df_link*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @df_chain_copy(%struct.dataflow* %0, %struct.df_ref* %1, %struct.df_link* %2) #0 {
  %4 = alloca %struct.dataflow*, align 8
  %5 = alloca %struct.df_ref*, align 8
  %6 = alloca %struct.df_link*, align 8
  store %struct.dataflow* %0, %struct.dataflow** %4, align 8
  store %struct.df_ref* %1, %struct.df_ref** %5, align 8
  store %struct.df_link* %2, %struct.df_link** %6, align 8
  br label %7

7:                                                ; preds = %10, %3
  %8 = load %struct.df_link*, %struct.df_link** %6, align 8
  %9 = icmp ne %struct.df_link* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = load %struct.dataflow*, %struct.dataflow** %4, align 8
  %12 = load %struct.df_ref*, %struct.df_ref** %5, align 8
  %13 = load %struct.df_link*, %struct.df_link** %6, align 8
  %14 = getelementptr inbounds %struct.df_link, %struct.df_link* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @df_chain_create(%struct.dataflow* %11, %struct.df_ref* %12, i32 %15)
  %17 = load %struct.df_link*, %struct.df_link** %6, align 8
  %18 = getelementptr inbounds %struct.df_link, %struct.df_link* %17, i32 0, i32 0
  %19 = load %struct.df_link*, %struct.df_link** %18, align 8
  store %struct.df_link* %19, %struct.df_link** %6, align 8
  br label %7

20:                                               ; preds = %7
  ret void
}

declare dso_local i32 @df_chain_create(%struct.dataflow*, %struct.df_ref*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
