; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_ens1370.c_snd_es1371_adc_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_ens1370.c_snd_es1371_adc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ensoniq = type { i32 }

@ES_SMPREG_ADC = common dso_local global i64 0, align 8
@ES_SMPREG_TRUNC_N = common dso_local global i64 0, align 8
@ES_SMPREG_INT_REGS = common dso_local global i64 0, align 8
@ES_SMPREG_VFREQ_FRAC = common dso_local global i64 0, align 8
@ES_SMPREG_VOL_ADC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ensoniq*, i32)* @snd_es1371_adc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_es1371_adc_rate(%struct.ensoniq* %0, i32 %1) #0 {
  %3 = alloca %struct.ensoniq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ensoniq* %0, %struct.ensoniq** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %10 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i32, i32* %4, align 4
  %13 = udiv i32 %12, 3000
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = shl i32 1, %14
  %16 = and i32 %15, 43520
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = add i32 %19, -1
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %18, %2
  %22 = load i32, i32* %5, align 4
  %23 = mul i32 21, %22
  %24 = sub i32 %23, 1
  %25 = or i32 %24, 1
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %4, align 4
  %27 = zext i32 %26 to i64
  %28 = udiv i64 1572864000, %27
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = mul i64 %28, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %5, align 4
  %35 = udiv i32 %33, %34
  %36 = zext i32 %35 to i64
  %37 = udiv i64 1572864000, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp uge i32 %39, 24000
  br i1 %40, label %41, label %58

41:                                               ; preds = %21
  %42 = load i32, i32* %6, align 4
  %43 = icmp ugt i32 %42, 239
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 239, i32* %6, align 4
  br label %45

45:                                               ; preds = %44, %41
  %46 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %47 = load i64, i64* @ES_SMPREG_ADC, align 8
  %48 = load i64, i64* @ES_SMPREG_TRUNC_N, align 8
  %49 = add nsw i64 %47, %48
  %50 = load i32, i32* %6, align 4
  %51 = sub i32 239, %50
  %52 = lshr i32 %51, 1
  %53 = shl i32 %52, 9
  %54 = load i32, i32* %5, align 4
  %55 = shl i32 %54, 4
  %56 = or i32 %53, %55
  %57 = call i32 @snd_es1371_src_write(%struct.ensoniq* %46, i64 %49, i32 %56)
  br label %76

58:                                               ; preds = %21
  %59 = load i32, i32* %6, align 4
  %60 = icmp ugt i32 %59, 119
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 119, i32* %6, align 4
  br label %62

62:                                               ; preds = %61, %58
  %63 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %64 = load i64, i64* @ES_SMPREG_ADC, align 8
  %65 = load i64, i64* @ES_SMPREG_TRUNC_N, align 8
  %66 = add nsw i64 %64, %65
  %67 = load i32, i32* %6, align 4
  %68 = sub i32 119, %67
  %69 = lshr i32 %68, 1
  %70 = shl i32 %69, 9
  %71 = or i32 32768, %70
  %72 = load i32, i32* %5, align 4
  %73 = shl i32 %72, 4
  %74 = or i32 %71, %73
  %75 = call i32 @snd_es1371_src_write(%struct.ensoniq* %63, i64 %66, i32 %74)
  br label %76

76:                                               ; preds = %62, %45
  %77 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %78 = load i64, i64* @ES_SMPREG_ADC, align 8
  %79 = load i64, i64* @ES_SMPREG_INT_REGS, align 8
  %80 = add nsw i64 %78, %79
  %81 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %82 = load i64, i64* @ES_SMPREG_ADC, align 8
  %83 = load i64, i64* @ES_SMPREG_INT_REGS, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @snd_es1371_src_read(%struct.ensoniq* %81, i64 %84)
  %86 = and i32 %85, 255
  %87 = load i32, i32* %7, align 4
  %88 = lshr i32 %87, 5
  %89 = and i32 %88, 64512
  %90 = or i32 %86, %89
  %91 = call i32 @snd_es1371_src_write(%struct.ensoniq* %77, i64 %80, i32 %90)
  %92 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %93 = load i64, i64* @ES_SMPREG_ADC, align 8
  %94 = load i64, i64* @ES_SMPREG_VFREQ_FRAC, align 8
  %95 = add nsw i64 %93, %94
  %96 = load i32, i32* %7, align 4
  %97 = and i32 %96, 32767
  %98 = call i32 @snd_es1371_src_write(%struct.ensoniq* %92, i64 %95, i32 %97)
  %99 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %100 = load i64, i64* @ES_SMPREG_VOL_ADC, align 8
  %101 = load i32, i32* %5, align 4
  %102 = shl i32 %101, 8
  %103 = call i32 @snd_es1371_src_write(%struct.ensoniq* %99, i64 %100, i32 %102)
  %104 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %105 = load i64, i64* @ES_SMPREG_VOL_ADC, align 8
  %106 = add nsw i64 %105, 1
  %107 = load i32, i32* %5, align 4
  %108 = shl i32 %107, 8
  %109 = call i32 @snd_es1371_src_write(%struct.ensoniq* %104, i64 %106, i32 %108)
  %110 = load %struct.ensoniq*, %struct.ensoniq** %3, align 8
  %111 = getelementptr inbounds %struct.ensoniq, %struct.ensoniq* %110, i32 0, i32 0
  %112 = call i32 @mutex_unlock(i32* %111)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_es1371_src_write(%struct.ensoniq*, i64, i32) #1

declare dso_local i32 @snd_es1371_src_read(%struct.ensoniq*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
