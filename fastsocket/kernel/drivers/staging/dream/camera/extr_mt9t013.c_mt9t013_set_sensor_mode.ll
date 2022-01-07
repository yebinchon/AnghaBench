; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9t013.c_mt9t013_set_sensor_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9t013.c_mt9t013_set_sensor_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@mt9t013_client = common dso_local global %struct.TYPE_2__* null, align 8
@REG_GROUPED_PARAMETER_HOLD = common dso_local global i32 0, align 4
@GROUPED_PARAMETER_HOLD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@GROUPED_PARAMETER_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32)* @mt9t013_set_sensor_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mt9t013_set_sensor_mode(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9t013_client, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @REG_GROUPED_PARAMETER_HOLD, align 4
  %11 = load i32, i32* @GROUPED_PARAMETER_HOLD, align 4
  %12 = call i64 @mt9t013_i2c_write_w(i32 %9, i32 %10, i32 %11)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i64, i64* %6, align 8
  store i64 %16, i64* %3, align 8
  br label %44

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %29 [
    i32 130, label %19
    i32 128, label %23
    i32 129, label %26
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @mt9t013_video_config(i32 %20, i32 %21)
  store i64 %22, i64* %6, align 8
  br label %32

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @mt9t013_snapshot_config(i32 %24)
  store i64 %25, i64* %6, align 8
  br label %32

26:                                               ; preds = %17
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @mt9t013_raw_snapshot_config(i32 %27)
  store i64 %28, i64* %6, align 8
  br label %32

29:                                               ; preds = %17
  %30 = load i64, i64* @EINVAL, align 8
  %31 = sub nsw i64 0, %30
  store i64 %31, i64* %3, align 8
  br label %44

32:                                               ; preds = %26, %23, %19
  %33 = load i64, i64* %6, align 8
  %34 = icmp sge i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9t013_client, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @REG_GROUPED_PARAMETER_HOLD, align 4
  %40 = load i32, i32* @GROUPED_PARAMETER_UPDATE, align 4
  %41 = call i64 @mt9t013_i2c_write_w(i32 %38, i32 %39, i32 %40)
  store i64 %41, i64* %3, align 8
  br label %44

42:                                               ; preds = %32
  %43 = load i64, i64* %6, align 8
  store i64 %43, i64* %3, align 8
  br label %44

44:                                               ; preds = %42, %35, %29, %15
  %45 = load i64, i64* %3, align 8
  ret i64 %45
}

declare dso_local i64 @mt9t013_i2c_write_w(i32, i32, i32) #1

declare dso_local i64 @mt9t013_video_config(i32, i32) #1

declare dso_local i64 @mt9t013_snapshot_config(i32) #1

declare dso_local i64 @mt9t013_raw_snapshot_config(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
