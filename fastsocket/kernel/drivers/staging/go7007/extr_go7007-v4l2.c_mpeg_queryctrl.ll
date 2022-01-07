; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_mpeg_queryctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_mpeg_queryctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_queryctrl = type { i32 }

@mpeg_queryctrl.mpeg_ctrls = internal constant [8 x i32] [i32 134, i32 133, i32 130, i32 132, i32 128, i32 129, i32 131, i32 0], align 16
@mpeg_queryctrl.ctrl_classes = internal global [2 x i32*] [i32* getelementptr inbounds ([8 x i32], [8 x i32]* @mpeg_queryctrl.mpeg_ctrls, i32 0, i32 0), i32* null], align 16
@V4L2_MPEG_STREAM_TYPE_MPEG2_DVD = common dso_local global i32 0, align 4
@V4L2_MPEG_STREAM_TYPE_MPEG_ELEM = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ENCODING_MPEG_1 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ENCODING_MPEG_4 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ENCODING_MPEG_2 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ASPECT_1x1 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ASPECT_16x9 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_queryctrl*)* @mpeg_queryctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpeg_queryctrl(%struct.v4l2_queryctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_queryctrl*, align 8
  store %struct.v4l2_queryctrl* %0, %struct.v4l2_queryctrl** %3, align 8
  %4 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %3, align 8
  %5 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @v4l2_ctrl_next(i32** getelementptr inbounds ([2 x i32*], [2 x i32*]* @mpeg_queryctrl.ctrl_classes, i64 0, i64 0), i32 %6)
  %8 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %3, align 8
  %9 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %3, align 8
  %11 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %43 [
    i32 134, label %13
    i32 133, label %16
    i32 130, label %22
    i32 132, label %28
    i32 128, label %34
    i32 129, label %37
    i32 131, label %40
  ]

13:                                               ; preds = %1
  %14 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %3, align 8
  %15 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %14, i32 0, i32 0, i32 0, i32 0)
  store i32 %15, i32* %2, align 4
  br label %46

16:                                               ; preds = %1
  %17 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %3, align 8
  %18 = load i32, i32* @V4L2_MPEG_STREAM_TYPE_MPEG2_DVD, align 4
  %19 = load i32, i32* @V4L2_MPEG_STREAM_TYPE_MPEG_ELEM, align 4
  %20 = load i32, i32* @V4L2_MPEG_STREAM_TYPE_MPEG_ELEM, align 4
  %21 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %17, i32 %18, i32 %19, i32 1, i32 %20)
  store i32 %21, i32* %2, align 4
  br label %46

22:                                               ; preds = %1
  %23 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %3, align 8
  %24 = load i32, i32* @V4L2_MPEG_VIDEO_ENCODING_MPEG_1, align 4
  %25 = load i32, i32* @V4L2_MPEG_VIDEO_ENCODING_MPEG_4, align 4
  %26 = load i32, i32* @V4L2_MPEG_VIDEO_ENCODING_MPEG_2, align 4
  %27 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %23, i32 %24, i32 %25, i32 1, i32 %26)
  store i32 %27, i32* %2, align 4
  br label %46

28:                                               ; preds = %1
  %29 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %3, align 8
  %30 = load i32, i32* @V4L2_MPEG_VIDEO_ASPECT_1x1, align 4
  %31 = load i32, i32* @V4L2_MPEG_VIDEO_ASPECT_16x9, align 4
  %32 = load i32, i32* @V4L2_MPEG_VIDEO_ASPECT_1x1, align 4
  %33 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %29, i32 %30, i32 %31, i32 1, i32 %32)
  store i32 %33, i32* %2, align 4
  br label %46

34:                                               ; preds = %1
  %35 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %3, align 8
  %36 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %35, i32 0, i32 34, i32 1, i32 15)
  store i32 %36, i32* %2, align 4
  br label %46

37:                                               ; preds = %1
  %38 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %3, align 8
  %39 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %38, i32 0, i32 1, i32 1, i32 0)
  store i32 %39, i32* %2, align 4
  br label %46

40:                                               ; preds = %1
  %41 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %3, align 8
  %42 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %41, i32 64000, i32 10000000, i32 1, i32 1500000)
  store i32 %42, i32* %2, align 4
  br label %46

43:                                               ; preds = %1
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %43, %40, %37, %34, %28, %22, %16, %13
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @v4l2_ctrl_next(i32**, i32) #1

declare dso_local i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
