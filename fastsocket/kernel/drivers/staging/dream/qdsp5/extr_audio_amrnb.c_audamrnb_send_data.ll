; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_amrnb.c_audamrnb_send_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_amrnb.c_audamrnb_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio = type { i32, i32, i32, %struct.buffer*, i32, i32 }
%struct.buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audio*, i32)* @audamrnb_send_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audamrnb_send_data(%struct.audio* %0, i32 %1) #0 {
  %3 = alloca %struct.audio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.buffer*, align 8
  %6 = alloca i64, align 8
  store %struct.audio* %0, %struct.audio** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.audio*, %struct.audio** %3, align 8
  %8 = getelementptr inbounds %struct.audio, %struct.audio* %7, i32 0, i32 2
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.audio*, %struct.audio** %3, align 8
  %12 = getelementptr inbounds %struct.audio, %struct.audio* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %84

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %16
  %20 = load %struct.audio*, %struct.audio** %3, align 8
  %21 = getelementptr inbounds %struct.audio, %struct.audio* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.audio*, %struct.audio** %3, align 8
  %23 = getelementptr inbounds %struct.audio, %struct.audio* %22, i32 0, i32 3
  %24 = load %struct.buffer*, %struct.buffer** %23, align 8
  %25 = load %struct.audio*, %struct.audio** %3, align 8
  %26 = getelementptr inbounds %struct.audio, %struct.audio* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.buffer, %struct.buffer* %24, i64 %28
  store %struct.buffer* %29, %struct.buffer** %5, align 8
  %30 = load %struct.buffer*, %struct.buffer** %5, align 8
  %31 = getelementptr inbounds %struct.buffer, %struct.buffer* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %44

34:                                               ; preds = %19
  %35 = load %struct.buffer*, %struct.buffer** %5, align 8
  %36 = getelementptr inbounds %struct.buffer, %struct.buffer* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  %37 = load %struct.audio*, %struct.audio** %3, align 8
  %38 = getelementptr inbounds %struct.audio, %struct.audio* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = xor i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = load %struct.audio*, %struct.audio** %3, align 8
  %42 = getelementptr inbounds %struct.audio, %struct.audio* %41, i32 0, i32 4
  %43 = call i32 @wake_up(i32* %42)
  br label %44

44:                                               ; preds = %34, %19
  br label %45

45:                                               ; preds = %44, %16
  %46 = load %struct.audio*, %struct.audio** %3, align 8
  %47 = getelementptr inbounds %struct.audio, %struct.audio* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %83

50:                                               ; preds = %45
  %51 = load %struct.audio*, %struct.audio** %3, align 8
  %52 = getelementptr inbounds %struct.audio, %struct.audio* %51, i32 0, i32 3
  %53 = load %struct.buffer*, %struct.buffer** %52, align 8
  %54 = load %struct.audio*, %struct.audio** %3, align 8
  %55 = getelementptr inbounds %struct.audio, %struct.audio* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.buffer, %struct.buffer* %53, i64 %57
  store %struct.buffer* %58, %struct.buffer** %5, align 8
  %59 = load %struct.buffer*, %struct.buffer** %5, align 8
  %60 = getelementptr inbounds %struct.buffer, %struct.buffer* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %50
  %64 = load %struct.buffer*, %struct.buffer** %5, align 8
  %65 = getelementptr inbounds %struct.buffer, %struct.buffer* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, -1
  %68 = zext i1 %67 to i32
  %69 = call i32 @BUG_ON(i32 %68)
  %70 = load %struct.audio*, %struct.audio** %3, align 8
  %71 = load %struct.audio*, %struct.audio** %3, align 8
  %72 = getelementptr inbounds %struct.audio, %struct.audio* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.buffer*, %struct.buffer** %5, align 8
  %75 = getelementptr inbounds %struct.buffer, %struct.buffer* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @audplay_dsp_send_data_avail(%struct.audio* %70, i32 %73, i32 %76)
  %78 = load %struct.buffer*, %struct.buffer** %5, align 8
  %79 = getelementptr inbounds %struct.buffer, %struct.buffer* %78, i32 0, i32 0
  store i32 -1, i32* %79, align 4
  %80 = load %struct.audio*, %struct.audio** %3, align 8
  %81 = getelementptr inbounds %struct.audio, %struct.audio* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  br label %82

82:                                               ; preds = %63, %50
  br label %83

83:                                               ; preds = %82, %45
  br label %84

84:                                               ; preds = %83, %15
  %85 = load %struct.audio*, %struct.audio** %3, align 8
  %86 = getelementptr inbounds %struct.audio, %struct.audio* %85, i32 0, i32 2
  %87 = load i64, i64* %6, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @audplay_dsp_send_data_avail(%struct.audio*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
