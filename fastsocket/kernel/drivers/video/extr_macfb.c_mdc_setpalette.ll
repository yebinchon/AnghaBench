; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_macfb.c_mdc_setpalette.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_macfb.c_mdc_setpalette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.mdc_cmap_regs = type { i32, i32 }

@video_slot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.fb_info*)* @mdc_setpalette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdc_setpalette(i32 %0, i32 %1, i32 %2, i32 %3, %struct.fb_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fb_info*, align 8
  %11 = alloca %struct.mdc_cmap_regs*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.fb_info* %4, %struct.fb_info** %10, align 8
  %17 = load i32, i32* @video_slot, align 4
  %18 = call %struct.mdc_cmap_regs* @nubus_slot_addr(i32 %17)
  store %struct.mdc_cmap_regs* %18, %struct.mdc_cmap_regs** %11, align 8
  %19 = load i32, i32* %7, align 4
  %20 = lshr i32 %19, 8
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %12, align 1
  %22 = load i32, i32* %8, align 4
  %23 = lshr i32 %22, 8
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %13, align 1
  %25 = load i32, i32* %9, align 4
  %26 = lshr i32 %25, 8
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %14, align 1
  %28 = load i32, i32* %6, align 4
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %15, align 1
  %30 = load i64, i64* %16, align 8
  %31 = call i32 @local_irq_save(i64 %30)
  %32 = load i8, i8* %15, align 1
  %33 = load %struct.mdc_cmap_regs*, %struct.mdc_cmap_regs** %11, align 8
  %34 = getelementptr inbounds %struct.mdc_cmap_regs, %struct.mdc_cmap_regs* %33, i32 0, i32 1
  %35 = call i32 @nubus_writeb(i8 zeroext %32, i32* %34)
  %36 = call i32 (...) @nop()
  %37 = load i8, i8* %12, align 1
  %38 = load %struct.mdc_cmap_regs*, %struct.mdc_cmap_regs** %11, align 8
  %39 = getelementptr inbounds %struct.mdc_cmap_regs, %struct.mdc_cmap_regs* %38, i32 0, i32 0
  %40 = call i32 @nubus_writeb(i8 zeroext %37, i32* %39)
  %41 = call i32 (...) @nop()
  %42 = load i8, i8* %13, align 1
  %43 = load %struct.mdc_cmap_regs*, %struct.mdc_cmap_regs** %11, align 8
  %44 = getelementptr inbounds %struct.mdc_cmap_regs, %struct.mdc_cmap_regs* %43, i32 0, i32 0
  %45 = call i32 @nubus_writeb(i8 zeroext %42, i32* %44)
  %46 = call i32 (...) @nop()
  %47 = load i8, i8* %14, align 1
  %48 = load %struct.mdc_cmap_regs*, %struct.mdc_cmap_regs** %11, align 8
  %49 = getelementptr inbounds %struct.mdc_cmap_regs, %struct.mdc_cmap_regs* %48, i32 0, i32 0
  %50 = call i32 @nubus_writeb(i8 zeroext %47, i32* %49)
  %51 = load i64, i64* %16, align 8
  %52 = call i32 @local_irq_restore(i64 %51)
  ret i32 0
}

declare dso_local %struct.mdc_cmap_regs* @nubus_slot_addr(i32) #1

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
