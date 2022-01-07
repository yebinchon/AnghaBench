; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_pcm_capture_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_pcm_capture_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_ymfpci_pcm* }
%struct.snd_ymfpci_pcm = type { i64, i32, i32, i32, i32, i32, i64, %struct.snd_ymfpci* }
%struct.snd_ymfpci = type { i64, i32, %struct.TYPE_2__*** }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*)* @snd_ymfpci_pcm_capture_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ymfpci_pcm_capture_interrupt(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.snd_ymfpci_pcm*, align 8
  %5 = alloca %struct.snd_ymfpci*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %3, align 8
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %11, i32 0, i32 0
  %13 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %12, align 8
  store %struct.snd_ymfpci_pcm* %13, %struct.snd_ymfpci_pcm** %4, align 8
  %14 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %4, align 8
  %15 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %14, i32 0, i32 7
  %16 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %15, align 8
  store %struct.snd_ymfpci* %16, %struct.snd_ymfpci** %5, align 8
  %17 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %18 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %17, i32 0, i32 1
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %4, align 8
  %21 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %99

24:                                               ; preds = %1
  %25 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %26 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__***, %struct.TYPE_2__**** %26, align 8
  %28 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %4, align 8
  %29 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__**, %struct.TYPE_2__*** %27, i64 %30
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %31, align 8
  %33 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %34 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 %35
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le32_to_cpu(i32 %39)
  %41 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %4, align 8
  %42 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = ashr i32 %40, %43
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %4, align 8
  %47 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %24
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %4, align 8
  %53 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %4, align 8
  %56 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %54, %57
  %59 = add nsw i32 %51, %58
  store i32 %59, i32* %7, align 4
  br label %66

60:                                               ; preds = %24
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %4, align 8
  %63 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %61, %64
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %60, %50
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %4, align 8
  %69 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %4, align 8
  %74 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %4, align 8
  %76 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %4, align 8
  %79 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = icmp sge i32 %77, %80
  br i1 %81, label %82, label %98

82:                                               ; preds = %66
  %83 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %4, align 8
  %84 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.snd_ymfpci_pcm*, %struct.snd_ymfpci_pcm** %4, align 8
  %87 = getelementptr inbounds %struct.snd_ymfpci_pcm, %struct.snd_ymfpci_pcm* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = srem i32 %88, %85
  store i32 %89, i32* %87, align 4
  %90 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %91 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %90, i32 0, i32 1
  %92 = call i32 @spin_unlock(i32* %91)
  %93 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %94 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %93)
  %95 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %96 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %95, i32 0, i32 1
  %97 = call i32 @spin_lock(i32* %96)
  br label %98

98:                                               ; preds = %82, %66
  br label %99

99:                                               ; preds = %98, %1
  %100 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %5, align 8
  %101 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %100, i32 0, i32 1
  %102 = call i32 @spin_unlock(i32* %101)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
