; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_set_dac_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_set_dac_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1550_state = type { i32, i64, %struct.dmabuf, %struct.dmabuf }
%struct.dmabuf = type { i32, i32, i32 }

@AC97_EXTENDED_STATUS = common dso_local global i32 0, align 4
@AC97_EXTSTAT_VRA = common dso_local global i32 0, align 4
@AC97_PCM_FRONT_DAC_RATE = common dso_local global i32 0, align 4
@AC97_PCM_SURR_DAC_RATE = common dso_local global i32 0, align 4
@AC97_PCM_LFE_DAC_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"set_dac_rate: set to %d Hz\0A\00", align 1
@AC97_PCM_LR_ADC_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au1550_state*, i32)* @set_dac_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_dac_rate(%struct.au1550_state* %0, i32 %1) #0 {
  %3 = alloca %struct.au1550_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmabuf*, align 8
  %6 = alloca %struct.dmabuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.au1550_state* %0, %struct.au1550_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.au1550_state*, %struct.au1550_state** %3, align 8
  %11 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %10, i32 0, i32 3
  store %struct.dmabuf* %11, %struct.dmabuf** %5, align 8
  %12 = load %struct.au1550_state*, %struct.au1550_state** %3, align 8
  %13 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %12, i32 0, i32 2
  store %struct.dmabuf* %13, %struct.dmabuf** %6, align 8
  %14 = load %struct.au1550_state*, %struct.au1550_state** %3, align 8
  %15 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = udiv i32 96000, %19
  %21 = add i32 %20, 1
  %22 = lshr i32 %21, 1
  %23 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %24 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %26 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 48000, %27
  %29 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %30 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  br label %105

31:                                               ; preds = %2
  %32 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %33 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load %struct.au1550_state*, %struct.au1550_state** %3, align 8
  %35 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %38 = call i8* @rdcodec(i32 %36, i32 %37)
  %39 = ptrtoint i8* %38 to i32
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ugt i32 %40, 48000
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %45

43:                                               ; preds = %31
  %44 = load i32, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %42
  %46 = phi i32 [ 48000, %42 ], [ %44, %43 ]
  store i32 %46, i32* %4, align 4
  %47 = load %struct.au1550_state*, %struct.au1550_state** %3, align 8
  %48 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @AC97_EXTSTAT_VRA, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @wrcodec(i32 %49, i32 %50, i32 %53)
  %55 = load %struct.au1550_state*, %struct.au1550_state** %3, align 8
  %56 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @AC97_PCM_FRONT_DAC_RATE, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @wrcodec(i32 %57, i32 %58, i32 %59)
  %61 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %62 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %63, 2
  br i1 %64, label %65, label %72

65:                                               ; preds = %45
  %66 = load %struct.au1550_state*, %struct.au1550_state** %3, align 8
  %67 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @AC97_PCM_SURR_DAC_RATE, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @wrcodec(i32 %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %65, %45
  %73 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %74 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = icmp sgt i32 %75, 4
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load %struct.au1550_state*, %struct.au1550_state** %3, align 8
  %79 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @AC97_PCM_LFE_DAC_RATE, align 4
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @wrcodec(i32 %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %77, %72
  %85 = load %struct.au1550_state*, %struct.au1550_state** %3, align 8
  %86 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @AC97_PCM_FRONT_DAC_RATE, align 4
  %89 = call i8* @rdcodec(i32 %87, i32 %88)
  %90 = ptrtoint i8* %89 to i32
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %91)
  %93 = load %struct.au1550_state*, %struct.au1550_state** %3, align 8
  %94 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @AC97_PCM_LR_ADC_RATE, align 4
  %97 = call i8* @rdcodec(i32 %95, i32 %96)
  %98 = ptrtoint i8* %97 to i32
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %101 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %104 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %84, %18
  ret void
}

declare dso_local i8* @rdcodec(i32, i32) #1

declare dso_local i32 @wrcodec(i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
