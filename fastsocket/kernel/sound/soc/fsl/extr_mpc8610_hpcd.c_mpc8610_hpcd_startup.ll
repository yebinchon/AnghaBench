; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/fsl/extr_mpc8610_hpcd.c_mpc8610_hpcd_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/fsl/extr_mpc8610_hpcd.c_mpc8610_hpcd_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_10__*, %struct.snd_soc_pcm_runtime* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.mpc8610_hpcd_data* }
%struct.mpc8610_hpcd_data = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.snd_soc_dai*, %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"could not set CPU driver audio format\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"could not set codec driver audio format\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"could not set CPU driver clock parameters\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"could not set codec driver clock params\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @mpc8610_hpcd_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc8610_hpcd_startup(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.mpc8610_hpcd_data*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %10, align 8
  store %struct.snd_soc_pcm_runtime* %11, %struct.snd_soc_pcm_runtime** %4, align 8
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %13 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %15, align 8
  store %struct.snd_soc_dai* %16, %struct.snd_soc_dai** %5, align 8
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %18 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %20, align 8
  store %struct.snd_soc_dai* %21, %struct.snd_soc_dai** %6, align 8
  %22 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %4, align 8
  %23 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %27, align 8
  store %struct.mpc8610_hpcd_data* %28, %struct.mpc8610_hpcd_data** %7, align 8
  store i32 0, i32* %8, align 4
  %29 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %30 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %7, align 8
  %31 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @snd_soc_dai_set_fmt(%struct.snd_soc_dai* %29, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %1
  %37 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %2, align 4
  br label %107

46:                                               ; preds = %1
  %47 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %48 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %7, align 8
  %49 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @snd_soc_dai_set_fmt(%struct.snd_soc_dai* %47, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %46
  %55 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %55, i32 0, i32 0
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %2, align 4
  br label %107

64:                                               ; preds = %46
  %65 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %66 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %7, align 8
  %67 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %7, align 8
  %70 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %65, i32 0, i32 %68, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %64
  %76 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %77 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %76, i32 0, i32 0
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %2, align 4
  br label %107

85:                                               ; preds = %64
  %86 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %87 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %7, align 8
  %88 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.mpc8610_hpcd_data*, %struct.mpc8610_hpcd_data** %7, align 8
  %91 = getelementptr inbounds %struct.mpc8610_hpcd_data, %struct.mpc8610_hpcd_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %86, i32 0, i32 %89, i32 %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %85
  %97 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %98 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %97, i32 0, i32 0
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @dev_err(i32 %103, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %2, align 4
  br label %107

106:                                              ; preds = %85
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %106, %96, %75, %54, %36
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @snd_soc_dai_set_fmt(%struct.snd_soc_dai*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
