; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-core.c_cx25821_start_upstream_video_ch1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-core.c_cx25821_start_upstream_video_ch1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32, i32, i32, i32, i32 }
%struct.upstream_user_struct = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"NTSC\00", align 1
@V4L2_STD_PAL_BG = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_M = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx25821_start_upstream_video_ch1(%struct.cx25821_dev* %0, %struct.upstream_user_struct* %1) #0 {
  %3 = alloca %struct.cx25821_dev*, align 8
  %4 = alloca %struct.upstream_user_struct*, align 8
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %3, align 8
  store %struct.upstream_user_struct* %1, %struct.upstream_user_struct** %4, align 8
  %5 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %6 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @strcmp(i32 %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 1, i32 0
  %13 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %14 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %16 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @V4L2_STD_PAL_BG, align 4
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @V4L2_STD_NTSC_M, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %26 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %28 = call i32 @medusa_set_videostandard(%struct.cx25821_dev* %27)
  %29 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %30 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %31 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.cx25821_dev*, %struct.cx25821_dev** %3, align 8
  %34 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @cx25821_vidupstream_init_ch1(%struct.cx25821_dev* %29, i32 %32, i32 %35)
  ret void
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @medusa_set_videostandard(%struct.cx25821_dev*) #1

declare dso_local i32 @cx25821_vidupstream_init_ch1(%struct.cx25821_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
