; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pm2fb.c_pm2fb_pan_display.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pm2fb.c_pm2fb_pan_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, i64 }
%struct.fb_info = type { %struct.pm2fb_par* }
%struct.pm2fb_par = type { i32 }

@PM2R_SCREEN_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @pm2fb_pan_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm2fb_pan_display(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.pm2fb_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 0
  %11 = load %struct.pm2fb_par*, %struct.pm2fb_par** %10, align 8
  store %struct.pm2fb_par* %11, %struct.pm2fb_par** %5, align 8
  %12 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %13 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 7
  %16 = and i32 %15, -8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 31
  %21 = and i32 %20, -32
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp sgt i32 %22, 32
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  br label %27

27:                                               ; preds = %25, %24
  %28 = phi i32 [ 32, %24 ], [ %26, %25 ]
  store i32 %28, i32* %7, align 4
  %29 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %30 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = mul nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %36 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @to3264(i64 %38, i32 %39, i32 1)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %42 = call i32 @WAIT_FIFO(%struct.pm2fb_par* %41, i32 1)
  %43 = load %struct.pm2fb_par*, %struct.pm2fb_par** %5, align 8
  %44 = load i32, i32* @PM2R_SCREEN_BASE, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @pm2_WR(%struct.pm2fb_par* %43, i32 %44, i32 %45)
  ret i32 0
}

declare dso_local i32 @to3264(i64, i32, i32) #1

declare dso_local i32 @WAIT_FIFO(%struct.pm2fb_par*, i32) #1

declare dso_local i32 @pm2_WR(%struct.pm2fb_par*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
