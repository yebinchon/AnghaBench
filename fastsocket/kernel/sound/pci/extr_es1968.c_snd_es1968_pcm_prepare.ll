; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_es1968.c_snd_es1968_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_es1968.c_snd_es1968_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, %struct.esschan* }
%struct.esschan = type { i32, i32, i32, i32, i32, i32 }
%struct.es1968 = type { i32 }

@ESS_FMT_16BIT = common dso_local global i32 0, align 4
@ESS_FMT_STEREO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_es1968_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es1968_pcm_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.es1968*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.esschan*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = call %struct.es1968* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.es1968* %7, %struct.es1968** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %4, align 8
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %11, i32 0, i32 2
  %13 = load %struct.esschan*, %struct.esschan** %12, align 8
  store %struct.esschan* %13, %struct.esschan** %5, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %15 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %14)
  %16 = load %struct.esschan*, %struct.esschan** %5, align 8
  %17 = getelementptr inbounds %struct.esschan, %struct.esschan* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 4
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %19 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %18)
  %20 = load %struct.esschan*, %struct.esschan** %5, align 8
  %21 = getelementptr inbounds %struct.esschan, %struct.esschan* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 4
  %22 = load %struct.esschan*, %struct.esschan** %5, align 8
  %23 = getelementptr inbounds %struct.esschan, %struct.esschan* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load %struct.esschan*, %struct.esschan** %5, align 8
  %25 = getelementptr inbounds %struct.esschan, %struct.esschan* %24, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @snd_pcm_format_width(i32 %28)
  %30 = icmp eq i32 %29, 16
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load i32, i32* @ESS_FMT_16BIT, align 4
  %33 = load %struct.esschan*, %struct.esschan** %5, align 8
  %34 = getelementptr inbounds %struct.esschan, %struct.esschan* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31, %1
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %60

42:                                               ; preds = %37
  %43 = load i32, i32* @ESS_FMT_STEREO, align 4
  %44 = load %struct.esschan*, %struct.esschan** %5, align 8
  %45 = getelementptr inbounds %struct.esschan, %struct.esschan* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.esschan*, %struct.esschan** %5, align 8
  %49 = getelementptr inbounds %struct.esschan, %struct.esschan* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ESS_FMT_16BIT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %42
  %55 = load %struct.esschan*, %struct.esschan** %5, align 8
  %56 = getelementptr inbounds %struct.esschan, %struct.esschan* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %54, %42
  br label %60

60:                                               ; preds = %59, %37
  %61 = load %struct.es1968*, %struct.es1968** %3, align 8
  %62 = load %struct.esschan*, %struct.esschan** %5, align 8
  %63 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %64 = call i32 @snd_es1968_calc_bob_rate(%struct.es1968* %61, %struct.esschan* %62, %struct.snd_pcm_runtime* %63)
  %65 = load %struct.esschan*, %struct.esschan** %5, align 8
  %66 = getelementptr inbounds %struct.esschan, %struct.esschan* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.esschan*, %struct.esschan** %5, align 8
  %68 = getelementptr inbounds %struct.esschan, %struct.esschan* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %80 [
    i32 128, label %70
    i32 129, label %75
  ]

70:                                               ; preds = %60
  %71 = load %struct.es1968*, %struct.es1968** %3, align 8
  %72 = load %struct.esschan*, %struct.esschan** %5, align 8
  %73 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %74 = call i32 @snd_es1968_playback_setup(%struct.es1968* %71, %struct.esschan* %72, %struct.snd_pcm_runtime* %73)
  br label %80

75:                                               ; preds = %60
  %76 = load %struct.es1968*, %struct.es1968** %3, align 8
  %77 = load %struct.esschan*, %struct.esschan** %5, align 8
  %78 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %79 = call i32 @snd_es1968_capture_setup(%struct.es1968* %76, %struct.esschan* %77, %struct.snd_pcm_runtime* %78)
  br label %80

80:                                               ; preds = %60, %75, %70
  ret i32 0
}

declare dso_local %struct.es1968* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @snd_es1968_calc_bob_rate(%struct.es1968*, %struct.esschan*, %struct.snd_pcm_runtime*) #1

declare dso_local i32 @snd_es1968_playback_setup(%struct.es1968*, %struct.esschan*, %struct.snd_pcm_runtime*) #1

declare dso_local i32 @snd_es1968_capture_setup(%struct.es1968*, %struct.esschan*, %struct.snd_pcm_runtime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
