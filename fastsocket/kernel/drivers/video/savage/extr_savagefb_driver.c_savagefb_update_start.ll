; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/savage/extr_savagefb_driver.c_savagefb_update_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/savage/extr_savagefb_driver.c_savagefb_update_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.savagefb_par = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.savagefb_par*, %struct.fb_var_screeninfo*)* @savagefb_update_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @savagefb_update_start(%struct.savagefb_par* %0, %struct.fb_var_screeninfo* %1) #0 {
  %3 = alloca %struct.savagefb_par*, align 8
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca i32, align 4
  store %struct.savagefb_par* %0, %struct.savagefb_par** %3, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %4, align 8
  %6 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %7 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %10 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %8, %11
  %13 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %14 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, -2
  %17 = add nsw i32 %12, %16
  %18 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %19 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 7
  %22 = sdiv i32 %21, 8
  %23 = mul nsw i32 %17, %22
  %24 = ashr i32 %23, 2
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 65280
  %27 = or i32 %26, 12
  %28 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %29 = call i32 @vga_out16(i32 980, i32 %27, %struct.savagefb_par* %28)
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, 255
  %32 = shl i32 %31, 8
  %33 = or i32 %32, 13
  %34 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %35 = call i32 @vga_out16(i32 980, i32 %33, %struct.savagefb_par* %34)
  %36 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %37 = call i32 @vga_out8(i32 980, i32 105, %struct.savagefb_par* %36)
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, 8323072
  %40 = ashr i32 %39, 16
  %41 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %42 = call i32 @vga_out8(i32 981, i32 %40, %struct.savagefb_par* %41)
  ret void
}

declare dso_local i32 @vga_out16(i32, i32, %struct.savagefb_par*) #1

declare dso_local i32 @vga_out8(i32, i32, %struct.savagefb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
