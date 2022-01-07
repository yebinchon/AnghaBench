; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_ps3fb.c_ps3fb_pan_display.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_ps3fb.c_ps3fb_pan_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32 }
%struct.fb_info = type { %struct.TYPE_2__, %struct.ps3fb_par* }
%struct.TYPE_2__ = type { i32 }
%struct.ps3fb_par = type { i32 }

@BPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @ps3fb_pan_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps3fb_pan_display(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.ps3fb_par*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 1
  %8 = load %struct.ps3fb_par*, %struct.ps3fb_par** %7, align 8
  store %struct.ps3fb_par* %8, %struct.ps3fb_par** %5, align 8
  %9 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %10 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = mul nsw i32 %11, %15
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @BPP, align 4
  %21 = mul nsw i32 %19, %20
  %22 = add nsw i32 %16, %21
  %23 = load %struct.ps3fb_par*, %struct.ps3fb_par** %5, align 8
  %24 = getelementptr inbounds %struct.ps3fb_par, %struct.ps3fb_par* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
