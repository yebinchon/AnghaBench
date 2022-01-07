; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-problems.c_df_urec_set_bb_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-problems.c_df_urec_set_bb_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dataflow = type { %struct.df_urec_bb_info** }
%struct.df_urec_bb_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dataflow*, i32, %struct.df_urec_bb_info*)* @df_urec_set_bb_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @df_urec_set_bb_info(%struct.dataflow* %0, i32 %1, %struct.df_urec_bb_info* %2) #0 {
  %4 = alloca %struct.dataflow*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.df_urec_bb_info*, align 8
  store %struct.dataflow* %0, %struct.dataflow** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.df_urec_bb_info* %2, %struct.df_urec_bb_info** %6, align 8
  %7 = load %struct.df_urec_bb_info*, %struct.df_urec_bb_info** %6, align 8
  %8 = load %struct.dataflow*, %struct.dataflow** %4, align 8
  %9 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %8, i32 0, i32 0
  %10 = load %struct.df_urec_bb_info**, %struct.df_urec_bb_info*** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.df_urec_bb_info*, %struct.df_urec_bb_info** %10, i64 %12
  store %struct.df_urec_bb_info* %7, %struct.df_urec_bb_info** %13, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
