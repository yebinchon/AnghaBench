; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_main.c_snd_trident_foldback_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/trident/extr_trident_main.c_snd_trident_foldback_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, %struct.snd_trident_voice* }
%struct.snd_trident_voice = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i64, i32, i32, i64, %struct.TYPE_2__*, %struct.snd_trident_voice* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_trident = type { i64, i32 }

@T4D_RCI = common dso_local global i64 0, align 8
@TRIDENT_DEVICE_ID_SI7018 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_trident_foldback_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_trident_foldback_prepare(%struct.snd_pcm_substream* %0) #0 {
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
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %12, i32 0, i32 3
  %14 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %13, align 8
  store %struct.snd_trident_voice* %14, %struct.snd_trident_voice** %5, align 8
  %15 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %16 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %15, i32 0, i32 21
  %17 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %16, align 8
  store %struct.snd_trident_voice* %17, %struct.snd_trident_voice** %6, align 8
  %18 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %19 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %18, i32 0, i32 1
  %20 = call i32 @spin_lock_irq(i32* %19)
  %21 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %22 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %21, i32 0, i32 20
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = icmp ne %struct.TYPE_2__* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %27 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %26, i32 0, i32 20
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %32 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %31, i32 0, i32 17
  store i32 %30, i32* %32, align 8
  br label %39

33:                                               ; preds = %1
  %34 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %38 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %37, i32 0, i32 17
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %33, %25
  %40 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, 1
  %44 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %45 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %47 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %46, i32 0, i32 1
  store i32 4096, i32* %47, align 4
  %48 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @snd_trident_spurious_threshold(i32 48000, i32 %50)
  %52 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %53 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %52, i32 0, i32 18
  store i32 %51, i32* %53, align 4
  %54 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %55 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %54, i32 0, i32 16
  store i64 0, i64* %55, align 8
  %56 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %57 = call i32 @snd_trident_control_mode(%struct.snd_pcm_substream* %56)
  %58 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %59 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %58, i32 0, i32 15
  store i32 %57, i32* %59, align 8
  %60 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %61 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %60, i32 0, i32 2
  store i32 3, i32* %61, align 8
  %62 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %63 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %62, i32 0, i32 3
  store i32 127, i32* %63, align 4
  %64 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %65 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %64, i32 0, i32 4
  store i32 127, i32* %65, align 8
  %66 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %67 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %66, i32 0, i32 5
  store i32 1, i32* %67, align 4
  %68 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %69 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %68, i32 0, i32 6
  store i32 127, i32* %69, align 8
  %70 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %71 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %70, i32 0, i32 7
  store i32 1023, i32* %71, align 4
  %72 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %73 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %72, i32 0, i32 14
  store i64 0, i64* %73, align 8
  %74 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %75 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %74, i32 0, i32 13
  store i64 0, i64* %75, align 8
  %76 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %77 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %76, i32 0, i32 12
  store i64 0, i64* %77, align 8
  %78 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %79 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %78, i32 0, i32 11
  store i64 0, i64* %79, align 8
  %80 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %81 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, 63
  %84 = or i32 %83, 128
  %85 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %86 = load i64, i64* @T4D_RCI, align 8
  %87 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %88 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %87, i32 0, i32 19
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %86, %89
  %91 = call i32 @TRID_REG(%struct.snd_trident* %85, i64 %90)
  %92 = call i32 @outb(i32 %84, i32 %91)
  %93 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %94 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %95 = call i32 @snd_trident_write_voice_regs(%struct.snd_trident* %93, %struct.snd_trident_voice* %94)
  %96 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %97 = icmp ne %struct.snd_trident_voice* %96, null
  br i1 %97, label %98, label %173

98:                                               ; preds = %39
  %99 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %100 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %103 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %105 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %104, i32 0, i32 18
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %108 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %107, i32 0, i32 18
  store i32 %106, i32* %108, align 4
  %109 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %110 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %109, i32 0, i32 17
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %113 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %112, i32 0, i32 17
  store i32 %111, i32* %113, align 8
  %114 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %115 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %114, i32 0, i32 16
  store i64 0, i64* %115, align 8
  %116 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %117 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %118, 2
  %120 = add nsw i32 %119, 4
  %121 = sub nsw i32 %120, 1
  %122 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %123 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %5, align 8
  %125 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %124, i32 0, i32 15
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %128 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %127, i32 0, i32 15
  store i32 %126, i32* %128, align 8
  %129 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %130 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %129, i32 0, i32 2
  store i32 3, i32* %130, align 8
  %131 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %132 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @TRIDENT_DEVICE_ID_SI7018, align 8
  %135 = icmp eq i64 %133, %134
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i32 0, i32 1
  %138 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %139 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %138, i32 0, i32 5
  store i32 %137, i32* %139, align 4
  %140 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %141 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %140, i32 0, i32 14
  store i64 0, i64* %141, align 8
  %142 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %143 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %142, i32 0, i32 13
  store i64 0, i64* %143, align 8
  %144 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %145 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %144, i32 0, i32 12
  store i64 0, i64* %145, align 8
  %146 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %147 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %146, i32 0, i32 7
  store i32 1023, i32* %147, align 4
  %148 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %149 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %148, i32 0, i32 4
  store i32 127, i32* %149, align 8
  %150 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %151 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %150, i32 0, i32 3
  store i32 127, i32* %151, align 4
  %152 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %153 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %152, i32 0, i32 6
  store i32 127, i32* %153, align 8
  %154 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %155 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %154, i32 0, i32 11
  store i64 0, i64* %155, align 8
  %156 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %157 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %158 = call i32 @snd_trident_write_voice_regs(%struct.snd_trident* %156, %struct.snd_trident_voice* %157)
  %159 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %160 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %159, i32 0, i32 9
  store i32 1, i32* %160, align 4
  %161 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %162 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %165 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %164, i32 0, i32 10
  store i32 %163, i32* %165, align 8
  %166 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %167 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = mul nsw i32 %168, 2
  %170 = sub nsw i32 %169, 1
  %171 = load %struct.snd_trident_voice*, %struct.snd_trident_voice** %6, align 8
  %172 = getelementptr inbounds %struct.snd_trident_voice, %struct.snd_trident_voice* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  br label %173

173:                                              ; preds = %98, %39
  %174 = load %struct.snd_trident*, %struct.snd_trident** %3, align 8
  %175 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %174, i32 0, i32 1
  %176 = call i32 @spin_unlock_irq(i32* %175)
  ret i32 0
}

declare dso_local %struct.snd_trident* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_trident_spurious_threshold(i32, i32) #1

declare dso_local i32 @snd_trident_control_mode(%struct.snd_pcm_substream*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @TRID_REG(%struct.snd_trident*, i64) #1

declare dso_local i32 @snd_trident_write_voice_regs(%struct.snd_trident*, %struct.snd_trident_voice*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
