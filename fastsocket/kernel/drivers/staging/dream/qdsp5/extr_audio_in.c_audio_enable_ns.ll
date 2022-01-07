; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_in.c_audio_enable_ns.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_in.c_audio_enable_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_in = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audio_in*, i32)* @audio_enable_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audio_enable_ns(%struct.audio_in* %0, i32 %1) #0 {
  %3 = alloca %struct.audio_in*, align 8
  %4 = alloca i32, align 4
  store %struct.audio_in* %0, %struct.audio_in** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.audio_in*, %struct.audio_in** %3, align 8
  %6 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.audio_in*, %struct.audio_in** %3, align 8
  %13 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.audio_in*, %struct.audio_in** %3, align 8
  %15 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load %struct.audio_in*, %struct.audio_in** %3, align 8
  %20 = call i32 @audio_dsp_set_ns(%struct.audio_in* %19)
  br label %21

21:                                               ; preds = %18, %10
  br label %22

22:                                               ; preds = %21, %2
  ret void
}

declare dso_local i32 @audio_dsp_set_ns(%struct.audio_in*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
