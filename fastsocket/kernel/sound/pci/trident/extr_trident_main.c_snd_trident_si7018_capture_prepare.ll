; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_main.c_snd_trident_si7018_capture_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_main.c_snd_trident_si7018_capture_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32, %struct.snd_trident_voice* }
%struct.snd_trident_voice = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i64, i32, i32, i32, %struct.snd_trident_voice* }
%struct.snd_trident = type { i32 }

@T4D_DEFAULT_PCM_PAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_trident_si7018_capture_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_trident_si7018_capture_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_trident*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_trident_voice*, align 8
  %6 = alloca %struct.snd_trident_voice*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = call %struct.snd_trident* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_trident* %8, %struct.snd_trident** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %4, align 8
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %12, i32 0, i32 4
  %14 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %13, align 8
  store %struct.snd_trident_voice* %14, %struct.snd_trident_voice** %5, align 8
  %15 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %16 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %15, i32 0, i32 18
  %17 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %16, align 8
  store %struct.snd_trident_voice* %17, %struct.snd_trident_voice** %6, align 8
  %18 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %19 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %18, i32 0, i32 0
  %20 = call i32 @spin_lock_irq(i32* %19)
  %21 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %25 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %24, i32 0, i32 15
  store i32 %23, i32* %25, align 8
  %26 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @snd_trident_convert_adc_rate(i32 %28)
  %30 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %31 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %30, i32 0, i32 17
  store i32 %29, i32* %31, align 8
  %32 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @snd_trident_spurious_threshold(i32 %34, i32 %37)
  %39 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %40 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %39, i32 0, i32 16
  store i32 %38, i32* %40, align 4
  %41 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %42 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %41, i32 0, i32 14
  store i64 0, i64* %42, align 8
  %43 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 1
  %47 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %48 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %50 = call i32 @snd_trident_control_mode(%struct.snd_pcm_substream* %49)
  %51 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %52 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %51, i32 0, i32 13
  store i32 %50, i32* %52, align 8
  %53 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %54 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  %55 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %56 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %55, i32 0, i32 2
  store i32 0, i32* %56, align 8
  %57 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %58 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %57, i32 0, i32 3
  store i32 0, i32* %58, align 4
  %59 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %60 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %59, i32 0, i32 4
  store i32 1, i32* %60, align 8
  %61 = load i32, i32* @T4D_DEFAULT_PCM_PAN, align 4
  %62 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %63 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  %64 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %65 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %64, i32 0, i32 6
  store i32 0, i32* %65, align 8
  %66 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %67 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %66, i32 0, i32 12
  store i64 0, i64* %67, align 8
  %68 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %69 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %68, i32 0, i32 11
  store i64 0, i64* %69, align 8
  %70 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %71 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %70, i32 0, i32 10
  store i64 0, i64* %71, align 8
  %72 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %73 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %72, i32 0, i32 7
  store i32 35456, i32* %73, align 4
  %74 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %75 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %76 = call i32 @snd_trident_write_voice_regs(%struct.snd_trident* %74, %struct.snd_trident_voice* %75)
  %77 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %78 = icmp ne %struct.snd_trident_voice* %77, null
  br i1 %78, label %79, label %148

79:                                               ; preds = %1
  %80 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %81 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @snd_trident_convert_rate(i32 %82)
  %84 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %85 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %84, i32 0, i32 17
  store i32 %83, i32* %85, align 8
  %86 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %87 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %86, i32 0, i32 16
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %90 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %89, i32 0, i32 16
  store i32 %88, i32* %90, align 4
  %91 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %92 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %91, i32 0, i32 15
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %95 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %94, i32 0, i32 15
  store i32 %93, i32* %95, align 8
  %96 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %97 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %96, i32 0, i32 14
  store i64 0, i64* %97, align 8
  %98 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %99 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = mul nsw i32 %100, 2
  %102 = add nsw i32 %101, 20
  %103 = sub nsw i32 %102, 1
  %104 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %105 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %107 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %106, i32 0, i32 13
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %110 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %109, i32 0, i32 13
  store i32 %108, i32* %110, align 8
  %111 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %112 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %111, i32 0, i32 1
  store i32 3, i32* %112, align 4
  %113 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %114 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %113, i32 0, i32 4
  store i32 0, i32* %114, align 8
  %115 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %116 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %115, i32 0, i32 12
  store i64 0, i64* %116, align 8
  %117 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %118 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %117, i32 0, i32 11
  store i64 0, i64* %118, align 8
  %119 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %120 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %119, i32 0, i32 10
  store i64 0, i64* %120, align 8
  %121 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %122 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %121, i32 0, i32 6
  store i32 1023, i32* %122, align 8
  %123 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %124 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %123, i32 0, i32 3
  store i32 127, i32* %124, align 4
  %125 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %126 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %125, i32 0, i32 2
  store i32 127, i32* %126, align 8
  %127 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %128 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %127, i32 0, i32 5
  store i32 127, i32* %128, align 4
  %129 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %130 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %129, i32 0, i32 7
  store i32 0, i32* %130, align 4
  %131 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %132 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %133 = call i32 @snd_trident_write_voice_regs(%struct.snd_trident* %131, %struct.snd_trident_voice* %132)
  %134 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %135 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %134, i32 0, i32 8
  store i32 1, i32* %135, align 8
  %136 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %137 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %140 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %139, i32 0, i32 9
  store i32 %138, i32* %140, align 4
  %141 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %142 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = mul nsw i32 %143, 2
  %145 = sub nsw i32 %144, 1
  %146 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %147 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  br label %148

148:                                              ; preds = %79, %1
  %149 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %150 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %149, i32 0, i32 0
  %151 = call i32 @spin_unlock_irq(i32* %150)
  ret i32 0
}

declare dso_local %struct.snd_trident* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_trident_convert_adc_rate(i32) #1

declare dso_local i32 @snd_trident_spurious_threshold(i32, i32) #1

declare dso_local i32 @snd_trident_control_mode(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_trident_write_voice_regs(%struct.snd_trident*, %struct.snd_trident_voice*) #1

declare dso_local i32 @snd_trident_convert_rate(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
