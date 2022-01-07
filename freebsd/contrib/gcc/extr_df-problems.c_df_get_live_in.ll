; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-problems.c_df_get_live_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_df-problems.c_df_get_live_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.df = type { i64* }

@DF_LR = common dso_local global i64 0, align 8
@DF_UREC = common dso_local global i64 0, align 8
@DF_UR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @df_get_live_in(%struct.df* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.df*, align 8
  %5 = alloca i32, align 4
  store %struct.df* %0, %struct.df** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.df*, %struct.df** %4, align 8
  %7 = getelementptr inbounds %struct.df, %struct.df* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = load i64, i64* @DF_LR, align 8
  %10 = getelementptr inbounds i64, i64* %8, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @gcc_assert(i64 %11)
  %13 = load %struct.df*, %struct.df** %4, align 8
  %14 = getelementptr inbounds %struct.df, %struct.df* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* @DF_UREC, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.df*, %struct.df** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @DF_RA_LIVE_IN(%struct.df* %21, i32 %22)
  store i32 %23, i32* %3, align 4
  br label %40

24:                                               ; preds = %2
  %25 = load %struct.df*, %struct.df** %4, align 8
  %26 = getelementptr inbounds %struct.df, %struct.df* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* @DF_UR, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load %struct.df*, %struct.df** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @DF_LIVE_IN(%struct.df* %33, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %40

36:                                               ; preds = %24
  %37 = load %struct.df*, %struct.df** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @DF_UPWARD_LIVE_IN(%struct.df* %37, i32 %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %32, %20
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @gcc_assert(i64) #1

declare dso_local i32 @DF_RA_LIVE_IN(%struct.df*, i32) #1

declare dso_local i32 @DF_LIVE_IN(%struct.df*, i32) #1

declare dso_local i32 @DF_UPWARD_LIVE_IN(%struct.df*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
