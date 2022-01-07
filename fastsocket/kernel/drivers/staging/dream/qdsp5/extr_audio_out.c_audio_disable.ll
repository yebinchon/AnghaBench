; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_out.c_audio_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_out.c_audio_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio = type { i64, i32, i32, i64 }

@.str = private unnamed_addr constant [17 x i8] c"audio_disable()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audio*)* @audio_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audio_disable(%struct.audio* %0) #0 {
  %2 = alloca %struct.audio*, align 8
  store %struct.audio* %0, %struct.audio** %2, align 8
  %3 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.audio*, %struct.audio** %2, align 8
  %5 = getelementptr inbounds %struct.audio, %struct.audio* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = load %struct.audio*, %struct.audio** %2, align 8
  %10 = getelementptr inbounds %struct.audio, %struct.audio* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load %struct.audio*, %struct.audio** %2, align 8
  %12 = call i32 @audio_dsp_out_enable(%struct.audio* %11, i32 0)
  %13 = load %struct.audio*, %struct.audio** %2, align 8
  %14 = call i32 @audpp_disable(i32 -1, %struct.audio* %13)
  %15 = load %struct.audio*, %struct.audio** %2, align 8
  %16 = getelementptr inbounds %struct.audio, %struct.audio* %15, i32 0, i32 2
  %17 = call i32 @wake_up(i32* %16)
  %18 = load %struct.audio*, %struct.audio** %2, align 8
  %19 = getelementptr inbounds %struct.audio, %struct.audio* %18, i32 0, i32 1
  %20 = call i32 @audmgr_disable(i32* %19)
  %21 = load %struct.audio*, %struct.audio** %2, align 8
  %22 = getelementptr inbounds %struct.audio, %struct.audio* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.audio*, %struct.audio** %2, align 8
  %24 = call i32 @audio_allow_sleep(%struct.audio* %23)
  br label %25

25:                                               ; preds = %8, %1
  ret i32 0
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @audio_dsp_out_enable(%struct.audio*, i32) #1

declare dso_local i32 @audpp_disable(i32, %struct.audio*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @audmgr_disable(i32*) #1

declare dso_local i32 @audio_allow_sleep(%struct.audio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
