; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pm3fb.c_pm3fb_pan_display.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pm3fb.c_pm3fb_pan_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i64, i32 }
%struct.fb_info = type { %struct.pm3_par* }
%struct.pm3_par = type { i32 }

@PM3ScreenBase = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @pm3fb_pan_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm3fb_pan_display(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.pm3_par*, align 8
  %6 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 0
  %9 = load %struct.pm3_par*, %struct.pm3_par** %8, align 8
  store %struct.pm3_par* %9, %struct.pm3_par** %5, align 8
  %10 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %11 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 31
  %14 = and i32 %13, -32
  store i32 %14, i32* %6, align 4
  %15 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %16 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %19 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %25 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = call i32 @pm3fb_shift_bpp(i32 %17, i64 %27)
  %29 = load %struct.pm3_par*, %struct.pm3_par** %5, align 8
  %30 = getelementptr inbounds %struct.pm3_par, %struct.pm3_par* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.pm3_par*, %struct.pm3_par** %5, align 8
  %32 = call i32 @PM3_WAIT(%struct.pm3_par* %31, i32 1)
  %33 = load %struct.pm3_par*, %struct.pm3_par** %5, align 8
  %34 = load i32, i32* @PM3ScreenBase, align 4
  %35 = load %struct.pm3_par*, %struct.pm3_par** %5, align 8
  %36 = getelementptr inbounds %struct.pm3_par, %struct.pm3_par* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %33, i32 %34, i32 %37)
  ret i32 0
}

declare dso_local i32 @pm3fb_shift_bpp(i32, i64) #1

declare dso_local i32 @PM3_WAIT(%struct.pm3_par*, i32) #1

declare dso_local i32 @PM3_WRITE_REG(%struct.pm3_par*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
