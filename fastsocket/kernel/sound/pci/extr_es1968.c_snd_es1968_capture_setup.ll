; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_es1968.c_snd_es1968_capture_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_es1968.c_snd_es1968_capture_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1968 = type { i32, i64 }
%struct.esschan = type { i32, i32, i32*, i32, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.snd_pcm_runtime = type { i32 }

@ESM_MIXBUF_SIZE = common dso_local global i32 0, align 4
@ESM_APU_INPUTMIXER = common dso_local global i32 0, align 4
@ESM_APU_SRCONVERTOR = common dso_local global i32 0, align 4
@ESS_FMT_STEREO = common dso_local global i32 0, align 4
@ESM_PORT_HOST_IRQ = common dso_local global i64 0, align 8
@ESM_HIRQ_DSIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.es1968*, %struct.esschan*, %struct.snd_pcm_runtime*)* @snd_es1968_capture_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_es1968_capture_setup(%struct.es1968* %0, %struct.esschan* %1, %struct.snd_pcm_runtime* %2) #0 {
  %4 = alloca %struct.es1968*, align 8
  %5 = alloca %struct.esschan*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.es1968* %0, %struct.es1968** %4, align 8
  store %struct.esschan* %1, %struct.esschan** %5, align 8
  store %struct.snd_pcm_runtime* %2, %struct.snd_pcm_runtime** %6, align 8
  %10 = load %struct.esschan*, %struct.esschan** %5, align 8
  %11 = getelementptr inbounds %struct.esschan, %struct.esschan* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.esschan*, %struct.esschan** %5, align 8
  %14 = getelementptr inbounds %struct.esschan, %struct.esschan* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = ashr i32 %12, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.es1968*, %struct.es1968** %4, align 8
  %18 = load %struct.esschan*, %struct.esschan** %5, align 8
  %19 = load %struct.esschan*, %struct.esschan** %5, align 8
  %20 = getelementptr inbounds %struct.esschan, %struct.esschan* %19, i32 0, i32 5
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @ESM_MIXBUF_SIZE, align 4
  %26 = sdiv i32 %25, 4
  %27 = load i32, i32* @ESM_APU_INPUTMIXER, align 4
  %28 = call i32 @init_capture_apu(%struct.es1968* %17, %struct.esschan* %18, i32 2, i64 %24, i32 %26, i32 %27, i32 20)
  %29 = load %struct.es1968*, %struct.es1968** %4, align 8
  %30 = load %struct.esschan*, %struct.esschan** %5, align 8
  %31 = load %struct.esschan*, %struct.esschan** %5, align 8
  %32 = getelementptr inbounds %struct.esschan, %struct.esschan* %31, i32 0, i32 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @ESM_APU_SRCONVERTOR, align 4
  %39 = load %struct.esschan*, %struct.esschan** %5, align 8
  %40 = getelementptr inbounds %struct.esschan, %struct.esschan* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @init_capture_apu(%struct.es1968* %29, %struct.esschan* %30, i32 0, i64 %36, i32 %37, i32 %38, i32 %43)
  %45 = load %struct.esschan*, %struct.esschan** %5, align 8
  %46 = getelementptr inbounds %struct.esschan, %struct.esschan* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @ESS_FMT_STEREO, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %88

51:                                               ; preds = %3
  %52 = load %struct.es1968*, %struct.es1968** %4, align 8
  %53 = load %struct.esschan*, %struct.esschan** %5, align 8
  %54 = load %struct.esschan*, %struct.esschan** %5, align 8
  %55 = getelementptr inbounds %struct.esschan, %struct.esschan* %54, i32 0, i32 5
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @ESM_MIXBUF_SIZE, align 4
  %61 = sdiv i32 %60, 2
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %59, %62
  %64 = load i32, i32* @ESM_MIXBUF_SIZE, align 4
  %65 = sdiv i32 %64, 4
  %66 = load i32, i32* @ESM_APU_INPUTMIXER, align 4
  %67 = call i32 @init_capture_apu(%struct.es1968* %52, %struct.esschan* %53, i32 3, i64 %63, i32 %65, i32 %66, i32 21)
  %68 = load %struct.es1968*, %struct.es1968** %4, align 8
  %69 = load %struct.esschan*, %struct.esschan** %5, align 8
  %70 = load %struct.esschan*, %struct.esschan** %5, align 8
  %71 = getelementptr inbounds %struct.esschan, %struct.esschan* %70, i32 0, i32 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = mul nsw i32 %76, 2
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %75, %78
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @ESM_APU_SRCONVERTOR, align 4
  %82 = load %struct.esschan*, %struct.esschan** %5, align 8
  %83 = getelementptr inbounds %struct.esschan, %struct.esschan* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @init_capture_apu(%struct.es1968* %68, %struct.esschan* %69, i32 1, i64 %79, i32 %80, i32 %81, i32 %86)
  br label %88

