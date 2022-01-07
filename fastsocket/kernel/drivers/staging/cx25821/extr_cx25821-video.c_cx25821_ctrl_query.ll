; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video.c_cx25821_ctrl_query.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video.c_cx25821_ctrl_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_queryctrl = type { i64 }

@V4L2_CID_BASE = common dso_local global i64 0, align 8
@V4L2_CID_LASTP1 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CX25821_CTLS = common dso_local global i32 0, align 4
@cx25821_ctls = common dso_local global %struct.v4l2_queryctrl* null, align 8
@no_ctl = common dso_local global %struct.v4l2_queryctrl zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_queryctrl*)* @cx25821_ctrl_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx25821_ctrl_query(%struct.v4l2_queryctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_queryctrl*, align 8
  %4 = alloca i32, align 4
  store %struct.v4l2_queryctrl* %0, %struct.v4l2_queryctrl** %3, align 8
  %5 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %3, align 8
  %6 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @V4L2_CID_BASE, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %3, align 8
  %12 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @V4L2_CID_LASTP1, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10, %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %55

19:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %37, %19
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @CX25821_CTLS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %20
  %25 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** @cx25821_ctls, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %25, i64 %27
  %29 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %3, align 8
  %32 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %40

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %20

40:                                               ; preds = %35, %20
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @CX25821_CTLS, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %3, align 8
  %46 = bitcast %struct.v4l2_queryctrl* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 bitcast (%struct.v4l2_queryctrl* @no_ctl to i8*), i64 8, i1 false)
  store i32 0, i32* %2, align 4
  br label %55

47:                                               ; preds = %40
  %48 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %3, align 8
  %49 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** @cx25821_ctls, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %49, i64 %51
  %53 = bitcast %struct.v4l2_queryctrl* %48 to i8*
  %54 = bitcast %struct.v4l2_queryctrl* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 8, i1 false)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %47, %44, %16
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
