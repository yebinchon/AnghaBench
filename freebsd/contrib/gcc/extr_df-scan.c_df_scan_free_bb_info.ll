; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-scan.c_df_scan_free_bb_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-scan.c_df_scan_free_bb_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dataflow = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.df_scan_bb_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dataflow*, %struct.TYPE_3__*, i8*)* @df_scan_free_bb_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @df_scan_free_bb_info(%struct.dataflow* %0, %struct.TYPE_3__* %1, i8* %2) #0 {
  %4 = alloca %struct.dataflow*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.df_scan_bb_info*, align 8
  store %struct.dataflow* %0, %struct.dataflow** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.df_scan_bb_info*
  store %struct.df_scan_bb_info* %9, %struct.df_scan_bb_info** %7, align 8
  %10 = load %struct.df_scan_bb_info*, %struct.df_scan_bb_info** %7, align 8
  %11 = icmp ne %struct.df_scan_bb_info* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %3
  %13 = load %struct.dataflow*, %struct.dataflow** %4, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @df_bb_refs_delete(%struct.dataflow* %13, i32 %16)
  %18 = load %struct.dataflow*, %struct.dataflow** %4, align 8
  %19 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.df_scan_bb_info*, %struct.df_scan_bb_info** %7, align 8
  %22 = call i32 @pool_free(i32 %20, %struct.df_scan_bb_info* %21)
  br label %23

23:                                               ; preds = %12, %3
  ret void
}

declare dso_local i32 @df_bb_refs_delete(%struct.dataflow*, i32) #1

declare dso_local i32 @pool_free(i32, %struct.df_scan_bb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
