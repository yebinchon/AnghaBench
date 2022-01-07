; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pm2fb.c_set_aperture.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pm2fb.c_set_aperture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm2fb_par = type { i32 }

@PM2R_APERTURE_ONE = common dso_local global i32 0, align 4
@PM2F_APERTURE_STANDARD = common dso_local global i32 0, align 4
@PM2F_APERTURE_HALFWORDSWAP = common dso_local global i32 0, align 4
@PM2F_APERTURE_BYTESWAP = common dso_local global i32 0, align 4
@PM2R_APERTURE_TWO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm2fb_par*, i32)* @set_aperture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_aperture(%struct.pm2fb_par* %0, i32 %1) #0 {
  %3 = alloca %struct.pm2fb_par*, align 8
  %4 = alloca i32, align 4
  store %struct.pm2fb_par* %0, %struct.pm2fb_par** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %6 = call i32 @WAIT_FIFO(%struct.pm2fb_par* %5, i32 2)
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %23 [
    i32 24, label %8
    i32 8, label %8
    i32 16, label %13
    i32 32, label %18
  ]

8:                                                ; preds = %2, %2
  %9 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %10 = load i32, i32* @PM2R_APERTURE_ONE, align 4
  %11 = load i32, i32* @PM2F_APERTURE_STANDARD, align 4
  %12 = call i32 @pm2_WR(%struct.pm2fb_par* %9, i32 %10, i32 %11)
  br label %23

13:                                               ; preds = %2
  %14 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %15 = load i32, i32* @PM2R_APERTURE_ONE, align 4
  %16 = load i32, i32* @PM2F_APERTURE_HALFWORDSWAP, align 4
  %17 = call i32 @pm2_WR(%struct.pm2fb_par* %14, i32 %15, i32 %16)
  br label %23

18:                                               ; preds = %2
  %19 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %20 = load i32, i32* @PM2R_APERTURE_ONE, align 4
  %21 = load i32, i32* @PM2F_APERTURE_BYTESWAP, align 4
  %22 = call i32 @pm2_WR(%struct.pm2fb_par* %19, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %2, %18, %13, %8
  %24 = load %struct.pm2fb_par*, %struct.pm2fb_par** %3, align 8
  %25 = load i32, i32* @PM2R_APERTURE_TWO, align 4
  %26 = load i32, i32* @PM2F_APERTURE_STANDARD, align 4
  %27 = call i32 @pm2_WR(%struct.pm2fb_par* %24, i32 %25, i32 %26)
  ret void
}

declare dso_local i32 @WAIT_FIFO(%struct.pm2fb_par*, i32) #1

declare dso_local i32 @pm2_WR(%struct.pm2fb_par*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
