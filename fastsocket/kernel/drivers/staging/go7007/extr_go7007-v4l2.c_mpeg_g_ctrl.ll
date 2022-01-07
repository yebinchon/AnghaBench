; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_mpeg_g_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_mpeg_g_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_control = type { i32, i32 }
%struct.go7007 = type { i32, i32, i32, i32, i32, i32 }

@V4L2_MPEG_STREAM_TYPE_MPEG2_DVD = common dso_local global i32 0, align 4
@V4L2_MPEG_STREAM_TYPE_MPEG_ELEM = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ENCODING_MPEG_1 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ENCODING_MPEG_2 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ENCODING_MPEG_4 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ASPECT_1x1 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ASPECT_4x3 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ASPECT_16x9 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_control*, %struct.go7007*)* @mpeg_g_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpeg_g_ctrl(%struct.v4l2_control* %0, %struct.go7007* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_control*, align 8
  %5 = alloca %struct.go7007*, align 8
  store %struct.v4l2_control* %0, %struct.v4l2_control** %4, align 8
  store %struct.go7007* %1, %struct.go7007** %5, align 8
  %6 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %7 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %81 [
    i32 133, label %9
    i32 130, label %23
    i32 132, label %43
    i32 128, label %63
    i32 129, label %69
    i32 131, label %75
  ]

9:                                                ; preds = %2
  %10 = load %struct.go7007*, %struct.go7007** %5, align 8
  %11 = getelementptr inbounds %struct.go7007, %struct.go7007* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load i32, i32* @V4L2_MPEG_STREAM_TYPE_MPEG2_DVD, align 4
  %16 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %17 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  br label %22

18:                                               ; preds = %9
  %19 = load i32, i32* @V4L2_MPEG_STREAM_TYPE_MPEG_ELEM, align 4
  %20 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %21 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %18, %14
  br label %84

23:                                               ; preds = %2
  %24 = load %struct.go7007*, %struct.go7007** %5, align 8
  %25 = getelementptr inbounds %struct.go7007, %struct.go7007* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %39 [
    i32 139, label %27
    i32 138, label %31
    i32 137, label %35
  ]

27:                                               ; preds = %23
  %28 = load i32, i32* @V4L2_MPEG_VIDEO_ENCODING_MPEG_1, align 4
  %29 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %30 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  br label %42

31:                                               ; preds = %23
  %32 = load i32, i32* @V4L2_MPEG_VIDEO_ENCODING_MPEG_2, align 4
  %33 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %34 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %42

35:                                               ; preds = %23
  %36 = load i32, i32* @V4L2_MPEG_VIDEO_ENCODING_MPEG_4, align 4
  %37 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %38 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %42

39:                                               ; preds = %23
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %85

42:                                               ; preds = %35, %31, %27
  br label %84

43:                                               ; preds = %2
  %44 = load %struct.go7007*, %struct.go7007** %5, align 8
  %45 = getelementptr inbounds %struct.go7007, %struct.go7007* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %59 [
    i32 135, label %47
    i32 134, label %51
    i32 136, label %55
  ]

47:                                               ; preds = %43
  %48 = load i32, i32* @V4L2_MPEG_VIDEO_ASPECT_1x1, align 4
  %49 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %50 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %62

51:                                               ; preds = %43
  %52 = load i32, i32* @V4L2_MPEG_VIDEO_ASPECT_4x3, align 4
  %53 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %54 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  br label %62

55:                                               ; preds = %43
  %56 = load i32, i32* @V4L2_MPEG_VIDEO_ASPECT_16x9, align 4
  %57 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %58 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  br label %62

59:                                               ; preds = %43
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %85

62:                                               ; preds = %55, %51, %47
  br label %84

63:                                               ; preds = %2
  %64 = load %struct.go7007*, %struct.go7007** %5, align 8
  %65 = getelementptr inbounds %struct.go7007, %struct.go7007* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %68 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %84

69:                                               ; preds = %2
  %70 = load %struct.go7007*, %struct.go7007** %5, align 8
  %71 = getelementptr inbounds %struct.go7007, %struct.go7007* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %74 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %84

75:                                               ; preds = %2
  %76 = load %struct.go7007*, %struct.go7007** %5, align 8
  %77 = getelementptr inbounds %struct.go7007, %struct.go7007* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %80 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %84

81:                                               ; preds = %2
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %85

84:                                               ; preds = %75, %69, %63, %62, %42, %22
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %81, %59, %39
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
