; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_in.c_audrec_dsp_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_in.c_audrec_dsp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_in = type { i32 }

@AUDREC_MSG_CFG_DONE_TYPE_0_UPDATE = common dso_local global i32 0, align 4
@AUDREC_MSG_CFG_DONE_TYPE_0_ENA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"audpre: CFG ENABLED\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"audrec: CFG SLEEP\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"audrec: CMD_CFG_DONE %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"audrec: PARAM CFG DONE\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"audrec: ERROR %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"audrec: unknown event %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i64, void (i8*, i64)*)* @audrec_dsp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audrec_dsp_event(i8* %0, i32 %1, i64 %2, void (i8*, i64)* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca void (i8*, i64)*, align 8
  %9 = alloca %struct.audio_in*, align 8
  %10 = alloca [3 x i32], align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store void (i8*, i64)* %3, void (i8*, i64)** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.audio_in*
  store %struct.audio_in* %12, %struct.audio_in** %9, align 8
  %13 = load void (i8*, i64)*, void (i8*, i64)** %8, align 8
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %15 = bitcast i32* %14 to i8*
  call void %13(i8* %15, i64 12)
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %60 [
    i32 130, label %17
    i32 131, label %49
    i32 129, label %53
    i32 128, label %57
  ]

17:                                               ; preds = %4
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @AUDREC_MSG_CFG_DONE_TYPE_0_UPDATE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %17
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @AUDREC_MSG_CFG_DONE_TYPE_0_ENA, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.audio_in*, %struct.audio_in** %9, align 8
  %32 = call i32 @audio_dsp_set_agc(%struct.audio_in* %31)
  %33 = load %struct.audio_in*, %struct.audio_in** %9, align 8
  %34 = call i32 @audio_dsp_set_ns(%struct.audio_in* %33)
  %35 = load %struct.audio_in*, %struct.audio_in** %9, align 8
  %36 = call i32 @audio_dsp_set_tx_iir(%struct.audio_in* %35)
  %37 = load %struct.audio_in*, %struct.audio_in** %9, align 8
  %38 = call i32 @audio_in_encoder_config(%struct.audio_in* %37)
  br label %43

39:                                               ; preds = %23
  %40 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.audio_in*, %struct.audio_in** %9, align 8
  %42 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %39, %29
  br label %48

44:                                               ; preds = %17
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %44, %43
  br label %63

49:                                               ; preds = %4
  %50 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %51 = load %struct.audio_in*, %struct.audio_in** %9, align 8
  %52 = getelementptr inbounds %struct.audio_in, %struct.audio_in* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  br label %63

53:                                               ; preds = %4
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %55)
  br label %63

57:                                               ; preds = %4
  %58 = load %struct.audio_in*, %struct.audio_in** %9, align 8
  %59 = call i32 @audio_in_get_dsp_frames(%struct.audio_in* %58)
  br label %63

60:                                               ; preds = %4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %60, %57, %53, %49, %48
  ret void
}

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @audio_dsp_set_agc(%struct.audio_in*) #1

declare dso_local i32 @audio_dsp_set_ns(%struct.audio_in*) #1

declare dso_local i32 @audio_dsp_set_tx_iir(%struct.audio_in*) #1

declare dso_local i32 @audio_in_encoder_config(%struct.audio_in*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @audio_in_get_dsp_frames(%struct.audio_in*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
