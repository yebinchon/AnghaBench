; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_evrc.c_audevrc_dsp_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_evrc.c_audevrc_dsp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"decoder status: sleep \0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"decoder status: init \0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"decoder status: cfg \0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"decoder status: play \0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"unknown decoder status \0A\00", align 1
@AUDPP_MSG_ENA_ENA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"audevrc_dsp_event: CFG_MSG ENABLE\0A\00", align 1
@AUDPP_MSG_ENA_DIS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"audevrc_dsp_event: CFG_MSG DISABLE\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"audevrc_dsp_event: CFG_MSG %d?\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"audevrc_dsp_event: ROUTING_ACK\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"audevrc_dsp_event: UNKNOWN (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32*)* @audevrc_dsp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audevrc_dsp_event(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.audio*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.audio*
  store %struct.audio* %10, %struct.audio** %7, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %90 [
    i32 128, label %12
    i32 130, label %40
    i32 129, label %86
  ]

12:                                               ; preds = %3
  %13 = load i32*, i32** %6, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %37 [
    i32 131, label %17
    i32 133, label %19
    i32 134, label %23
    i32 132, label %25
  ]

17:                                               ; preds = %12
  %18 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %39

19:                                               ; preds = %12
  %20 = call i32 @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.audio*, %struct.audio** %7, align 8
  %22 = call i32 @audpp_cmd_cfg_routing_mode(%struct.audio* %21)
  br label %39

23:                                               ; preds = %12
  %24 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %39

25:                                               ; preds = %12
  %26 = call i32 @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %27 = load %struct.audio*, %struct.audio** %7, align 8
  %28 = getelementptr inbounds %struct.audio, %struct.audio* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load %struct.audio*, %struct.audio** %7, align 8
  %33 = call i32 @audevrc_config_hostpcm(%struct.audio* %32)
  %34 = load %struct.audio*, %struct.audio** %7, align 8
  %35 = call i32 @audevrc_buffer_refresh(%struct.audio* %34)
  br label %36

36:                                               ; preds = %31, %25
  br label %39

37:                                               ; preds = %12
  %38 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %36, %23, %19, %17
  br label %93

40:                                               ; preds = %3
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @AUDPP_MSG_ENA_ENA, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %40
  %47 = call i32 @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %48 = load %struct.audio*, %struct.audio** %7, align 8
  %49 = call i32 @auddec_dsp_config(%struct.audio* %48, i32 1)
  %50 = load %struct.audio*, %struct.audio** %7, align 8
  %51 = getelementptr inbounds %struct.audio, %struct.audio* %50, i32 0, i32 3
  store i32 0, i32* %51, align 4
  %52 = load %struct.audio*, %struct.audio** %7, align 8
  %53 = getelementptr inbounds %struct.audio, %struct.audio* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  %54 = load %struct.audio*, %struct.audio** %7, align 8
  %55 = getelementptr inbounds %struct.audio, %struct.audio* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.audio*, %struct.audio** %7, align 8
  %58 = getelementptr inbounds %struct.audio, %struct.audio* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @audpp_set_volume_and_pan(i32 %56, i32 %59, i32 0)
  %61 = load %struct.audio*, %struct.audio** %7, align 8
  %62 = getelementptr inbounds %struct.audio, %struct.audio* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @audpp_avsync(i32 %63, i32 22050)
  br label %85

65:                                               ; preds = %40
  %66 = load i32*, i32** %6, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @AUDPP_MSG_ENA_DIS, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = call i32 @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %73 = load %struct.audio*, %struct.audio** %7, align 8
  %74 = getelementptr inbounds %struct.audio, %struct.audio* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @audpp_avsync(i32 %75, i32 0)
  %77 = load %struct.audio*, %struct.audio** %7, align 8
  %78 = getelementptr inbounds %struct.audio, %struct.audio* %77, i32 0, i32 0
  store i32 0, i32* %78, align 4
  br label %84

79:                                               ; preds = %65
  %80 = load i32*, i32** %6, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %79, %71
  br label %85

85:                                               ; preds = %84, %46
  br label %93

86:                                               ; preds = %3
  %87 = call i32 @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %88 = load %struct.audio*, %struct.audio** %7, align 8
  %89 = call i32 @audpp_cmd_cfg_adec_params(%struct.audio* %88)
  br label %93

90:                                               ; preds = %3
  %91 = load i32, i32* %5, align 4
  %92 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %90, %86, %85, %39
  ret void
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @audpp_cmd_cfg_routing_mode(%struct.audio*) #1

declare dso_local i32 @audevrc_config_hostpcm(%struct.audio*) #1

declare dso_local i32 @audevrc_buffer_refresh(%struct.audio*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @auddec_dsp_config(%struct.audio*, i32) #1

declare dso_local i32 @audpp_set_volume_and_pan(i32, i32, i32) #1

declare dso_local i32 @audpp_avsync(i32, i32) #1

declare dso_local i32 @audpp_cmd_cfg_adec_params(%struct.audio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
