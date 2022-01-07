; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fsl-diu-fb.c_fsl_diu_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fsl-diu-fb.c_fsl_diu_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.mfb_info* }
%struct.mfb_info = type { i32, i32 }

@diu_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"open plane index %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i32)* @fsl_diu_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_diu_open(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mfb_info*, align 8
  %6 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 1
  %9 = load %struct.mfb_info*, %struct.mfb_info** %8, align 8
  store %struct.mfb_info* %9, %struct.mfb_info** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = call i32 @spin_lock(i32* @diu_lock)
  %11 = load %struct.mfb_info*, %struct.mfb_info** %5, align 8
  %12 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = load %struct.mfb_info*, %struct.mfb_info** %5, align 8
  %16 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %49

19:                                               ; preds = %2
  %20 = load %struct.mfb_info*, %struct.mfb_info** %5, align 8
  %21 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 0
  %26 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %27 = call i32 @fsl_diu_check_var(i32* %25, %struct.fb_info* %26)
  %28 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %29 = call i32 @fsl_diu_set_par(%struct.fb_info* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %19
  %33 = load %struct.mfb_info*, %struct.mfb_info** %5, align 8
  %34 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 4
  br label %48

37:                                               ; preds = %19
  %38 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %39 = call i32 @fsl_diu_enable_panel(%struct.fb_info* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.mfb_info*, %struct.mfb_info** %5, align 8
  %44 = getelementptr inbounds %struct.mfb_info, %struct.mfb_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %42, %37
  br label %48

48:                                               ; preds = %47, %32
  br label %49

49:                                               ; preds = %48, %2
  %50 = call i32 @spin_unlock(i32* @diu_lock)
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @fsl_diu_check_var(i32*, %struct.fb_info*) #1

declare dso_local i32 @fsl_diu_set_par(%struct.fb_info*) #1

declare dso_local i32 @fsl_diu_enable_panel(%struct.fb_info*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
