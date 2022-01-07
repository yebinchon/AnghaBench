; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_aac.c_audio_update_pcm_buf_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_aac.c_audio_update_pcm_buf_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio = type { i64, i64, i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"audio_update_pcm_buf_entry: in[%d] ready\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"audio_update_pcm_buf_entry: expected=%x ret=%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"audio_update_pcm_buf_entry: read cannot keep up\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audio*, i32*)* @audio_update_pcm_buf_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audio_update_pcm_buf_entry(%struct.audio* %0, i32* %1) #0 {
  %3 = alloca %struct.audio*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.audio* %0, %struct.audio** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.audio*, %struct.audio** %3, align 8
  %8 = getelementptr inbounds %struct.audio, %struct.audio* %7, i32 0, i32 6
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %121

12:                                               ; preds = %2
  %13 = load %struct.audio*, %struct.audio** %3, align 8
  %14 = getelementptr inbounds %struct.audio, %struct.audio* %13, i32 0, i32 3
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %92, %12
  %18 = load i32, i32* %5, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %95

23:                                               ; preds = %17
  %24 = load %struct.audio*, %struct.audio** %3, align 8
  %25 = getelementptr inbounds %struct.audio, %struct.audio* %24, i32 0, i32 5
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load %struct.audio*, %struct.audio** %3, align 8
  %28 = getelementptr inbounds %struct.audio, %struct.audio* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = mul nsw i32 %34, 2
  %36 = add nsw i32 2, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %32, %39
  br i1 %40, label %41, label %73

41:                                               ; preds = %23
  %42 = load %struct.audio*, %struct.audio** %3, align 8
  %43 = getelementptr inbounds %struct.audio, %struct.audio* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %44)
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = mul nsw i32 %47, 2
  %49 = add nsw i32 3, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.audio*, %struct.audio** %3, align 8
  %54 = getelementptr inbounds %struct.audio, %struct.audio* %53, i32 0, i32 5
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load %struct.audio*, %struct.audio** %3, align 8
  %57 = getelementptr inbounds %struct.audio, %struct.audio* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i32 %52, i32* %60, align 4
  %61 = load %struct.audio*, %struct.audio** %3, align 8
  %62 = getelementptr inbounds %struct.audio, %struct.audio* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %62, align 8
  %65 = load %struct.audio*, %struct.audio** %3, align 8
  %66 = getelementptr inbounds %struct.audio, %struct.audio* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %64, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %41
  %70 = load %struct.audio*, %struct.audio** %3, align 8
  %71 = getelementptr inbounds %struct.audio, %struct.audio* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  br label %72

72:                                               ; preds = %69, %41
  br label %91

73:                                               ; preds = %23
  %74 = load %struct.audio*, %struct.audio** %3, align 8
  %75 = getelementptr inbounds %struct.audio, %struct.audio* %74, i32 0, i32 5
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load %struct.audio*, %struct.audio** %3, align 8
  %78 = getelementptr inbounds %struct.audio, %struct.audio* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* %5, align 4
  %85 = mul nsw i32 %84, 2
  %86 = add nsw i32 1, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %83, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %89)
  br label %95

91:                                               ; preds = %72
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %17

95:                                               ; preds = %73, %17
  %96 = load %struct.audio*, %struct.audio** %3, align 8
  %97 = getelementptr inbounds %struct.audio, %struct.audio* %96, i32 0, i32 5
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load %struct.audio*, %struct.audio** %3, align 8
  %100 = getelementptr inbounds %struct.audio, %struct.audio* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %95
  %107 = load %struct.audio*, %struct.audio** %3, align 8
  %108 = call i32 @audplay_buffer_refresh(%struct.audio* %107)
  br label %113

109:                                              ; preds = %95
  %110 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %111 = load %struct.audio*, %struct.audio** %3, align 8
  %112 = getelementptr inbounds %struct.audio, %struct.audio* %111, i32 0, i32 2
  store i32 1, i32* %112, align 8
  br label %113

113:                                              ; preds = %109, %106
  %114 = load %struct.audio*, %struct.audio** %3, align 8
  %115 = getelementptr inbounds %struct.audio, %struct.audio* %114, i32 0, i32 4
  %116 = call i32 @wake_up(i32* %115)
  %117 = load %struct.audio*, %struct.audio** %3, align 8
  %118 = getelementptr inbounds %struct.audio, %struct.audio* %117, i32 0, i32 3
  %119 = load i64, i64* %6, align 8
  %120 = call i32 @spin_unlock_irqrestore(i32* %118, i64 %119)
  br label %121

121:                                              ; preds = %113, %11
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @audplay_buffer_refresh(%struct.audio*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
