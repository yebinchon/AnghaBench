; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emu10k1_main.c_snd_emu10k1_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_emu10k1_main.c_snd_emu10k1_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i64, i32, %struct.TYPE_5__*, i64, i32, i32, %struct.TYPE_6__, %struct.TYPE_6__, i64, i32*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.snd_util_memblk = type { i32 }

@EMU_MODEL_EMU1010 = common dso_local global i64 0, align 8
@EMU_HANA_DOCK_PWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_emu10k1*)* @snd_emu10k1_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_free(%struct.snd_emu10k1* %0) #0 {
  %2 = alloca %struct.snd_emu10k1*, align 8
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %2, align 8
  %3 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %4 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %9 = call i32 @snd_emu10k1_fx8010_tram_setup(%struct.snd_emu10k1* %8, i32 0)
  %10 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %11 = call i32 @snd_emu10k1_done(%struct.snd_emu10k1* %10)
  %12 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %13 = call i32 @snd_emu10k1_free_efx(%struct.snd_emu10k1* %12)
  br label %14

14:                                               ; preds = %7, %1
  %15 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %16 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @EMU_MODEL_EMU1010, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %24 = load i32, i32* @EMU_HANA_DOCK_PWR, align 4
  %25 = call i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1* %23, i32 %24, i32 0)
  br label %26

26:                                               ; preds = %22, %14
  %27 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %28 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %27, i32 0, i32 10
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %34 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %33, i32 0, i32 10
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @kthread_stop(i64 %36)
  br label %38

38:                                               ; preds = %32, %26
  %39 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %40 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %45 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %48 = call i32 @free_irq(i64 %46, %struct.snd_emu10k1* %47)
  br label %49

49:                                               ; preds = %43, %38
  %50 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %51 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %50, i32 0, i32 9
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %56 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %57 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %56, i32 0, i32 9
  %58 = load i32*, i32** %57, align 8
  %59 = bitcast i32* %58 to %struct.snd_util_memblk*
  %60 = call i32 @snd_emu10k1_synth_free(%struct.snd_emu10k1* %55, %struct.snd_util_memblk* %59)
  %61 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %62 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %61, i32 0, i32 9
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %54, %49
  %64 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %65 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %64, i32 0, i32 8
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %70 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %69, i32 0, i32 8
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @snd_util_memhdr_free(i64 %71)
  br label %73

73:                                               ; preds = %68, %63
  %74 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %75 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %74, i32 0, i32 7
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %81 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %80, i32 0, i32 7
  %82 = call i32 @snd_dma_free_pages(%struct.TYPE_6__* %81)
  br label %83

83:                                               ; preds = %79, %73
  %84 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %85 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %84, i32 0, i32 6
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %91 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %90, i32 0, i32 6
  %92 = call i32 @snd_dma_free_pages(%struct.TYPE_6__* %91)
  br label %93

93:                                               ; preds = %89, %83
  %94 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %95 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @vfree(i32 %96)
  %98 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %99 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @vfree(i32 %100)
  %102 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %103 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %93
  %107 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %108 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @pci_release_regions(i32 %109)
  br label %111

111:                                              ; preds = %106, %93
  %112 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %113 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %112, i32 0, i32 2
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %120 = call i32 @snd_p16v_free(%struct.snd_emu10k1* %119)
  br label %121

121:                                              ; preds = %118, %111
  %122 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %123 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @pci_disable_device(i32 %124)
  %126 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %127 = call i32 @kfree(%struct.snd_emu10k1* %126)
  ret i32 0
}

declare dso_local i32 @snd_emu10k1_fx8010_tram_setup(%struct.snd_emu10k1*, i32) #1

declare dso_local i32 @snd_emu10k1_done(%struct.snd_emu10k1*) #1

declare dso_local i32 @snd_emu10k1_free_efx(%struct.snd_emu10k1*) #1

declare dso_local i32 @snd_emu1010_fpga_write(%struct.snd_emu10k1*, i32, i32) #1

declare dso_local i32 @kthread_stop(i64) #1

declare dso_local i32 @free_irq(i64, %struct.snd_emu10k1*) #1

declare dso_local i32 @snd_emu10k1_synth_free(%struct.snd_emu10k1*, %struct.snd_util_memblk*) #1

declare dso_local i32 @snd_util_memhdr_free(i64) #1

declare dso_local i32 @snd_dma_free_pages(%struct.TYPE_6__*) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @pci_release_regions(i32) #1

declare dso_local i32 @snd_p16v_free(%struct.snd_emu10k1*) #1

declare dso_local i32 @pci_disable_device(i32) #1

declare dso_local i32 @kfree(%struct.snd_emu10k1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
