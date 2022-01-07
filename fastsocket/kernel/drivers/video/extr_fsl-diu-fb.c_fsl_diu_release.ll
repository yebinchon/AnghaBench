; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fsl-diu-fb.c_fsl_diu_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fsl-diu-fb.c_fsl_diu_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.mfb_info* }
%struct.mfb_info = type { i64, i32 }

@diu_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"release plane index %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i32)* @fsl_diu_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_diu_release(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mfb_info*, align 8
  %6 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 0
  %9 = load %struct.mfb_info*, %struct.mfb_info** %8, align 8
  store %struct.mfb_info* %9, %struct.mfb_info** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = call i32 @spin_lock(i32* @diu_lock)
  %11 = load %struct.mfb_info*, %struct.mfb_info** %5, align 8
  %12 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, -1
  store i64 %14, i64* %12, align 8
  %15 = load %struct.mfb_info*, %struct.mfb_info** %5, align 8
  %16 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %2
  %20 = load %struct.mfb_info*, %struct.mfb_info** %5, align 8
  %21 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %25 = call i32 @fsl_diu_disable_panel(%struct.fb_info* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load %struct.mfb_info*, %struct.mfb_info** %5, align 8
  %30 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %30, align 8
  br label %33

33:                                               ; preds = %28, %19
  br label %34

34:                                               ; preds = %33, %2
  %35 = call i32 @spin_unlock(i32* @diu_lock)
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @fsl_diu_disable_panel(%struct.fb_info*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
