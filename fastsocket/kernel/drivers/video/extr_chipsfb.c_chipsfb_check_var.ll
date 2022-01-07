; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_chipsfb.c_chipsfb_check_var.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_chipsfb.c_chipsfb_check_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.fb_info = type { i32 }

@FB_VMODE_MASK = common dso_local global i32 0, align 4
@FB_VMODE_NONINTERLACED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @chipsfb_check_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chipsfb_check_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %6 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %7 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp sgt i32 %8, 800
  br i1 %9, label %48, label %10

10:                                               ; preds = %2
  %11 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %12 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp sgt i32 %13, 600
  br i1 %14, label %48, label %15

15:                                               ; preds = %10
  %16 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %17 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %18, 800
  br i1 %19, label %48, label %20

20:                                               ; preds = %15
  %21 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %22 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 600
  br i1 %24, label %48, label %25

25:                                               ; preds = %20
  %26 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %27 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 8
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %32 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 16
  br i1 %34, label %48, label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %37 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %35
  %41 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %42 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @FB_VMODE_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @FB_VMODE_NONINTERLACED, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %40, %35, %30, %20, %15, %10, %2
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %60

51:                                               ; preds = %40
  %52 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %53 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %52, i32 0, i32 2
  store i32 800, i32* %53, align 8
  %54 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %55 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %54, i32 0, i32 0
  store i32 800, i32* %55, align 8
  %56 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %57 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %56, i32 0, i32 3
  store i32 600, i32* %57, align 4
  %58 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %59 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %58, i32 0, i32 1
  store i32 600, i32* %59, align 4
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %51, %48
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
