; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_evrc.c_audevrc_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_evrc.c_audevrc_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio = type { i64, i32, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audio*)* @audevrc_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audevrc_disable(%struct.audio* %0) #0 {
  %2 = alloca %struct.audio*, align 8
  store %struct.audio* %0, %struct.audio** %2, align 8
  %3 = load %struct.audio*, %struct.audio** %2, align 8
  %4 = getelementptr inbounds %struct.audio, %struct.audio* %3, i32 0, i32 6
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %1
  %8 = load %struct.audio*, %struct.audio** %2, align 8
  %9 = getelementptr inbounds %struct.audio, %struct.audio* %8, i32 0, i32 6
  store i64 0, i64* %9, align 8
  %10 = load %struct.audio*, %struct.audio** %2, align 8
  %11 = call i32 @auddec_dsp_config(%struct.audio* %10, i32 0)
  %12 = load %struct.audio*, %struct.audio** %2, align 8
  %13 = getelementptr inbounds %struct.audio, %struct.audio* %12, i32 0, i32 5
  %14 = call i32 @wake_up(i32* %13)
  %15 = load %struct.audio*, %struct.audio** %2, align 8
  %16 = getelementptr inbounds %struct.audio, %struct.audio* %15, i32 0, i32 4
  %17 = call i32 @wake_up(i32* %16)
  %18 = load %struct.audio*, %struct.audio** %2, align 8
  %19 = getelementptr inbounds %struct.audio, %struct.audio* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @msm_adsp_disable(i32 %20)
  %22 = load %struct.audio*, %struct.audio** %2, align 8
  %23 = getelementptr inbounds %struct.audio, %struct.audio* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.audio*, %struct.audio** %2, align 8
  %26 = call i32 @audpp_disable(i32 %24, %struct.audio* %25)
  %27 = load %struct.audio*, %struct.audio** %2, align 8
  %28 = getelementptr inbounds %struct.audio, %struct.audio* %27, i32 0, i32 1
  %29 = call i32 @audmgr_disable(i32* %28)
  %30 = load %struct.audio*, %struct.audio** %2, align 8
  %31 = getelementptr inbounds %struct.audio, %struct.audio* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %7, %1
  ret i32 0
}

declare dso_local i32 @auddec_dsp_config(%struct.audio*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @msm_adsp_disable(i32) #1

declare dso_local i32 @audpp_disable(i32, %struct.audio*) #1

declare dso_local i32 @audmgr_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
