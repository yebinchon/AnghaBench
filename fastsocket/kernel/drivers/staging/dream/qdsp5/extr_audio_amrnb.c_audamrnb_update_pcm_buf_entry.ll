; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_amrnb.c_audamrnb_update_pcm_buf_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_amrnb.c_audamrnb_update_pcm_buf_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio = type { i64, i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"audamrnb_update_pcm_buf_entry: in[%d] ready\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"audamrnb_update_pcm_buf_entry: expected=%x ret=%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"audamrnb_update_pcm_buf_entry: read cannot keep up\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audio*, i32*)* @audamrnb_update_pcm_buf_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audamrnb_update_pcm_buf_entry(%struct.audio* %0, i32* %1) #0 {
  %3 = alloca %struct.audio*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.audio* %0, %struct.audio** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.audio*, %struct.audio** %3, align 8
  %8 = getelementptr inbounds %struct.audio, %struct.audio* %7, i32 0, i32 4
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %86, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %89

17:                                               ; preds = %11
  %18 = load %struct.audio*, %struct.audio** %3, align 8
  %19 = getelementptr inbounds %struct.audio, %struct.audio* %18, i32 0, i32 5
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load %struct.audio*, %struct.audio** %3, align 8
  %22 = getelementptr inbounds %struct.audio, %struct.audio* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = mul nsw i32 %28, 2
  %30 = add nsw i32 2, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %26, %33
  br i1 %34, label %35, label %67

35:                                               ; preds = %17
  %36 = load %struct.audio*, %struct.audio** %3, align 8
  %37 = getelementptr inbounds %struct.audio, %struct.audio* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = mul nsw i32 %41, 2
  %43 = add nsw i32 3, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.audio*, %struct.audio** %3, align 8
  %48 = getelementptr inbounds %struct.audio, %struct.audio* %47, i32 0, i32 5
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load %struct.audio*, %struct.audio** %3, align 8
  %51 = getelementptr inbounds %struct.audio, %struct.audio* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i32 %46, i32* %54, align 4
  %55 = load %struct.audio*, %struct.audio** %3, align 8
  %56 = getelementptr inbounds %struct.audio, %struct.audio* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = load %struct.audio*, %struct.audio** %3, align 8
  %60 = getelementptr inbounds %struct.audio, %struct.audio* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %35
  %64 = load %struct.audio*, %struct.audio** %3, align 8
  %65 = getelementptr inbounds %struct.audio, %struct.audio* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %63, %35
  br label %85

67:                                               ; preds = %17
  %68 = load %struct.audio*, %struct.audio** %3, align 8
  %69 = getelementptr inbounds %struct.audio, %struct.audio* %68, i32 0, i32 5
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load %struct.audio*, %struct.audio** %3, align 8
  %72 = getelementptr inbounds %struct.audio, %struct.audio* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* %5, align 4
  %79 = mul nsw i32 %78, 2
  %80 = add nsw i32 1, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %77, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %83)
  br label %89

85:                                               ; preds = %66
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %11

89:                                               ; preds = %67, %11
  %90 = load %struct.audio*, %struct.audio** %3, align 8
  %91 = getelementptr inbounds %struct.audio, %struct.audio* %90, i32 0, i32 5
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load %struct.audio*, %struct.audio** %3, align 8
  %94 = getelementptr inbounds %struct.audio, %struct.audio* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %89
  %101 = load %struct.audio*, %struct.audio** %3, align 8
  %102 = call i32 @audamrnb_buffer_refresh(%struct.audio* %101)
  br label %107

103:                                              ; preds = %89
  %104 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %105 = load %struct.audio*, %struct.audio** %3, align 8
  %106 = getelementptr inbounds %struct.audio, %struct.audio* %105, i32 0, i32 2
  store i32 1, i32* %106, align 8
  br label %107

107:                                              ; preds = %103, %100
  %108 = load %struct.audio*, %struct.audio** %3, align 8
  %109 = getelementptr inbounds %struct.audio, %struct.audio* %108, i32 0, i32 4
  %110 = load i64, i64* %6, align 8
  %111 = call i32 @spin_unlock_irqrestore(i32* %109, i64 %110)
  %112 = load %struct.audio*, %struct.audio** %3, align 8
  %113 = getelementptr inbounds %struct.audio, %struct.audio* %112, i32 0, i32 3
  %114 = call i32 @wake_up(i32* %113)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @audamrnb_buffer_refresh(%struct.audio*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
