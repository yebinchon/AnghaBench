; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_out.c_audio_dsp_set_adrc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audio_out.c_audio_dsp_set_adrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@AUDPP_CMD_CFG_OBJ_UPDATE = common dso_local global i32 0, align 4
@AUDPP_CMD_ADRC = common dso_local global i32 0, align 4
@AUDPP_CMD_ADRC_FLAG_ENA = common dso_local global i32 0, align 4
@AUDPP_CMD_ADRC_FLAG_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audio*)* @audio_dsp_set_adrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audio_dsp_set_adrc(%struct.audio* %0) #0 {
  %2 = alloca %struct.audio*, align 8
  %3 = alloca %struct.TYPE_8__, align 4
  store %struct.audio* %0, %struct.audio** %2, align 8
  %4 = call i32 @memset(%struct.TYPE_8__* %3, i32 0, i32 44)
  %5 = load i32, i32* @AUDPP_CMD_CFG_OBJ_UPDATE, align 4
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 9
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @AUDPP_CMD_ADRC, align 4
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 9
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.audio*, %struct.audio** %2, align 8
  %12 = getelementptr inbounds %struct.audio, %struct.audio* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %58

15:                                               ; preds = %1
  %16 = load i32, i32* @AUDPP_CMD_ADRC_FLAG_ENA, align 4
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load %struct.audio*, %struct.audio** %2, align 8
  %19 = getelementptr inbounds %struct.audio, %struct.audio* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 8
  store i32 %21, i32* %22, align 4
  %23 = load %struct.audio*, %struct.audio** %2, align 8
  %24 = getelementptr inbounds %struct.audio, %struct.audio* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 7
  store i32 %26, i32* %27, align 4
  %28 = load %struct.audio*, %struct.audio** %2, align 8
  %29 = getelementptr inbounds %struct.audio, %struct.audio* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 6
  store i32 %31, i32* %32, align 4
  %33 = load %struct.audio*, %struct.audio** %2, align 8
  %34 = getelementptr inbounds %struct.audio, %struct.audio* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 5
  store i32 %36, i32* %37, align 4
  %38 = load %struct.audio*, %struct.audio** %2, align 8
  %39 = getelementptr inbounds %struct.audio, %struct.audio* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 4
  store i32 %41, i32* %42, align 4
  %43 = load %struct.audio*, %struct.audio** %2, align 8
  %44 = getelementptr inbounds %struct.audio, %struct.audio* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 3
  store i32 %46, i32* %47, align 4
  %48 = load %struct.audio*, %struct.audio** %2, align 8
  %49 = getelementptr inbounds %struct.audio, %struct.audio* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 2
  store i32 %51, i32* %52, align 4
  %53 = load %struct.audio*, %struct.audio** %2, align 8
  %54 = getelementptr inbounds %struct.audio, %struct.audio* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  br label %61

58:                                               ; preds = %1
  %59 = load i32, i32* @AUDPP_CMD_ADRC_FLAG_DIS, align 4
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %15
  %62 = call i32 @audpp_send_queue3(%struct.TYPE_8__* %3, i32 44)
  ret i32 %62
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @audpp_send_queue3(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
