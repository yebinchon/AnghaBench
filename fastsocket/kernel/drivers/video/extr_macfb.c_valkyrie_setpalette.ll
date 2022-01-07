; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_macfb.c_valkyrie_setpalette.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_macfb.c_valkyrie_setpalette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.fb_info = type { i32 }

@valkyrie_cmap_regs = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.fb_info*)* @valkyrie_setpalette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valkyrie_setpalette(i32 %0, i32 %1, i32 %2, i32 %3, %struct.fb_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fb_info*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.fb_info* %4, %struct.fb_info** %10, align 8
  %12 = load i32, i32* %7, align 4
  %13 = lshr i32 %12, 8
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = lshr i32 %14, 8
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = lshr i32 %16, 8
  store i32 %17, i32* %9, align 4
  %18 = load i64, i64* %11, align 8
  %19 = call i32 @local_irq_save(i64 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @valkyrie_cmap_regs, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = call i32 @nubus_writeb(i32 %20, i32* %22)
  %24 = call i32 (...) @nop()
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @valkyrie_cmap_regs, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @nubus_writeb(i32 %25, i32* %27)
  %29 = call i32 (...) @nop()
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @valkyrie_cmap_regs, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @nubus_writeb(i32 %30, i32* %32)
  %34 = call i32 (...) @nop()
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @valkyrie_cmap_regs, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @nubus_writeb(i32 %35, i32* %37)
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @local_irq_restore(i64 %39)
  ret i32 0
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @nubus_writeb(i32, i32*) #1

declare dso_local i32 @nop(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
