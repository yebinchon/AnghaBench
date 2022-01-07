; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_neofb.c_neofb_pan_display.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_neofb.c_neofb_pan_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, i32 }
%struct.fb_info = type { %struct.neofb_par* }
%struct.neofb_par = type { %struct.vgastate }
%struct.vgastate = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"neofb_update_start\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @neofb_pan_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neofb_pan_display(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.neofb_par*, align 8
  %6 = alloca %struct.vgastate*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 0
  %11 = load %struct.neofb_par*, %struct.neofb_par** %10, align 8
  store %struct.neofb_par* %11, %struct.neofb_par** %5, align 8
  %12 = load %struct.neofb_par*, %struct.neofb_par** %5, align 8
  %13 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %12, i32 0, i32 0
  store %struct.vgastate* %13, %struct.vgastate** %6, align 8
  %14 = call i32 @DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %16 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %19 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %17, %20
  %22 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %23 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %21, %24
  %26 = ashr i32 %25, 2
  store i32 %26, i32* %8, align 4
  %27 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %28 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 7
  %31 = sdiv i32 %30, 8
  %32 = load i32, i32* %8, align 4
  %33 = mul nsw i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = call i32 (...) @neoUnlock()
  %35 = load %struct.vgastate*, %struct.vgastate** %6, align 8
  %36 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, 65280
  %40 = ashr i32 %39, 8
  %41 = call i32 @vga_wcrt(i32 %37, i32 12, i32 %40)
  %42 = load %struct.vgastate*, %struct.vgastate** %6, align 8
  %43 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, 255
  %47 = call i32 @vga_wcrt(i32 %44, i32 13, i32 %46)
  %48 = call i32 @vga_rgfx(i32* null, i32 14)
  store i32 %48, i32* %7, align 4
  %49 = load %struct.vgastate*, %struct.vgastate** %6, align 8
  %50 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = ashr i32 %52, 16
  %54 = and i32 %53, 15
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, 240
  %57 = or i32 %54, %56
  %58 = call i32 @vga_wgfx(i32 %51, i32 14, i32 %57)
  %59 = load %struct.vgastate*, %struct.vgastate** %6, align 8
  %60 = call i32 @neoLock(%struct.vgastate* %59)
  ret i32 0
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @neoUnlock(...) #1

declare dso_local i32 @vga_wcrt(i32, i32, i32) #1

declare dso_local i32 @vga_rgfx(i32*, i32) #1

declare dso_local i32 @vga_wgfx(i32, i32, i32) #1

declare dso_local i32 @neoLock(%struct.vgastate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
