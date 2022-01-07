; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_vidioc_g_parm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_vidioc_g_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_streamparm = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_fract, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.go7007 = type { i32, i32 }
%struct.go7007_file = type { %struct.go7007* }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_CAP_TIMEPERFRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_streamparm*)* @vidioc_g_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_parm(%struct.file* %0, i8* %1, %struct.v4l2_streamparm* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_streamparm*, align 8
  %8 = alloca %struct.go7007*, align 8
  %9 = alloca %struct.v4l2_fract, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_streamparm* %2, %struct.v4l2_streamparm** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.go7007_file*
  %12 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %11, i32 0, i32 0
  %13 = load %struct.go7007*, %struct.go7007** %12, align 8
  store %struct.go7007* %13, %struct.go7007** %8, align 8
  %14 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %9, i32 0, i32 0
  %15 = load %struct.go7007*, %struct.go7007** %8, align 8
  %16 = getelementptr inbounds %struct.go7007, %struct.go7007* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 1001, %17
  store i32 %18, i32* %14, align 4
  %19 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %9, i32 0, i32 1
  %20 = load %struct.go7007*, %struct.go7007** %8, align 8
  %21 = getelementptr inbounds %struct.go7007, %struct.go7007* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %19, align 4
  %23 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %45

31:                                               ; preds = %3
  %32 = load i32, i32* @V4L2_CAP_TIMEPERFRAME, align 4
  %33 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %32
  store i32 %38, i32* %36, align 8
  %39 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = bitcast %struct.v4l2_fract* %42 to i8*
  %44 = bitcast %struct.v4l2_fract* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 4 %44, i64 8, i1 false)
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %31, %28
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
