; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-audups11.c_vidioc_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-audups11.c_vidioc_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_control = type { i32 }
%struct.cx25821_fh = type { i32, %struct.cx25821_dev* }
%struct.cx25821_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_control*)* @vidioc_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_ctrl(%struct.file* %0, i8* %1, %struct.v4l2_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_control*, align 8
  %8 = alloca %struct.cx25821_fh*, align 8
  %9 = alloca %struct.cx25821_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_control* %2, %struct.v4l2_control** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.cx25821_fh*
  store %struct.cx25821_fh* %12, %struct.cx25821_fh** %8, align 8
  %13 = load %struct.cx25821_fh*, %struct.cx25821_fh** %8, align 8
  %14 = getelementptr inbounds %struct.cx25821_fh, %struct.cx25821_fh* %13, i32 0, i32 1
  %15 = load %struct.cx25821_dev*, %struct.cx25821_dev** %14, align 8
  store %struct.cx25821_dev* %15, %struct.cx25821_dev** %9, align 8
  %16 = load %struct.cx25821_fh*, %struct.cx25821_fh** %8, align 8
  %17 = icmp ne %struct.cx25821_fh* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %3
  %19 = load %struct.cx25821_dev*, %struct.cx25821_dev** %9, align 8
  %20 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %19, i32 0, i32 0
  %21 = load %struct.cx25821_fh*, %struct.cx25821_fh** %8, align 8
  %22 = getelementptr inbounds %struct.cx25821_fh, %struct.cx25821_fh* %21, i32 0, i32 0
  %23 = call i32 @v4l2_prio_check(i32* %20, i32* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 0, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %4, align 4
  br label %30

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %3
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @v4l2_prio_check(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
