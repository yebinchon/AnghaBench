; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_macfb.c_toby_setpalette.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_macfb.c_toby_setpalette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.toby_cmap_regs = type { i32, i32 }

@video_slot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.fb_info*)* @toby_setpalette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @toby_setpalette(i32 %0, i32 %1, i32 %2, i32 %3, %struct.fb_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fb_info*, align 8
  %11 = alloca %struct.toby_cmap_regs*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.fb_info* %4, %struct.fb_info** %10, align 8
  %18 = load i32, i32* @video_slot, align 4
  %19 = call %struct.toby_cmap_regs* @nubus_slot_addr(i32 %18)
  store %struct.toby_cmap_regs* %19, %struct.toby_cmap_regs** %11, align 8
  %20 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %7, align 4
  %25 = lshr i32 %24, 8
  %26 = xor i32 %25, -1
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %13, align 1
  %28 = load i32, i32* %8, align 4
  %29 = lshr i32 %28, 8
  %30 = xor i32 %29, -1
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %14, align 1
  %32 = load i32, i32* %9, align 4
  %33 = lshr i32 %32, 8
  %34 = xor i32 %33, -1
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %15, align 1
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %12, align 4
  %38 = sub i32 8, %37
  %39 = shl i32 %36, %38
  %40 = load i32, i32* %12, align 4
  %41 = ashr i32 255, %40
  %42 = or i32 %39, %41
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %16, align 1
  %44 = load i64, i64* %17, align 8
  %45 = call i32 @local_irq_save(i64 %44)
  %46 = load i8, i8* %16, align 1
  %47 = load %struct.toby_cmap_regs*, %struct.toby_cmap_regs** %11, align 8
  %48 = getelementptr inbounds %struct.toby_cmap_regs, %struct.toby_cmap_regs* %47, i32 0, i32 1
  %49 = call i32 @nubus_writeb(i8 zeroext %46, i32* %48)
  %50 = call i32 (...) @nop()
  %51 = load i8, i8* %13, align 1
  %52 = load %struct.toby_cmap_regs*, %struct.toby_cmap_regs** %11, align 8
  %53 = getelementptr inbounds %struct.toby_cmap_regs, %struct.toby_cmap_regs* %52, i32 0, i32 0
  %54 = call i32 @nubus_writeb(i8 zeroext %51, i32* %53)
  %55 = call i32 (...) @nop()
  %56 = load i8, i8* %14, align 1
  %57 = load %struct.toby_cmap_regs*, %struct.toby_cmap_regs** %11, align 8
  %58 = getelementptr inbounds %struct.toby_cmap_regs, %struct.toby_cmap_regs* %57, i32 0, i32 0
  %59 = call i32 @nubus_writeb(i8 zeroext %56, i32* %58)
  %60 = call i32 (...) @nop()
  %61 = load i8, i8* %15, align 1
  %62 = load %struct.toby_cmap_regs*, %struct.toby_cmap_regs** %11, align 8
  %63 = getelementptr inbounds %struct.toby_cmap_regs, %struct.toby_cmap_regs* %62, i32 0, i32 0
  %64 = call i32 @nubus_writeb(i8 zeroext %61, i32* %63)
  %65 = load i64, i64* %17, align 8
  %66 = call i32 @local_irq_restore(i64 %65)
  ret i32 0
}

declare dso_local %struct.toby_cmap_regs* @nubus_slot_addr(i32) #1

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
