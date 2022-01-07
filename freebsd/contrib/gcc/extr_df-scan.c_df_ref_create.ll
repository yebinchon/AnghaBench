; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-scan.c_df_ref_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-scan.c_df_ref_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.df_ref = type { i32 }
%struct.df = type { %struct.TYPE_6__, %struct.TYPE_6__, %struct.dataflow** }
%struct.TYPE_6__ = type { i32 }
%struct.dataflow = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.df_scan_bb_info = type { i32*, i32* }

@DF_SCAN = common dso_local global i64 0, align 8
@DF_REF_REG_DEF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.df_ref* @df_ref_create(%struct.df* %0, i32 %1, i32* %2, i32 %3, %struct.TYPE_5__* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.df*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.dataflow*, align 8
  %16 = alloca %struct.df_scan_bb_info*, align 8
  store %struct.df* %0, %struct.df** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load %struct.df*, %struct.df** %8, align 8
  %18 = getelementptr inbounds %struct.df, %struct.df* %17, i32 0, i32 2
  %19 = load %struct.dataflow**, %struct.dataflow*** %18, align 8
  %20 = load i64, i64* @DF_SCAN, align 8
  %21 = getelementptr inbounds %struct.dataflow*, %struct.dataflow** %19, i64 %20
  %22 = load %struct.dataflow*, %struct.dataflow** %21, align 8
  store %struct.dataflow* %22, %struct.dataflow** %15, align 8
  %23 = load %struct.dataflow*, %struct.dataflow** %15, align 8
  %24 = load %struct.df*, %struct.df** %8, align 8
  %25 = getelementptr inbounds %struct.df, %struct.df* %24, i32 0, i32 0
  %26 = call i32 @df_grow_reg_info(%struct.dataflow* %23, %struct.TYPE_6__* %25)
  %27 = load %struct.dataflow*, %struct.dataflow** %15, align 8
  %28 = load %struct.df*, %struct.df** %8, align 8
  %29 = getelementptr inbounds %struct.df, %struct.df* %28, i32 0, i32 1
  %30 = call i32 @df_grow_reg_info(%struct.dataflow* %27, %struct.TYPE_6__* %29)
  %31 = load %struct.dataflow*, %struct.dataflow** %15, align 8
  %32 = call i32 @df_grow_bb_info(%struct.dataflow* %31)
  %33 = load %struct.dataflow*, %struct.dataflow** %15, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.df_scan_bb_info* @df_scan_get_bb_info(%struct.dataflow* %33, i32 %36)
  store %struct.df_scan_bb_info* %37, %struct.df_scan_bb_info** %16, align 8
  %38 = load %struct.df_scan_bb_info*, %struct.df_scan_bb_info** %16, align 8
  %39 = icmp ne %struct.df_scan_bb_info* %38, null
  br i1 %39, label %56, label %40

40:                                               ; preds = %7
  %41 = load %struct.dataflow*, %struct.dataflow** %15, align 8
  %42 = getelementptr inbounds %struct.dataflow, %struct.dataflow* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @pool_alloc(i32 %43)
  %45 = inttoptr i64 %44 to %struct.df_scan_bb_info*
  store %struct.df_scan_bb_info* %45, %struct.df_scan_bb_info** %16, align 8
  %46 = load %struct.dataflow*, %struct.dataflow** %15, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.df_scan_bb_info*, %struct.df_scan_bb_info** %16, align 8
  %51 = call i32 @df_scan_set_bb_info(%struct.dataflow* %46, i32 %49, %struct.df_scan_bb_info* %50)
  %52 = load %struct.df_scan_bb_info*, %struct.df_scan_bb_info** %16, align 8
  %53 = getelementptr inbounds %struct.df_scan_bb_info, %struct.df_scan_bb_info* %52, i32 0, i32 1
  store i32* null, i32** %53, align 8
  %54 = load %struct.df_scan_bb_info*, %struct.df_scan_bb_info** %16, align 8
  %55 = getelementptr inbounds %struct.df_scan_bb_info, %struct.df_scan_bb_info* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %40, %7
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @DF_REF_REG_DEF, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load %struct.df*, %struct.df** %8, align 8
  %62 = getelementptr inbounds %struct.df, %struct.df* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 4
  br label %68

64:                                               ; preds = %56
  %65 = load %struct.df*, %struct.df** %8, align 8
  %66 = getelementptr inbounds %struct.df, %struct.df* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  br label %68

68:                                               ; preds = %64, %60
  %69 = load %struct.dataflow*, %struct.dataflow** %15, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %14, align 4
  %76 = call %struct.df_ref* @df_ref_create_structure(%struct.dataflow* %69, i32 %70, i32* %71, %struct.TYPE_5__* %72, i32 %73, i32 %74, i32 %75)
  ret %struct.df_ref* %76
}

declare dso_local i32 @df_grow_reg_info(%struct.dataflow*, %struct.TYPE_6__*) #1

declare dso_local i32 @df_grow_bb_info(%struct.dataflow*) #1

declare dso_local %struct.df_scan_bb_info* @df_scan_get_bb_info(%struct.dataflow*, i32) #1

declare dso_local i64 @pool_alloc(i32) #1

declare dso_local i32 @df_scan_set_bb_info(%struct.dataflow*, i32, %struct.df_scan_bb_info*) #1

declare dso_local %struct.df_ref* @df_ref_create_structure(%struct.dataflow*, i32, i32*, %struct.TYPE_5__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
