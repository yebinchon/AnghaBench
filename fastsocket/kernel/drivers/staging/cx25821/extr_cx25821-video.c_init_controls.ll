; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video.c_init_controls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video.c_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.cx25821_dev = type { i32 }
%struct.v4l2_control = type { i32, i32 }

@CX25821_CTLS = common dso_local global i32 0, align 4
@cx25821_ctls = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx25821_dev*, i32)* @init_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_controls(%struct.cx25821_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.cx25821_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_control, align 4
  %6 = alloca i32, align 4
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %29, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @CX25821_CTLS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %32

11:                                               ; preds = %7
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cx25821_ctls, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %5, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cx25821_ctls, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %5, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @cx25821_set_control(%struct.cx25821_dev* %26, %struct.v4l2_control* %5, i32 %27)
  br label %29

29:                                               ; preds = %11
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %7

32:                                               ; preds = %7
  ret void
}

declare dso_local i32 @cx25821_set_control(%struct.cx25821_dev*, %struct.v4l2_control*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
