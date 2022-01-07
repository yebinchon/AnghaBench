; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_aac.c_audplay_send_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_aac.c_audplay_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio = type { i32, i32, i32, %struct.buffer*, i32, i32, i32 }
%struct.buffer = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"frame %d free\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audio*, i32)* @audplay_send_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audplay_send_data(%struct.audio* %0, i32 %1) #0 {
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
  %12 = getelementptr inbounds %struct.audio, %struct.audio* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %93

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %54

19:                                               ; preds = %16
  %20 = load %struct.audio*, %struct.audio** %3, align 8
  %21 = getelementptr inbounds %struct.audio, %struct.audio* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %54, label %24

24:                                               ; preds = %19
  %25 = load %struct.audio*, %struct.audio** %3, align 8
  %26 = getelementptr inbounds %struct.audio, %struct.audio* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.audio*, %struct.audio** %3, align 8
  %28 = getelementptr inbounds %struct.audio, %struct.audio* %27, i32 0, i32 3
  %29 = load %struct.buffer*, %struct.buffer** %28, align 8
  %30 = load %struct.audio*, %struct.audio** %3, align 8
  %31 = getelementptr inbounds %struct.audio, %struct.audio* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.buffer, %struct.buffer* %29, i64 %33
  store %struct.buffer* %34, %struct.buffer** %5, align 8
  %35 = load %struct.buffer*, %struct.buffer** %5, align 8
  %36 = getelementptr inbounds %struct.buffer, %struct.buffer* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %53

39:                                               ; preds = %24
  %40 = load %struct.audio*, %struct.audio** %3, align 8
  %41 = getelementptr inbounds %struct.audio, %struct.audio* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dprintk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.buffer*, %struct.buffer** %5, align 8
  %45 = getelementptr inbounds %struct.buffer, %struct.buffer* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  %46 = load %struct.audio*, %struct.audio** %3, align 8
  %47 = getelementptr inbounds %struct.audio, %struct.audio* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = xor i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.audio*, %struct.audio** %3, align 8
  %51 = getelementptr inbounds %struct.audio, %struct.audio* %50, i32 0, i32 4
  %52 = call i32 @wake_up(i32* %51)
  br label %53

53:                                               ; preds = %39, %24
  br label %54

54:                                               ; preds = %53, %19, %16
  %55 = load %struct.audio*, %struct.audio** %3, align 8
  %56 = getelementptr inbounds %struct.audio, %struct.audio* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %92

59:                                               ; preds = %54
  %60 = load %struct.audio*, %struct.audio** %3, align 8
  %61 = getelementptr inbounds %struct.audio, %struct.audio* %60, i32 0, i32 3
  %62 = load %struct.buffer*, %struct.buffer** %61, align 8
  %63 = load %struct.audio*, %struct.audio** %3, align 8
  %64 = getelementptr inbounds %struct.audio, %struct.audio* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.buffer, %struct.buffer* %62, i64 %66
  store %struct.buffer* %67, %struct.buffer** %5, align 8
  %68 = load %struct.buffer*, %struct.buffer** %5, align 8
  %69 = getelementptr inbounds %struct.buffer, %struct.buffer* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %91

72:                                               ; preds = %59
  %73 = load %struct.buffer*, %struct.buffer** %5, align 8
  %74 = getelementptr inbounds %struct.buffer, %struct.buffer* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, -1
  %77 = zext i1 %76 to i32
  %78 = call i32 @BUG_ON(i32 %77)
  %79 = load %struct.audio*, %struct.audio** %3, align 8
  %80 = load %struct.audio*, %struct.audio** %3, align 8
  %81 = getelementptr inbounds %struct.audio, %struct.audio* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.buffer*, %struct.buffer** %5, align 8
  %84 = getelementptr inbounds %struct.buffer, %struct.buffer* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @audplay_dsp_send_data_avail(%struct.audio* %79, i32 %82, i32 %85)
  %87 = load %struct.buffer*, %struct.buffer** %5, align 8
  %88 = getelementptr inbounds %struct.buffer, %struct.buffer* %87, i32 0, i32 0
  store i32 -1, i32* %88, align 4
  %89 = load %struct.audio*, %struct.audio** %3, align 8
  %90 = getelementptr inbounds %struct.audio, %struct.audio* %89, i32 0, i32 0
  store i32 0, i32* %90, align 8
  br label %91

91:                                               ; preds = %72, %59
  br label %92

92:                                               ; preds = %91, %54
  br label %93

93:                                               ; preds = %92, %15
  %94 = load %struct.audio*, %struct.audio** %3, align 8
  %95 = getelementptr inbounds %struct.audio, %struct.audio* %94, i32 0, i32 2
  %96 = load i64, i64* %6, align 8
  %97 = call i32 @spin_unlock_irqrestore(i32* %95, i64 %96)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dprintk(i8*, i32) #1

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
