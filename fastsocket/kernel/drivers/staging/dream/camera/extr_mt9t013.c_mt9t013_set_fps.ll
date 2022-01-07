; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9t013.c_mt9t013_set_fps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9t013.c_mt9t013_set_fps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.fps_cfg = type { i32, i32, i32 }

@mt9t013_ctrl = common dso_local global %struct.TYPE_7__* null, align 8
@mt9t013_client = common dso_local global %struct.TYPE_8__* null, align 8
@REG_GROUPED_PARAMETER_HOLD = common dso_local global i32 0, align 4
@GROUPED_PARAMETER_HOLD = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"mt9t013_set_fps: fps_div is %d, frame_rate is %d\0A\00", align 1
@mt9t013_regs = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@RES_PREVIEW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"mt9t013_set_fps: fps_mult is %d, frame_rate is %d\0A\00", align 1
@REG_LINE_LENGTH_PCK = common dso_local global i32 0, align 4
@GROUPED_PARAMETER_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.fps_cfg*)* @mt9t013_set_fps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mt9t013_set_fps(%struct.fps_cfg* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.fps_cfg*, align 8
  %4 = alloca i64, align 8
  store %struct.fps_cfg* %0, %struct.fps_cfg** %3, align 8
  store i64 0, i64* %4, align 8
  %5 = load %struct.fps_cfg*, %struct.fps_cfg** %3, align 8
  %6 = getelementptr inbounds %struct.fps_cfg, %struct.fps_cfg* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mt9t013_ctrl, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.fps_cfg*, %struct.fps_cfg** %3, align 8
  %11 = getelementptr inbounds %struct.fps_cfg, %struct.fps_cfg* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mt9t013_ctrl, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mt9t013_client, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @REG_GROUPED_PARAMETER_HOLD, align 4
  %19 = load i32, i32* @GROUPED_PARAMETER_HOLD, align 4
  %20 = call i64 @mt9t013_i2c_write_w(i32 %17, i32 %18, i32 %19)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i64, i64* @EBUSY, align 8
  %25 = sub nsw i64 0, %24
  store i64 %25, i64* %2, align 8
  br label %87

26:                                               ; preds = %1
  %27 = load %struct.fps_cfg*, %struct.fps_cfg** %3, align 8
  %28 = getelementptr inbounds %struct.fps_cfg, %struct.fps_cfg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mt9t013_regs, i32 0, i32 0), align 8
  %31 = load i64, i64* @RES_PREVIEW, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.fps_cfg*, %struct.fps_cfg** %3, align 8
  %36 = getelementptr inbounds %struct.fps_cfg, %struct.fps_cfg* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %34, %37
  %39 = sdiv i32 %38, 1024
  %40 = call i32 @CDBG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %39)
  %41 = load %struct.fps_cfg*, %struct.fps_cfg** %3, align 8
  %42 = getelementptr inbounds %struct.fps_cfg, %struct.fps_cfg* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mt9t013_regs, i32 0, i32 0), align 8
  %45 = load i64, i64* @RES_PREVIEW, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.fps_cfg*, %struct.fps_cfg** %3, align 8
  %50 = getelementptr inbounds %struct.fps_cfg, %struct.fps_cfg* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %48, %51
  %53 = sdiv i32 %52, 1024
  %54 = call i32 @CDBG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mt9t013_client, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @REG_LINE_LENGTH_PCK, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mt9t013_regs, i32 0, i32 0), align 8
  %60 = load i64, i64* @RES_PREVIEW, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.fps_cfg*, %struct.fps_cfg** %3, align 8
  %65 = getelementptr inbounds %struct.fps_cfg, %struct.fps_cfg* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %63, %66
  %68 = sdiv i32 %67, 1024
  %69 = call i64 @mt9t013_i2c_write_w(i32 %57, i32 %58, i32 %68)
  store i64 %69, i64* %4, align 8
  %70 = load i64, i64* %4, align 8
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %26
  %73 = load i64, i64* %4, align 8
  store i64 %73, i64* %2, align 8
  br label %87

74:                                               ; preds = %26
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mt9t013_client, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @REG_GROUPED_PARAMETER_HOLD, align 4
  %79 = load i32, i32* @GROUPED_PARAMETER_UPDATE, align 4
  %80 = call i64 @mt9t013_i2c_write_w(i32 %77, i32 %78, i32 %79)
  store i64 %80, i64* %4, align 8
  %81 = load i64, i64* %4, align 8
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %74
  %84 = load i64, i64* %4, align 8
  store i64 %84, i64* %2, align 8
  br label %87

85:                                               ; preds = %74
  %86 = load i64, i64* %4, align 8
  store i64 %86, i64* %2, align 8
  br label %87

87:                                               ; preds = %85, %83, %72, %23
  %88 = load i64, i64* %2, align 8
  ret i64 %88
}

declare dso_local i64 @mt9t013_i2c_write_w(i32, i32, i32) #1

declare dso_local i32 @CDBG(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
