; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_macfb.c_jet_setpalette.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_macfb.c_jet_setpalette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.jet_cmap_regs = type { i32, i32 }

@video_slot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.fb_info*)* @jet_setpalette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jet_setpalette(i32 %0, i32 %1, i32 %2, i32 %3, %struct.fb_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fb_info*, align 8
  %11 = alloca %struct.jet_cmap_regs*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.fb_info* %4, %struct.fb_info** %10, align 8
  %16 = load i32, i32* @video_slot, align 4
  %17 = call %struct.jet_cmap_regs* @nubus_slot_addr(i32 %16)
  store %struct.jet_cmap_regs* %17, %struct.jet_cmap_regs** %11, align 8
  %18 = load i32, i32* %7, align 4
  %19 = lshr i32 %18, 8
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %12, align 1
  %21 = load i32, i32* %8, align 4
  %22 = lshr i32 %21, 8
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %13, align 1
  %24 = load i32, i32* %9, align 4
  %25 = lshr i32 %24, 8
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %14, align 1
  %27 = load i64, i64* %15, align 8
  %28 = call i32 @local_irq_save(i64 %27)
  %29 = load i32, i32* %6, align 4
  %30 = trunc i32 %29 to i8
  %31 = load %struct.jet_cmap_regs*, %struct.jet_cmap_regs** %11, align 8
  %32 = getelementptr inbounds %struct.jet_cmap_regs, %struct.jet_cmap_regs* %31, i32 0, i32 1
  %33 = call i32 @nubus_writeb(i8 zeroext %30, i32* %32)
  %34 = call i32 (...) @nop()
  %35 = load i8, i8* %12, align 1
  %36 = load %struct.jet_cmap_regs*, %struct.jet_cmap_regs** %11, align 8
  %37 = getelementptr inbounds %struct.jet_cmap_regs, %struct.jet_cmap_regs* %36, i32 0, i32 0
  %38 = call i32 @nubus_writeb(i8 zeroext %35, i32* %37)
  %39 = call i32 (...) @nop()
  %40 = load i8, i8* %13, align 1
  %41 = load %struct.jet_cmap_regs*, %struct.jet_cmap_regs** %11, align 8
  %42 = getelementptr inbounds %struct.jet_cmap_regs, %struct.jet_cmap_regs* %41, i32 0, i32 0
  %43 = call i32 @nubus_writeb(i8 zeroext %40, i32* %42)
  %44 = call i32 (...) @nop()
  %45 = load i8, i8* %14, align 1
  %46 = load %struct.jet_cmap_regs*, %struct.jet_cmap_regs** %11, align 8
  %47 = getelementptr inbounds %struct.jet_cmap_regs, %struct.jet_cmap_regs* %46, i32 0, i32 0
  %48 = call i32 @nubus_writeb(i8 zeroext %45, i32* %47)
  %49 = load i64, i64* %15, align 8
  %50 = call i32 @local_irq_restore(i64 %49)
  ret i32 0
}

declare dso_local %struct.jet_cmap_regs* @nubus_slot_addr(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @nubus_writeb(i8 zeroext, i32*) #1

declare dso_local i32 @nop(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
