; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_vga16fb.c_vga_vesa_unblank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_vga16fb.c_vga_vesa_unblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vga16fb_par = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@VGA_SEQ_I = common dso_local global i32 0, align 4
@VGA_CRT_IC = common dso_local global i32 0, align 4
@VGA_MIS_W = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vga16fb_par*)* @vga_vesa_unblank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vga_vesa_unblank(%struct.vga16fb_par* %0) #0 {
  %2 = alloca %struct.vga16fb_par*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store %struct.vga16fb_par* %0, %struct.vga16fb_par** %2, align 8
  %5 = load i32, i32* @VGA_SEQ_I, align 4
  %6 = call zeroext i8 @vga_io_r(i32 %5)
  store i8 %6, i8* %3, align 1
  %7 = load i32, i32* @VGA_CRT_IC, align 4
  %8 = call zeroext i8 @vga_io_r(i32 %7)
  store i8 %8, i8* %4, align 1
  %9 = load i32, i32* @VGA_MIS_W, align 4
  %10 = load %struct.vga16fb_par*, %struct.vga16fb_par** %2, align 8
  %11 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i8, i8* %12, align 4
  %14 = call i32 @vga_io_w(i32 %9, i8 zeroext %13)
  %15 = load %struct.vga16fb_par*, %struct.vga16fb_par** %2, align 8
  %16 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @vga_io_wcrt(i32 0, i32 %18)
  %20 = load %struct.vga16fb_par*, %struct.vga16fb_par** %2, align 8
  %21 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @vga_io_wcrt(i32 1, i32 %23)
  %25 = load %struct.vga16fb_par*, %struct.vga16fb_par** %2, align 8
  %26 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @vga_io_wcrt(i32 4, i32 %28)
  %30 = load %struct.vga16fb_par*, %struct.vga16fb_par** %2, align 8
  %31 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @vga_io_wcrt(i32 5, i32 %33)
  %35 = load %struct.vga16fb_par*, %struct.vga16fb_par** %2, align 8
  %36 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @vga_io_wcrt(i32 7, i32 %38)
  %40 = load %struct.vga16fb_par*, %struct.vga16fb_par** %2, align 8
  %41 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @vga_io_wcrt(i32 16, i32 %43)
  %45 = load %struct.vga16fb_par*, %struct.vga16fb_par** %2, align 8
  %46 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @vga_io_wcrt(i32 17, i32 %48)
  %50 = load %struct.vga16fb_par*, %struct.vga16fb_par** %2, align 8
  %51 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @vga_io_wcrt(i32 23, i32 %53)
  %55 = load %struct.vga16fb_par*, %struct.vga16fb_par** %2, align 8
  %56 = getelementptr inbounds %struct.vga16fb_par, %struct.vga16fb_par* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @vga_io_wseq(i32 1, i32 %58)
  %60 = load i32, i32* @VGA_SEQ_I, align 4
  %61 = load i8, i8* %3, align 1
  %62 = call i32 @vga_io_w(i32 %60, i8 zeroext %61)
  %63 = load i32, i32* @VGA_CRT_IC, align 4
  %64 = load i8, i8* %4, align 1
  %65 = call i32 @vga_io_w(i32 %63, i8 zeroext %64)
  ret void
}

declare dso_local zeroext i8 @vga_io_r(i32) #1

declare dso_local i32 @vga_io_w(i32, i8 zeroext) #1

declare dso_local i32 @vga_io_wcrt(i32, i32) #1

declare dso_local i32 @vga_io_wseq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