88:                                               ; preds = %51, %3
  %89 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %90 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp sgt i32 %92, 47999
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  store i32 47999, i32* %8, align 4
  br label %95

95:                                               ; preds = %94, %88
  %96 = load i32, i32* %8, align 4
  %97 = icmp slt i32 %96, 4000
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i32 4000, i32* %8, align 4
  br label %99

99:                                               ; preds = %98, %95
  %100 = load %struct.es1968*, %struct.es1968** %4, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @snd_es1968_compute_rate(%struct.es1968* %100, i32 %101)
  store i32 %102, i32* %8, align 4
  %103 = load %struct.es1968*, %struct.es1968** %4, align 8
  %104 = load %struct.esschan*, %struct.esschan** %5, align 8
  %105 = getelementptr inbounds %struct.esschan, %struct.esschan* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @snd_es1968_apu_set_freq(%struct.es1968* %103, i32 %108, i32 %109)
  %111 = load %struct.es1968*, %struct.es1968** %4, align 8
  %112 = load %struct.esschan*, %struct.esschan** %5, align 8
  %113 = getelementptr inbounds %struct.esschan, %struct.esschan* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @snd_es1968_apu_set_freq(%struct.es1968* %111, i32 %116, i32 %117)
  store i32 65536, i32* %8, align 4
  %119 = load %struct.es1968*, %struct.es1968** %4, align 8
  %120 = load %struct.esschan*, %struct.esschan** %5, align 8
  %121 = getelementptr inbounds %struct.esschan, %struct.esschan* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 2
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @snd_es1968_apu_set_freq(%struct.es1968* %119, i32 %124, i32 %125)
  %127 = load %struct.es1968*, %struct.es1968** %4, align 8
  %128 = load %struct.esschan*, %struct.esschan** %5, align 8
  %129 = getelementptr inbounds %struct.esschan, %struct.esschan* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 3
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @snd_es1968_apu_set_freq(%struct.es1968* %127, i32 %132, i32 %133)
  %135 = load %struct.es1968*, %struct.es1968** %4, align 8
  %136 = getelementptr inbounds %struct.es1968, %struct.es1968* %135, i32 0, i32 0
  %137 = load i64, i64* %9, align 8
  %138 = call i32 @spin_lock_irqsave(i32* %136, i64 %137)
  %139 = load %struct.es1968*, %struct.es1968** %4, align 8
  %140 = getelementptr inbounds %struct.es1968, %struct.es1968* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %141, 4
  %143 = call i32 @outw(i32 1, i64 %142)
  %144 = load %struct.es1968*, %struct.es1968** %4, align 8
  %145 = getelementptr inbounds %struct.es1968, %struct.es1968* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @ESM_PORT_HOST_IRQ, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @inw(i64 %148)
  %150 = load i32, i32* @ESM_HIRQ_DSIE, align 4
  %151 = or i32 %149, %150
  %152 = load %struct.es1968*, %struct.es1968** %4, align 8
  %153 = getelementptr inbounds %struct.es1968, %struct.es1968* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @ESM_PORT_HOST_IRQ, align 8
  %156 = add nsw i64 %154, %155
  %157 = call i32 @outw(i32 %151, i64 %156)
  %158 = load %struct.es1968*, %struct.es1968** %4, align 8
  %159 = getelementptr inbounds %struct.es1968, %struct.es1968* %158, i32 0, i32 0
  %160 = load i64, i64* %9, align 8
  %161 = call i32 @spin_unlock_irqrestore(i32* %159, i64 %160)
  ret void
}

declare dso_local i32 @init_capture_apu(%struct.es1968*, %struct.esschan*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @snd_es1968_compute_rate(%struct.es1968*, i32) #1

declare dso_local i32 @snd_es1968_apu_set_freq(%struct.es1968*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
