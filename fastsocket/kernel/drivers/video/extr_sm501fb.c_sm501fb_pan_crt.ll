; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sm501fb.c_sm501fb_pan_crt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sm501fb.c_sm501fb_pan_crt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i64 }
%struct.fb_info = type { %struct.TYPE_4__, %struct.sm501fb_par* }
%struct.TYPE_4__ = type { i64 }
%struct.sm501fb_par = type { %struct.TYPE_3__, %struct.sm501fb_info* }
%struct.TYPE_3__ = type { i64 }
%struct.sm501fb_info = type { i64 }

@SM501_DC_CRT_CONTROL = common dso_local global i64 0, align 8
@SM501_DC_CRT_CONTROL_PIXEL_MASK = common dso_local global i64 0, align 8
@SM501_ADDR_FLIP = common dso_local global i64 0, align 8
@SM501_DC_CRT_FB_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @sm501fb_pan_crt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm501fb_pan_crt(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.sm501fb_par*, align 8
  %6 = alloca %struct.sm501fb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 1
  %12 = load %struct.sm501fb_par*, %struct.sm501fb_par** %11, align 8
  store %struct.sm501fb_par* %12, %struct.sm501fb_par** %5, align 8
  %13 = load %struct.sm501fb_par*, %struct.sm501fb_par** %5, align 8
  %14 = getelementptr inbounds %struct.sm501fb_par, %struct.sm501fb_par* %13, i32 0, i32 1
  %15 = load %struct.sm501fb_info*, %struct.sm501fb_info** %14, align 8
  store %struct.sm501fb_info* %15, %struct.sm501fb_info** %6, align 8
  %16 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %17 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sdiv i32 %18, 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %21 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = mul i32 %22, %23
  %25 = zext i32 %24 to i64
  store i64 %25, i64* %9, align 8
  %26 = load %struct.sm501fb_info*, %struct.sm501fb_info** %6, align 8
  %27 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SM501_DC_CRT_CONTROL, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i64 @readl(i64 %30)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* @SM501_DC_CRT_CONTROL_PIXEL_MASK, align 8
  %33 = xor i64 %32, -1
  %34 = load i64, i64* %8, align 8
  %35 = and i64 %34, %33
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = and i64 %36, 15
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = udiv i64 %37, %39
  %41 = shl i64 %40, 4
  %42 = load i64, i64* %8, align 8
  %43 = or i64 %42, %41
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.sm501fb_info*, %struct.sm501fb_info** %6, align 8
  %46 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SM501_DC_CRT_CONTROL, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i64 %44, i64 %49)
  %51 = load %struct.sm501fb_par*, %struct.sm501fb_par** %5, align 8
  %52 = getelementptr inbounds %struct.sm501fb_par, %struct.sm501fb_par* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = add i64 %54, %55
  %57 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %58 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %61 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = mul i64 %59, %63
  %65 = add i64 %56, %64
  store i64 %65, i64* %8, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* @SM501_ADDR_FLIP, align 8
  %68 = or i64 %66, %67
  %69 = load %struct.sm501fb_info*, %struct.sm501fb_info** %6, align 8
  %70 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SM501_DC_CRT_FB_ADDR, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i64 %68, i64 %73)
  %75 = load %struct.sm501fb_info*, %struct.sm501fb_info** %6, align 8
  %76 = call i32 @sm501fb_sync_regs(%struct.sm501fb_info* %75)
  ret i32 0
}

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @sm501fb_sync_regs(%struct.sm501fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
