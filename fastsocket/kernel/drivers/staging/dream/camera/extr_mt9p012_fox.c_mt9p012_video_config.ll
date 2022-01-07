; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9p012_fox.c_mt9p012_video_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9p012_fox.c_mt9p012_video_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@UPDATE_PERIODIC = common dso_local global i32 0, align 4
@RES_PREVIEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"mt9p012 sensor configuration done!\0A\00", align 1
@RES_CAPTURE = common dso_local global i32 0, align 4
@mt9p012_ctrl = common dso_local global %struct.TYPE_3__* null, align 8
@mt9p012_client = common dso_local global %struct.TYPE_4__* null, align 8
@MT9P012_REG_RESET_REGISTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @mt9p012_video_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9p012_video_config(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %27 [
    i32 128, label %8
    i32 129, label %18
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @UPDATE_PERIODIC, align 4
  %10 = load i32, i32* @RES_PREVIEW, align 4
  %11 = call i32 @mt9p012_setting(i32 %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %51

16:                                               ; preds = %8
  %17 = call i32 @CDBG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %28

18:                                               ; preds = %2
  %19 = load i32, i32* @UPDATE_PERIODIC, align 4
  %20 = load i32, i32* @RES_CAPTURE, align 4
  %21 = call i32 @mt9p012_setting(i32 %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %51

26:                                               ; preds = %18
  br label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

28:                                               ; preds = %26, %16
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mt9p012_ctrl, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mt9p012_ctrl, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mt9p012_ctrl, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mt9p012_ctrl, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mt9p012_ctrl, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @mt9p012_write_exp_gain(i32 %40, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mt9p012_client, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MT9P012_REG_RESET_REGISTER, align 4
  %49 = call i32 @mt9p012_i2c_write_w(i32 %47, i32 %48, i32 4302)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %28, %27, %24, %14
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @mt9p012_setting(i32, i32) #1

declare dso_local i32 @CDBG(i8*) #1

declare dso_local i32 @mt9p012_write_exp_gain(i32, i32) #1

declare dso_local i32 @mt9p012_i2c_write_w(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
