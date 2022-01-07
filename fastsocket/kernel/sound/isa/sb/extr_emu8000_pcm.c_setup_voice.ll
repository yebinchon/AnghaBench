; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_emu8000_pcm.c_setup_voice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_emu8000_pcm.c_setup_voice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu8k_pcm = type { i32*, i32, i64*, i32, %struct.snd_emu8000* }
%struct.snd_emu8000 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emu8k_pcm*, i32)* @setup_voice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_voice(%struct.snd_emu8k_pcm* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_emu8k_pcm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_emu8000*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_emu8k_pcm* %0, %struct.snd_emu8k_pcm** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %8 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %7, i32 0, i32 4
  %9 = load %struct.snd_emu8000*, %struct.snd_emu8000** %8, align 8
  store %struct.snd_emu8000* %9, %struct.snd_emu8000** %5, align 8
  %10 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @EMU8000_DCYSUSV_WRITE(%struct.snd_emu8000* %10, i32 %11, i32 128)
  %13 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @EMU8000_VTFT_WRITE(%struct.snd_emu8000* %13, i32 %14, i32 65535)
  %16 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @EMU8000_CVCF_WRITE(%struct.snd_emu8000* %16, i32 %17, i32 65535)
  %19 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @EMU8000_PTRX_WRITE(%struct.snd_emu8000* %19, i32 %20, i32 0)
  %22 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @EMU8000_CPF_WRITE(%struct.snd_emu8000* %22, i32 %23, i32 0)
  %25 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %28 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @EMU8000_IP_WRITE(%struct.snd_emu8000* %25, i32 %26, i32 %29)
  %31 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @EMU8000_ENVVAL_WRITE(%struct.snd_emu8000* %31, i32 %32, i32 32768)
  %34 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @EMU8000_ATKHLD_WRITE(%struct.snd_emu8000* %34, i32 %35, i32 32639)
  %37 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @EMU8000_DCYSUS_WRITE(%struct.snd_emu8000* %37, i32 %38, i32 32639)
  %40 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @EMU8000_ENVVOL_WRITE(%struct.snd_emu8000* %40, i32 %41, i32 32768)
  %43 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @EMU8000_ATKHLDV_WRITE(%struct.snd_emu8000* %43, i32 %44, i32 32639)
  %46 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @EMU8000_PEFE_WRITE(%struct.snd_emu8000* %46, i32 %47, i32 0)
  %49 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @EMU8000_LFO1VAL_WRITE(%struct.snd_emu8000* %49, i32 %50, i32 32768)
  %52 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @EMU8000_LFO2VAL_WRITE(%struct.snd_emu8000* %52, i32 %53, i32 32768)
  %55 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @EMU8000_FMMOD_WRITE(%struct.snd_emu8000* %55, i32 %56, i32 0)
  %58 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @EMU8000_TREMFRQ_WRITE(%struct.snd_emu8000* %58, i32 %59, i32 0)
  %61 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @EMU8000_FM2FRQ2_WRITE(%struct.snd_emu8000* %61, i32 %62, i32 0)
  %64 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %65 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = shl i32 %71, 24
  %73 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %74 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %73, i32 0, i32 2
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = sub i32 %80, 1
  %82 = or i32 %72, %81
  store i32 %82, i32* %6, align 4
  %83 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @EMU8000_PSST_WRITE(%struct.snd_emu8000* %83, i32 %84, i32 %85)
  store i32 0, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = shl i32 %87, 24
  %89 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %90 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %89, i32 0, i32 2
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %98 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = add i32 %96, %99
  %101 = sub i32 %100, 1
  %102 = or i32 %88, %101
  store i32 %102, i32* %6, align 4
  %103 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @EMU8000_CSL_WRITE(%struct.snd_emu8000* %103, i32 %104, i32 %105)
  store i32 0, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = shl i32 %107, 28
  %109 = load %struct.snd_emu8k_pcm*, %struct.snd_emu8k_pcm** %3, align 8
  %110 = getelementptr inbounds %struct.snd_emu8k_pcm, %struct.snd_emu8k_pcm* %109, i32 0, i32 2
  %111 = load i64*, i64** %110, align 8
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = sub i32 %116, 1
  %118 = or i32 %108, %117
  store i32 %118, i32* %6, align 4
  %119 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @EMU8000_CCCA_WRITE(%struct.snd_emu8000* %119, i32 %120, i32 %121)
  %123 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @EMU8000_00A0_WRITE(%struct.snd_emu8000* %123, i32 %124, i32 0)
  %126 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @EMU8000_0080_WRITE(%struct.snd_emu8000* %126, i32 %127, i32 0)
  ret void
}

declare dso_local i32 @EMU8000_DCYSUSV_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_VTFT_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_CVCF_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_PTRX_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_CPF_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_IP_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_ENVVAL_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_ATKHLD_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_DCYSUS_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_ENVVOL_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_ATKHLDV_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_PEFE_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_LFO1VAL_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_LFO2VAL_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_FMMOD_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_TREMFRQ_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_FM2FRQ2_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_PSST_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_CSL_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_CCCA_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_00A0_WRITE(%struct.snd_emu8000*, i32, i32) #1

declare dso_local i32 @EMU8000_0080_WRITE(%struct.snd_emu8000*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
