; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_in.c_audio_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_in.c_audio_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_in = type { %struct.TYPE_2__*, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@FRAME_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audio_in*)* @audio_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audio_flush(%struct.audio_in* %0) #0 {
  %2 = alloca %struct.audio_in*, align 8
  %3 = alloca i32, align 4
  store %struct.audio_in* %0, %struct.audio_in** %2, align 8
  %4 = load %struct.audio_in*, %struct.audio_in** %2, align 8
  %5 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %4, i32 0, i32 4
  store i64 0, i64* %5, align 8
  %6 = load %struct.audio_in*, %struct.audio_in** %2, align 8
  %7 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %6, i32 0, i32 3
  store i64 0, i64* %7, align 8
  %8 = load %struct.audio_in*, %struct.audio_in** %2, align 8
  %9 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load %struct.audio_in*, %struct.audio_in** %2, align 8
  %11 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %31, %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @FRAME_NUM, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = load %struct.audio_in*, %struct.audio_in** %2, align 8
  %18 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.audio_in*, %struct.audio_in** %2, align 8
  %25 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %16
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %12

34:                                               ; preds = %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
