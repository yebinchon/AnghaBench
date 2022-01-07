; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_mp3.c_audplay_send_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_mp3.c_audplay_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio = type { i32, i32, i32, %struct.buffer*, i32, i64, i32 }
%struct.buffer = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"frame %d free\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"frame %d busy\0A\00", align 1
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
  br label %105

16:                                               ; preds = %2
  %17 = load %struct.audio*, %struct.audio** %3, align 8
  %18 = getelementptr inbounds %struct.audio, %struct.audio* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.audio*, %struct.audio** %3, align 8
  %23 = getelementptr inbounds %struct.audio, %struct.audio* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  br label %105

24:                                               ; preds = %16
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %62

27:                                               ; preds = %24
  %28 = load %struct.audio*, %struct.audio** %3, align 8
  %29 = getelementptr inbounds %struct.audio, %struct.audio* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %62, label %32

32:                                               ; preds = %27
  %33 = load %struct.audio*, %struct.audio** %3, align 8
  %34 = getelementptr inbounds %struct.audio, %struct.audio* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.audio*, %struct.audio** %3, align 8
  %36 = getelementptr inbounds %struct.audio, %struct.audio* %35, i32 0, i32 3
  %37 = load %struct.buffer*, %struct.buffer** %36, align 8
  %38 = load %struct.audio*, %struct.audio** %3, align 8
  %39 = getelementptr inbounds %struct.audio, %struct.audio* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.buffer, %struct.buffer* %37, i64 %41
  store %struct.buffer* %42, %struct.buffer** %5, align 8
  %43 = load %struct.buffer*, %struct.buffer** %5, align 8
  %44 = getelementptr inbounds %struct.buffer, %struct.buffer* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %61

47:                                               ; preds = %32
  %48 = load %struct.audio*, %struct.audio** %3, align 8
  %49 = getelementptr inbounds %struct.audio, %struct.audio* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dprintk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load %struct.buffer*, %struct.buffer** %5, align 8
  %53 = getelementptr inbounds %struct.buffer, %struct.buffer* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  %54 = load %struct.audio*, %struct.audio** %3, align 8
  %55 = getelementptr inbounds %struct.audio, %struct.audio* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = xor i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load %struct.audio*, %struct.audio** %3, align 8
  %59 = getelementptr inbounds %struct.audio, %struct.audio* %58, i32 0, i32 4
  %60 = call i32 @wake_up(i32* %59)
  br label %61

61:                                               ; preds = %47, %32
  br label %62

62:                                               ; preds = %61, %27, %24
  %63 = load %struct.audio*, %struct.audio** %3, align 8
  %64 = getelementptr inbounds %struct.audio, %struct.audio* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %104

67:                                               ; preds = %62
  %68 = load %struct.audio*, %struct.audio** %3, align 8
  %69 = getelementptr inbounds %struct.audio, %struct.audio* %68, i32 0, i32 3
  %70 = load %struct.buffer*, %struct.buffer** %69, align 8
  %71 = load %struct.audio*, %struct.audio** %3, align 8
  %72 = getelementptr inbounds %struct.audio, %struct.audio* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.buffer, %struct.buffer* %70, i64 %74
  store %struct.buffer* %75, %struct.buffer** %5, align 8
  %76 = load %struct.buffer*, %struct.buffer** %5, align 8
  %77 = getelementptr inbounds %struct.buffer, %struct.buffer* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %103

80:                                               ; preds = %67
  %81 = load %struct.buffer*, %struct.buffer** %5, align 8
  %82 = getelementptr inbounds %struct.buffer, %struct.buffer* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, -1
  %85 = zext i1 %84 to i32
  %86 = call i32 @BUG_ON(i32 %85)
  %87 = load %struct.audio*, %struct.audio** %3, align 8
  %88 = getelementptr inbounds %struct.audio, %struct.audio* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dprintk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load %struct.audio*, %struct.audio** %3, align 8
  %92 = load %struct.audio*, %struct.audio** %3, align 8
  %93 = getelementptr inbounds %struct.audio, %struct.audio* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.buffer*, %struct.buffer** %5, align 8
  %96 = getelementptr inbounds %struct.buffer, %struct.buffer* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @audplay_dsp_send_data_avail(%struct.audio* %91, i32 %94, i32 %97)
  %99 = load %struct.buffer*, %struct.buffer** %5, align 8
  %100 = getelementptr inbounds %struct.buffer, %struct.buffer* %99, i32 0, i32 0
  store i32 -1, i32* %100, align 4
  %101 = load %struct.audio*, %struct.audio** %3, align 8
  %102 = getelementptr inbounds %struct.audio, %struct.audio* %101, i32 0, i32 0
  store i32 0, i32* %102, align 8
  br label %103

103:                                              ; preds = %80, %67
  br label %104

104:                                              ; preds = %103, %62
  br label %105

105:                                              ; preds = %104, %21, %15
  %106 = load %struct.audio*, %struct.audio** %3, align 8
  %107 = getelementptr inbounds %struct.audio, %struct.audio* %106, i32 0, i32 2
  %108 = load i64, i64* %6, align 8
  %109 = call i32 @spin_unlock_irqrestore(i32* %107, i64 %108)
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
