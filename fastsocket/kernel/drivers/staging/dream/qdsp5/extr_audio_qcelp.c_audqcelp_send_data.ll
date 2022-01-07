; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_qcelp.c_audqcelp_send_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_qcelp.c_audqcelp_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio = type { i32, i32, i32, %struct.buffer*, i32, i32 }
%struct.buffer = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"frame %d free\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"frame %d busy\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audio*, i32)* @audqcelp_send_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audqcelp_send_data(%struct.audio* %0, i32 %1) #0 {
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
  br label %92

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %49

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
  br i1 %33, label %34, label %48

34:                                               ; preds = %19
  %35 = load %struct.audio*, %struct.audio** %3, align 8
  %36 = getelementptr inbounds %struct.audio, %struct.audio* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dprintk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.buffer*, %struct.buffer** %5, align 8
  %40 = getelementptr inbounds %struct.buffer, %struct.buffer* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  %41 = load %struct.audio*, %struct.audio** %3, align 8
  %42 = getelementptr inbounds %struct.audio, %struct.audio* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = xor i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.audio*, %struct.audio** %3, align 8
  %46 = getelementptr inbounds %struct.audio, %struct.audio* %45, i32 0, i32 4
  %47 = call i32 @wake_up(i32* %46)
  br label %48

48:                                               ; preds = %34, %19
  br label %49

49:                                               ; preds = %48, %16
  %50 = load %struct.audio*, %struct.audio** %3, align 8
  %51 = getelementptr inbounds %struct.audio, %struct.audio* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %91

54:                                               ; preds = %49
  %55 = load %struct.audio*, %struct.audio** %3, align 8
  %56 = getelementptr inbounds %struct.audio, %struct.audio* %55, i32 0, i32 3
  %57 = load %struct.buffer*, %struct.buffer** %56, align 8
  %58 = load %struct.audio*, %struct.audio** %3, align 8
  %59 = getelementptr inbounds %struct.audio, %struct.audio* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.buffer, %struct.buffer* %57, i64 %61
  store %struct.buffer* %62, %struct.buffer** %5, align 8
  %63 = load %struct.buffer*, %struct.buffer** %5, align 8
  %64 = getelementptr inbounds %struct.buffer, %struct.buffer* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %54
  %68 = load %struct.buffer*, %struct.buffer** %5, align 8
  %69 = getelementptr inbounds %struct.buffer, %struct.buffer* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, -1
  %72 = zext i1 %71 to i32
  %73 = call i32 @BUG_ON(i32 %72)
  %74 = load %struct.audio*, %struct.audio** %3, align 8
  %75 = getelementptr inbounds %struct.audio, %struct.audio* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dprintk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load %struct.audio*, %struct.audio** %3, align 8
  %79 = load %struct.audio*, %struct.audio** %3, align 8
  %80 = getelementptr inbounds %struct.audio, %struct.audio* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.buffer*, %struct.buffer** %5, align 8
  %83 = getelementptr inbounds %struct.buffer, %struct.buffer* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @audplay_dsp_send_data_avail(%struct.audio* %78, i32 %81, i32 %84)
  %86 = load %struct.buffer*, %struct.buffer** %5, align 8
  %87 = getelementptr inbounds %struct.buffer, %struct.buffer* %86, i32 0, i32 0
  store i32 -1, i32* %87, align 4
  %88 = load %struct.audio*, %struct.audio** %3, align 8
  %89 = getelementptr inbounds %struct.audio, %struct.audio* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  br label %90

90:                                               ; preds = %67, %54
  br label %91

91:                                               ; preds = %90, %49
  br label %92

92:                                               ; preds = %91, %15
  %93 = load %struct.audio*, %struct.audio** %3, align 8
  %94 = getelementptr inbounds %struct.audio, %struct.audio* %93, i32 0, i32 2
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
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
