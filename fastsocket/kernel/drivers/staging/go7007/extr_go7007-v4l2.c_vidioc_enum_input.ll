; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_vidioc_enum_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_vidioc_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_input = type { i64, i32, i64, i64, i32, i32 }
%struct.go7007 = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.go7007_file = type { %struct.go7007* }

@EINVAL = common dso_local global i32 0, align 4
@GO7007_BOARD_HAS_TUNER = common dso_local global i32 0, align 4
@V4L2_INPUT_TYPE_TUNER = common dso_local global i32 0, align 4
@V4L2_INPUT_TYPE_CAMERA = common dso_local global i32 0, align 4
@GO7007_SENSOR_TV = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_input*)* @vidioc_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  %8 = alloca %struct.go7007*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.go7007_file*
  %11 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %10, i32 0, i32 0
  %12 = load %struct.go7007*, %struct.go7007** %11, align 8
  store %struct.go7007* %12, %struct.go7007** %8, align 8
  %13 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.go7007*, %struct.go7007** %8, align 8
  %17 = getelementptr inbounds %struct.go7007, %struct.go7007* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp uge i64 %15, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %93

25:                                               ; preds = %3
  %26 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.go7007*, %struct.go7007** %8, align 8
  %30 = getelementptr inbounds %struct.go7007, %struct.go7007* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @strncpy(i32 %28, i32 %39, i32 4)
  %41 = load %struct.go7007*, %struct.go7007** %8, align 8
  %42 = getelementptr inbounds %struct.go7007, %struct.go7007* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @GO7007_BOARD_HAS_TUNER, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %25
  %50 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.go7007*, %struct.go7007** %8, align 8
  %54 = getelementptr inbounds %struct.go7007, %struct.go7007* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub i64 %57, 1
  %59 = icmp eq i64 %52, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %49
  %61 = load i32, i32* @V4L2_INPUT_TYPE_TUNER, align 4
  %62 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  br label %68

64:                                               ; preds = %49, %25
  %65 = load i32, i32* @V4L2_INPUT_TYPE_CAMERA, align 4
  %66 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %64, %60
  %69 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %69, i32 0, i32 3
  store i64 0, i64* %70, align 8
  %71 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %72 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %71, i32 0, i32 2
  store i64 0, i64* %72, align 8
  %73 = load %struct.go7007*, %struct.go7007** %8, align 8
  %74 = getelementptr inbounds %struct.go7007, %struct.go7007* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @GO7007_SENSOR_TV, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %68
  %82 = load i32, i32* @V4L2_STD_NTSC, align 4
  %83 = load i32, i32* @V4L2_STD_PAL, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @V4L2_STD_SECAM, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %88 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  br label %92

89:                                               ; preds = %68
  %90 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %91 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %90, i32 0, i32 1
  store i32 0, i32* %91, align 8
  br label %92

92:                                               ; preds = %89, %81
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %92, %22
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @strncpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
