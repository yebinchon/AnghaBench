; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_qcelp.c_audqcelp_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_qcelp.c_audqcelp_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio = type { i64, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [20 x i8] c"audqcelp_disable()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audio*)* @audqcelp_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audqcelp_disable(%struct.audio* %0) #0 {
  %2 = alloca %struct.audio*, align 8
  store %struct.audio* %0, %struct.audio** %2, align 8
  %3 = call i32 @dprintk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.audio*, %struct.audio** %2, align 8
  %5 = getelementptr inbounds %struct.audio, %struct.audio* %4, i32 0, i32 6
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = load %struct.audio*, %struct.audio** %2, align 8
  %10 = getelementptr inbounds %struct.audio, %struct.audio* %9, i32 0, i32 6
  store i64 0, i64* %10, align 8
  %11 = load %struct.audio*, %struct.audio** %2, align 8
  %12 = call i32 @auddec_dsp_config(%struct.audio* %11, i32 0)
  %13 = load %struct.audio*, %struct.audio** %2, align 8
  %14 = getelementptr inbounds %struct.audio, %struct.audio* %13, i32 0, i32 5
  %15 = call i32 @wake_up(i32* %14)
  %16 = load %struct.audio*, %struct.audio** %2, align 8
  %17 = getelementptr inbounds %struct.audio, %struct.audio* %16, i32 0, i32 4
  %18 = call i32 @wake_up(i32* %17)
  %19 = load %struct.audio*, %struct.audio** %2, align 8
  %20 = getelementptr inbounds %struct.audio, %struct.audio* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @msm_adsp_disable(i32 %21)
  %23 = load %struct.audio*, %struct.audio** %2, align 8
  %24 = getelementptr inbounds %struct.audio, %struct.audio* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.audio*, %struct.audio** %2, align 8
  %27 = call i32 @audpp_disable(i32 %25, %struct.audio* %26)
  %28 = load %struct.audio*, %struct.audio** %2, align 8
  %29 = getelementptr inbounds %struct.audio, %struct.audio* %28, i32 0, i32 1
  %30 = call i32 @audmgr_disable(i32* %29)
  %31 = load %struct.audio*, %struct.audio** %2, align 8
  %32 = getelementptr inbounds %struct.audio, %struct.audio* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %8, %1
  ret i32 0
}

declare dso_local i32 @dprintk(i8*) #1

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
