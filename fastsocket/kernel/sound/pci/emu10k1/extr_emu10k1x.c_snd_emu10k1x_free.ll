; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emu10k1x = type { i64, i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@TRIGGER_CHANNEL = common dso_local global i32 0, align 4
@INTE = common dso_local global i64 0, align 8
@HCFG_LOCKSOUNDCACHE = common dso_local global i32 0, align 4
@HCFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.emu10k1x*)* @snd_emu10k1x_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1x_free(%struct.emu10k1x* %0) #0 {
  %2 = alloca %struct.emu10k1x*, align 8
  store %struct.emu10k1x* %0, %struct.emu10k1x** %2, align 8
  %3 = load %struct.emu10k1x*, %struct.emu10k1x** %2, align 8
  %4 = load i32, i32* @TRIGGER_CHANNEL, align 4
  %5 = call i32 @snd_emu10k1x_ptr_write(%struct.emu10k1x* %3, i32 %4, i32 0, i32 0)
  %6 = load %struct.emu10k1x*, %struct.emu10k1x** %2, align 8
  %7 = getelementptr inbounds %struct.emu10k1x, %struct.emu10k1x* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @INTE, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @outl(i32 0, i64 %10)
  %12 = load i32, i32* @HCFG_LOCKSOUNDCACHE, align 4
  %13 = load %struct.emu10k1x*, %struct.emu10k1x** %2, align 8
  %14 = getelementptr inbounds %struct.emu10k1x, %struct.emu10k1x* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @HCFG, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @outl(i32 %12, i64 %17)
  %19 = load %struct.emu10k1x*, %struct.emu10k1x** %2, align 8
  %20 = getelementptr inbounds %struct.emu10k1x, %struct.emu10k1x* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.emu10k1x*, %struct.emu10k1x** %2, align 8
  %25 = getelementptr inbounds %struct.emu10k1x, %struct.emu10k1x* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.emu10k1x*, %struct.emu10k1x** %2, align 8
  %28 = call i32 @free_irq(i64 %26, %struct.emu10k1x* %27)
  br label %29

29:                                               ; preds = %23, %1
  %30 = load %struct.emu10k1x*, %struct.emu10k1x** %2, align 8
  %31 = getelementptr inbounds %struct.emu10k1x, %struct.emu10k1x* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @release_and_free_resource(i32 %32)
  %34 = load %struct.emu10k1x*, %struct.emu10k1x** %2, align 8
  %35 = getelementptr inbounds %struct.emu10k1x, %struct.emu10k1x* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load %struct.emu10k1x*, %struct.emu10k1x** %2, align 8
  %41 = getelementptr inbounds %struct.emu10k1x, %struct.emu10k1x* %40, i32 0, i32 2
  %42 = call i32 @snd_dma_free_pages(%struct.TYPE_2__* %41)
  br label %43

43:                                               ; preds = %39, %29
  %44 = load %struct.emu10k1x*, %struct.emu10k1x** %2, align 8
  %45 = getelementptr inbounds %struct.emu10k1x, %struct.emu10k1x* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @pci_disable_device(i32 %46)
  %48 = load %struct.emu10k1x*, %struct.emu10k1x** %2, align 8
  %49 = call i32 @kfree(%struct.emu10k1x* %48)
  ret i32 0
}

declare dso_local i32 @snd_emu10k1x_ptr_write(%struct.emu10k1x*, i32, i32, i32) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @free_irq(i64, %struct.emu10k1x*) #1

declare dso_local i32 @release_and_free_resource(i32) #1

declare dso_local i32 @snd_dma_free_pages(%struct.TYPE_2__*) #1

declare dso_local i32 @pci_disable_device(i32) #1

declare dso_local i32 @kfree(%struct.emu10k1x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
