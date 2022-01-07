; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_in.c_audio_in_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_in.c_audio_in_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_in = type { i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.inode = type { i32 }
%struct.file = type { %struct.audio_in* }

@the_audio_in = common dso_local global %struct.audio_in zeroinitializer, align 8
@EBUSY = common dso_local global i32 0, align 4
@RPC_AUD_DEF_SAMPLE_RATE_11025 = common dso_local global i32 0, align 4
@AUDREC_CMD_SAMP_RATE_INDX_11025 = common dso_local global i32 0, align 4
@AUDREC_CMD_STEREO_MODE_MONO = common dso_local global i32 0, align 4
@MONO_DATA_SIZE = common dso_local global i32 0, align 4
@AUDREC_CMD_TYPE_0_INDEX_WAV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"AUDPREPROCTASK\00", align 1
@audpre_adsp_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"AUDRECTASK\00", align 1
@audrec_adsp_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @audio_in_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audio_in_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.audio_in*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  store %struct.audio_in* @the_audio_in, %struct.audio_in** %5, align 8
  %7 = load %struct.audio_in*, %struct.audio_in** %5, align 8
  %8 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.audio_in*, %struct.audio_in** %5, align 8
  %11 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  br label %67

17:                                               ; preds = %2
  %18 = load i32, i32* @RPC_AUD_DEF_SAMPLE_RATE_11025, align 4
  %19 = load %struct.audio_in*, %struct.audio_in** %5, align 8
  %20 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %19, i32 0, i32 11
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @AUDREC_CMD_SAMP_RATE_INDX_11025, align 4
  %22 = load %struct.audio_in*, %struct.audio_in** %5, align 8
  %23 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %22, i32 0, i32 10
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @AUDREC_CMD_STEREO_MODE_MONO, align 4
  %25 = load %struct.audio_in*, %struct.audio_in** %5, align 8
  %26 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %25, i32 0, i32 9
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @MONO_DATA_SIZE, align 4
  %28 = load %struct.audio_in*, %struct.audio_in** %5, align 8
  %29 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %28, i32 0, i32 8
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @AUDREC_CMD_TYPE_0_INDEX_WAV, align 4
  %31 = load %struct.audio_in*, %struct.audio_in** %5, align 8
  %32 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 4
  %33 = load %struct.audio_in*, %struct.audio_in** %5, align 8
  %34 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %33, i32 0, i32 6
  %35 = call i32 @audmgr_open(i32* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %17
  br label %67

39:                                               ; preds = %17
  %40 = load %struct.audio_in*, %struct.audio_in** %5, align 8
  %41 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %40, i32 0, i32 5
  %42 = load %struct.audio_in*, %struct.audio_in** %5, align 8
  %43 = call i32 @msm_adsp_get(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %41, i32* @audpre_adsp_ops, %struct.audio_in* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %67

47:                                               ; preds = %39
  %48 = load %struct.audio_in*, %struct.audio_in** %5, align 8
  %49 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %48, i32 0, i32 4
  %50 = load %struct.audio_in*, %struct.audio_in** %5, align 8
  %51 = call i32 @msm_adsp_get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %49, i32* @audrec_adsp_ops, %struct.audio_in* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %67

55:                                               ; preds = %47
  %56 = load %struct.audio_in*, %struct.audio_in** %5, align 8
  %57 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %56, i32 0, i32 3
  store i64 0, i64* %57, align 8
  %58 = load %struct.audio_in*, %struct.audio_in** %5, align 8
  %59 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %58, i32 0, i32 2
  store i64 0, i64* %59, align 8
  %60 = load %struct.audio_in*, %struct.audio_in** %5, align 8
  %61 = call i32 @audio_flush(%struct.audio_in* %60)
  %62 = load %struct.audio_in*, %struct.audio_in** %5, align 8
  %63 = load %struct.file*, %struct.file** %4, align 8
  %64 = getelementptr inbounds %struct.file, %struct.file* %63, i32 0, i32 0
  store %struct.audio_in* %62, %struct.audio_in** %64, align 8
  %65 = load %struct.audio_in*, %struct.audio_in** %5, align 8
  %66 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %55, %54, %46, %38, %14
  %68 = load %struct.audio_in*, %struct.audio_in** %5, align 8
  %69 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %68, i32 0, i32 1
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @audmgr_open(i32*) #1

declare dso_local i32 @msm_adsp_get(i8*, i32*, i32*, %struct.audio_in*) #1

declare dso_local i32 @audio_flush(%struct.audio_in*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
