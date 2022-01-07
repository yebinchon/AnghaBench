; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video.c_cx25821_set_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video.c_cx25821_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32, i32 }
%struct.v4l2_frequency = type { i32 }

@tuner = common dso_local global i32 0, align 4
@s_frequency = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx25821_set_freq(%struct.cx25821_dev* %0, %struct.v4l2_frequency* %1) #0 {
  %3 = alloca %struct.cx25821_dev*, align 8
  %4 = alloca %struct.v4l2_frequency*, align 8
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %3, align 8
  store %struct.v4l2_frequency* %1, %struct.v4l2_frequency** %4, align 8
  %5 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %6 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %4, align 8
  %9 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %12 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %14 = load i32, i32* @tuner, align 4
  %15 = load i32, i32* @s_frequency, align 4
  %16 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %4, align 8
  %17 = call i32 @cx25821_call_all(%struct.cx25821_dev* %13, i32 %14, i32 %15, %struct.v4l2_frequency* %16)
  %18 = call i32 @msleep(i32 10)
  %19 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %20 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %19, i32 0, i32 0
  %21 = call i32 @mutex_unlock(i32* %20)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cx25821_call_all(%struct.cx25821_dev*, i32, i32, %struct.v4l2_frequency*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
