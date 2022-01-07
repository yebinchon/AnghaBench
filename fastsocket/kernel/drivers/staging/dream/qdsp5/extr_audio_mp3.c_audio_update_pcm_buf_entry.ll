; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_mp3.c_audio_update_pcm_buf_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_mp3.c_audio_update_pcm_buf_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio = type { i32, i64, i64, i32, i32, %struct.TYPE_2__*, i64 }
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
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.audio*, %struct.audio** %3, align 8
  %13 = getelementptr inbounds %struct.audio, %struct.audio* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  br label %123

14:                                               ; preds = %2
  %15 = load %struct.audio*, %struct.audio** %3, align 8
  %16 = getelementptr inbounds %struct.audio, %struct.audio* %15, i32 0, i32 3
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %94, %14
  %20 = load i32, i32* %5, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %97

25:                                               ; preds = %19
  %26 = load %struct.audio*, %struct.audio** %3, align 8
  %27 = getelementptr inbounds %struct.audio, %struct.audio* %26, i32 0, i32 5
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load %struct.audio*, %struct.audio** %3, align 8
  %30 = getelementptr inbounds %struct.audio, %struct.audio* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = mul nsw i32 %36, 2
  %38 = add nsw i32 2, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %34, %41
  br i1 %42, label %43, label %75

43:                                               ; preds = %25
  %44 = load %struct.audio*, %struct.audio** %3, align 8
  %45 = getelementptr inbounds %struct.audio, %struct.audio* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %46)
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = mul nsw i32 %49, 2
  %51 = add nsw i32 3, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.audio*, %struct.audio** %3, align 8
  %56 = getelementptr inbounds %struct.audio, %struct.audio* %55, i32 0, i32 5
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load %struct.audio*, %struct.audio** %3, align 8
  %59 = getelementptr inbounds %struct.audio, %struct.audio* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i32 %54, i32* %62, align 4
  %63 = load %struct.audio*, %struct.audio** %3, align 8
  %64 = getelementptr inbounds %struct.audio, %struct.audio* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %64, align 8
  %67 = load %struct.audio*, %struct.audio** %3, align 8
  %68 = getelementptr inbounds %struct.audio, %struct.audio* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %43
  %72 = load %struct.audio*, %struct.audio** %3, align 8
  %73 = getelementptr inbounds %struct.audio, %struct.audio* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %71, %43
  br label %93

75:                                               ; preds = %25
  %76 = load %struct.audio*, %struct.audio** %3, align 8
  %77 = getelementptr inbounds %struct.audio, %struct.audio* %76, i32 0, i32 5
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load %struct.audio*, %struct.audio** %3, align 8
  %80 = getelementptr inbounds %struct.audio, %struct.audio* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = mul nsw i32 %86, 2
  %88 = add nsw i32 1, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %85, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %84, i32 %91)
  br label %97

93:                                               ; preds = %74
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %19

97:                                               ; preds = %75, %19
  %98 = load %struct.audio*, %struct.audio** %3, align 8
  %99 = getelementptr inbounds %struct.audio, %struct.audio* %98, i32 0, i32 5
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load %struct.audio*, %struct.audio** %3, align 8
  %102 = getelementptr inbounds %struct.audio, %struct.audio* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %97
  %109 = load %struct.audio*, %struct.audio** %3, align 8
  %110 = call i32 @audplay_buffer_refresh(%struct.audio* %109)
  br label %115

111:                                              ; preds = %97
  %112 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %113 = load %struct.audio*, %struct.audio** %3, align 8
  %114 = getelementptr inbounds %struct.audio, %struct.audio* %113, i32 0, i32 0
  store i32 1, i32* %114, align 8
  br label %115

115:                                              ; preds = %111, %108
  %116 = load %struct.audio*, %struct.audio** %3, align 8
  %117 = getelementptr inbounds %struct.audio, %struct.audio* %116, i32 0, i32 4
  %118 = call i32 @wake_up(i32* %117)
  %119 = load %struct.audio*, %struct.audio** %3, align 8
  %120 = getelementptr inbounds %struct.audio, %struct.audio* %119, i32 0, i32 3
  %121 = load i64, i64* %6, align 8
  %122 = call i32 @spin_unlock_irqrestore(i32* %120, i64 %121)
  br label %123

123:                                              ; preds = %115, %11
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pr_info(i8*, ...) #1

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
