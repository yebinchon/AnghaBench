; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_set_adc_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_au1550_ac97.c_set_adc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1550_state = type { i32, i64, %struct.dmabuf, %struct.dmabuf }
%struct.dmabuf = type { i32, i32, i32 }

@AC97_EXTENDED_STATUS = common dso_local global i32 0, align 4
@AC97_EXTSTAT_VRA = common dso_local global i32 0, align 4
@AC97_PCM_LR_ADC_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"set_adc_rate: set to %d Hz\0A\00", align 1
@AC97_PCM_FRONT_DAC_RATE = common dso_local global i32 0, align 4
@AC97_PCM_SURR_DAC_RATE = common dso_local global i32 0, align 4
@AC97_PCM_LFE_DAC_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au1550_state*, i32)* @set_adc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_adc_rate(%struct.au1550_state* %0, i32 %1) #0 {
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
  br label %102

31:                                               ; preds = %2
  %32 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %33 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load %struct.au1550_state*, %struct.au1550_state** %3, align 8
  %35 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %38 = call i32 @rdcodec(i32 %36, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ugt i32 %39, 48000
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %44

42:                                               ; preds = %31
  %43 = load i32, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %41
  %45 = phi i32 [ 48000, %41 ], [ %43, %42 ]
  store i32 %45, i32* %4, align 4
  %46 = load %struct.au1550_state*, %struct.au1550_state** %3, align 8
  %47 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @AC97_EXTENDED_STATUS, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @AC97_EXTSTAT_VRA, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @wrcodec(i32 %48, i32 %49, i32 %52)
  %54 = load %struct.au1550_state*, %struct.au1550_state** %3, align 8
  %55 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @AC97_PCM_LR_ADC_RATE, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @wrcodec(i32 %56, i32 %57, i32 %58)
  %60 = load %struct.au1550_state*, %struct.au1550_state** %3, align 8
  %61 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @AC97_PCM_LR_ADC_RATE, align 4
  %64 = call i32 @rdcodec(i32 %62, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load %struct.au1550_state*, %struct.au1550_state** %3, align 8
  %68 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @AC97_PCM_FRONT_DAC_RATE, align 4
  %71 = call i32 @rdcodec(i32 %69, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %73 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp sgt i32 %74, 2
  br i1 %75, label %76, label %83

76:                                               ; preds = %44
  %77 = load %struct.au1550_state*, %struct.au1550_state** %3, align 8
  %78 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @AC97_PCM_SURR_DAC_RATE, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @wrcodec(i32 %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %76, %44
  %84 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %85 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = icmp sgt i32 %86, 4
  br i1 %87, label %88, label %95

88:                                               ; preds = %83
  %89 = load %struct.au1550_state*, %struct.au1550_state** %3, align 8
  %90 = getelementptr inbounds %struct.au1550_state, %struct.au1550_state* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @AC97_PCM_LFE_DAC_RATE, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @wrcodec(i32 %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %88, %83
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.dmabuf*, %struct.dmabuf** %5, align 8
  %98 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.dmabuf*, %struct.dmabuf** %6, align 8
  %101 = getelementptr inbounds %struct.dmabuf, %struct.dmabuf* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %95, %18
  ret void
}

declare dso_local i32 @rdcodec(i32, i32) #1

declare dso_local i32 @wrcodec(i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
