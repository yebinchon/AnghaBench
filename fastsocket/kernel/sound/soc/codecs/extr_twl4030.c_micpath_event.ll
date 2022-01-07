; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_twl4030.c_micpath_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_twl4030.c_micpath_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.snd_kcontrol = type { i32 }
%struct.soc_enum = type { i64 }

@TWL4030_REG_ADCMICSEL = common dso_local global i32 0, align 4
@TWL4030_REG_MICBIAS_CTL = common dso_local global i32 0, align 4
@TWL4030_TX2IN_SEL = common dso_local global i8 0, align 1
@TWL4030_MICBIAS2_CTL = common dso_local global i8 0, align 1
@TWL4030_TX1IN_SEL = common dso_local global i8 0, align 1
@TWL4030_MICBIAS1_CTL = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @micpath_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @micpath_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.soc_enum*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.soc_enum*
  store %struct.soc_enum* %15, %struct.soc_enum** %7, align 8
  %16 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @TWL4030_REG_ADCMICSEL, align 4
  %20 = call zeroext i8 @twl4030_read_reg_cache(i32 %18, i32 %19)
  store i8 %20, i8* %8, align 1
  %21 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %22 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @TWL4030_REG_MICBIAS_CTL, align 4
  %25 = call zeroext i8 @twl4030_read_reg_cache(i32 %23, i32 %24)
  store i8 %25, i8* %9, align 1
  %26 = load %struct.soc_enum*, %struct.soc_enum** %7, align 8
  %27 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %3
  %31 = load i8, i8* %8, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* @TWL4030_TX2IN_SEL, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load i8, i8* @TWL4030_MICBIAS2_CTL, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* %9, align 1
  %41 = zext i8 %40 to i32
  %42 = or i32 %41, %39
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %9, align 1
  br label %52

44:                                               ; preds = %30
  %45 = load i8, i8* @TWL4030_MICBIAS2_CTL, align 1
  %46 = zext i8 %45 to i32
  %47 = xor i32 %46, -1
  %48 = load i8, i8* %9, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %49, %47
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %9, align 1
  br label %52

52:                                               ; preds = %44, %37
  br label %76

53:                                               ; preds = %3
  %54 = load i8, i8* %8, align 1
  %55 = zext i8 %54 to i32
  %56 = load i8, i8* @TWL4030_TX1IN_SEL, align 1
  %57 = zext i8 %56 to i32
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load i8, i8* @TWL4030_MICBIAS1_CTL, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8, i8* %9, align 1
  %64 = zext i8 %63 to i32
  %65 = or i32 %64, %62
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %9, align 1
  br label %75

67:                                               ; preds = %53
  %68 = load i8, i8* @TWL4030_MICBIAS1_CTL, align 1
  %69 = zext i8 %68 to i32
  %70 = xor i32 %69, -1
  %71 = load i8, i8* %9, align 1
  %72 = zext i8 %71 to i32
  %73 = and i32 %72, %70
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %9, align 1
  br label %75

75:                                               ; preds = %67, %60
  br label %76

76:                                               ; preds = %75, %52
  %77 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %78 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @TWL4030_REG_MICBIAS_CTL, align 4
  %81 = load i8, i8* %9, align 1
  %82 = call i32 @twl4030_write(i32 %79, i32 %80, i8 zeroext %81)
  ret i32 0
}

declare dso_local zeroext i8 @twl4030_read_reg_cache(i32, i32) #1

declare dso_local i32 @twl4030_write(i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
