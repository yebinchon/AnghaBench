; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_in.c_audio_in_encoder_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_in.c_audio_in_encoder_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_in = type { i32, i64, i64, %struct.TYPE_5__*, i32, i64 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i64, i32, i32 }

@AUDREC_CMD_AREC0PARAM_CFG = common dso_local global i32 0, align 4
@FRAME_NUM = common dso_local global i32 0, align 4
@AUDREC_CMD_TYPE_0_INDEX_WAV = common dso_local global i64 0, align 8
@AUDREC_CMD_TYPE_0_INDEX_AAC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audio_in*)* @audio_in_encoder_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audio_in_encoder_config(%struct.audio_in* %0) #0 {
  %2 = alloca %struct.audio_in*, align 8
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.audio_in* %0, %struct.audio_in** %2, align 8
  %6 = load %struct.audio_in*, %struct.audio_in** %2, align 8
  %7 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %6, i32 0, i32 5
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %4, align 8
  %11 = call i32 @memset(%struct.TYPE_6__* %3, i32 0, i32 32)
  %12 = load i32, i32* @AUDREC_CMD_AREC0PARAM_CFG, align 4
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 6
  store i32 %12, i32* %13, align 4
  %14 = load %struct.audio_in*, %struct.audio_in** %2, align 8
  %15 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = ashr i32 %16, 16
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = load %struct.audio_in*, %struct.audio_in** %2, align 8
  %20 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @FRAME_NUM, align 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  store i32 %23, i32* %24, align 8
  %25 = load %struct.audio_in*, %struct.audio_in** %2, align 8
  %26 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 5
  store i32 %27, i32* %28, align 8
  %29 = load %struct.audio_in*, %struct.audio_in** %2, align 8
  %30 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 4
  store i64 %31, i64* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  store i32 7168, i32* %33, align 4
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %75, %1
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @FRAME_NUM, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %78

38:                                               ; preds = %34
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  %41 = load %struct.audio_in*, %struct.audio_in** %2, align 8
  %42 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %41, i32 0, i32 3
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32* %40, i32** %47, align 8
  %48 = load %struct.audio_in*, %struct.audio_in** %2, align 8
  %49 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AUDREC_CMD_TYPE_0_INDEX_WAV, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %38
  %54 = load %struct.audio_in*, %struct.audio_in** %2, align 8
  %55 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 2048, i32 1024
  %60 = add nsw i32 4, %59
  %61 = load i32*, i32** %4, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32* %63, i32** %4, align 8
  br label %74

64:                                               ; preds = %38
  %65 = load %struct.audio_in*, %struct.audio_in** %2, align 8
  %66 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @AUDREC_CMD_TYPE_0_INDEX_AAC, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32*, i32** %4, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 772
  store i32* %72, i32** %4, align 8
  br label %73

73:                                               ; preds = %70, %64
  br label %74

74:                                               ; preds = %73, %53
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %5, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %34

78:                                               ; preds = %34
  %79 = load %struct.audio_in*, %struct.audio_in** %2, align 8
  %80 = call i32 @audio_send_queue_rec(%struct.audio_in* %79, %struct.TYPE_6__* %3, i32 32)
  ret i32 %80
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @audio_send_queue_rec(%struct.audio_in*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
