; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9p012_fox.c_mt9p012_set_fps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9p012_fox.c_mt9p012_set_fps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.fps_cfg = type { i32, i32, i32 }

@mt9p012_ctrl = common dso_local global %struct.TYPE_7__* null, align 8
@mt9p012_client = common dso_local global %struct.TYPE_8__* null, align 8
@REG_GROUPED_PARAMETER_HOLD = common dso_local global i32 0, align 4
@GROUPED_PARAMETER_HOLD = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i64 0, align 8
@REG_LINE_LENGTH_PCK = common dso_local global i32 0, align 4
@mt9p012_regs = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@RES_PREVIEW = common dso_local global i64 0, align 8
@GROUPED_PARAMETER_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.fps_cfg*)* @mt9p012_set_fps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mt9p012_set_fps(%struct.fps_cfg* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.fps_cfg*, align 8
  %4 = alloca i64, align 8
  store %struct.fps_cfg* %0, %struct.fps_cfg** %3, align 8
  store i64 0, i64* %4, align 8
  %5 = load %struct.fps_cfg*, %struct.fps_cfg** %3, align 8
  %6 = getelementptr inbounds %struct.fps_cfg, %struct.fps_cfg* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mt9p012_ctrl, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load %struct.fps_cfg*, %struct.fps_cfg** %3, align 8
  %11 = getelementptr inbounds %struct.fps_cfg, %struct.fps_cfg* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mt9p012_ctrl, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mt9p012_client, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @REG_GROUPED_PARAMETER_HOLD, align 4
  %19 = load i32, i32* @GROUPED_PARAMETER_HOLD, align 4
  %20 = call i64 @mt9p012_i2c_write_w(i32 %17, i32 %18, i32 %19)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i64, i64* @EBUSY, align 8
  %25 = sub nsw i64 0, %24
  store i64 %25, i64* %2, align 8
  br label %54

26:                                               ; preds = %1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mt9p012_client, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @REG_LINE_LENGTH_PCK, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mt9p012_regs, i32 0, i32 0), align 8
  %32 = load i64, i64* @RES_PREVIEW, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.fps_cfg*, %struct.fps_cfg** %3, align 8
  %37 = getelementptr inbounds %struct.fps_cfg, %struct.fps_cfg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %35, %38
  %40 = sdiv i32 %39, 1024
  %41 = call i64 @mt9p012_i2c_write_w(i32 %29, i32 %30, i32 %40)
  store i64 %41, i64* %4, align 8
  %42 = load i64, i64* %4, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %26
  %45 = load i64, i64* %4, align 8
  store i64 %45, i64* %2, align 8
  br label %54

46:                                               ; preds = %26
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mt9p012_client, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @REG_GROUPED_PARAMETER_HOLD, align 4
  %51 = load i32, i32* @GROUPED_PARAMETER_UPDATE, align 4
  %52 = call i64 @mt9p012_i2c_write_w(i32 %49, i32 %50, i32 %51)
  store i64 %52, i64* %4, align 8
  %53 = load i64, i64* %4, align 8
  store i64 %53, i64* %2, align 8
  br label %54

54:                                               ; preds = %46, %44, %23
  %55 = load i64, i64* %2, align 8
  ret i64 %55
}

declare dso_local i64 @mt9p012_i2c_write_w(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
