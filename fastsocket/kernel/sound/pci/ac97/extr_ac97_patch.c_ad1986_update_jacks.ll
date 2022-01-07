; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_ad1986_update_jacks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_patch.c_ad1986_update_jacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@AC97_AD1986_SODIS = common dso_local global i16 0, align 2
@AC97_AD1986_CLDIS = common dso_local global i16 0, align 2
@AC97_AD1986_LISEL_SURR = common dso_local global i16 0, align 2
@AC97_AD1986_LISEL_MIC = common dso_local global i16 0, align 2
@AC97_AD_MISC = common dso_local global i32 0, align 4
@AC97_AD1986_LISEL_MASK = common dso_local global i16 0, align 2
@AC97_AD1986_OMS_C = common dso_local global i16 0, align 2
@AC97_AD1986_OMS_L = common dso_local global i16 0, align 2
@AC97_AD1986_OMS_M = common dso_local global i16 0, align 2
@AC97_AD_SERIAL_CFG = common dso_local global i32 0, align 4
@AC97_AD1986_OMS_MASK = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*)* @ad1986_update_jacks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad1986_update_jacks(%struct.snd_ac97* %0) #0 {
  %2 = alloca %struct.snd_ac97*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store %struct.snd_ac97* %0, %struct.snd_ac97** %2, align 8
  store i16 0, i16* %3, align 2
  %5 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %6 = call i32 @is_surround_on(%struct.snd_ac97* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = load i16, i16* @AC97_AD1986_SODIS, align 2
  %10 = zext i16 %9 to i32
  %11 = load i16, i16* %3, align 2
  %12 = zext i16 %11 to i32
  %13 = or i32 %12, %10
  %14 = trunc i32 %13 to i16
  store i16 %14, i16* %3, align 2
  br label %15

15:                                               ; preds = %8, %1
  %16 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %17 = call i32 @is_clfe_on(%struct.snd_ac97* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = load i16, i16* @AC97_AD1986_CLDIS, align 2
  %21 = zext i16 %20 to i32
  %22 = load i16, i16* %3, align 2
  %23 = zext i16 %22 to i32
  %24 = or i32 %23, %21
  %25 = trunc i32 %24 to i16
  store i16 %25, i16* %3, align 2
  br label %26

26:                                               ; preds = %19, %15
  %27 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %28 = call i64 @is_shared_linein(%struct.snd_ac97* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i16, i16* @AC97_AD1986_LISEL_SURR, align 2
  %32 = zext i16 %31 to i32
  %33 = load i16, i16* %3, align 2
  %34 = zext i16 %33 to i32
  %35 = or i32 %34, %32
  %36 = trunc i32 %35 to i16
  store i16 %36, i16* %3, align 2
  br label %52

37:                                               ; preds = %26
  %38 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %39 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load i16, i16* @AC97_AD1986_LISEL_MIC, align 2
  %46 = zext i16 %45 to i32
  %47 = load i16, i16* %3, align 2
  %48 = zext i16 %47 to i32
  %49 = or i32 %48, %46
  %50 = trunc i32 %49 to i16
  store i16 %50, i16* %3, align 2
  br label %51

51:                                               ; preds = %44, %37
  br label %52

52:                                               ; preds = %51, %30
  %53 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %54 = load i32, i32* @AC97_AD_MISC, align 4
  %55 = load i16, i16* @AC97_AD1986_SODIS, align 2
  %56 = zext i16 %55 to i32
  %57 = load i16, i16* @AC97_AD1986_CLDIS, align 2
  %58 = zext i16 %57 to i32
  %59 = or i32 %56, %58
  %60 = load i16, i16* @AC97_AD1986_LISEL_MASK, align 2
  %61 = zext i16 %60 to i32
  %62 = or i32 %59, %61
  %63 = trunc i32 %62 to i16
  %64 = load i16, i16* %3, align 2
  %65 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %53, i32 %54, i16 zeroext %63, i16 zeroext %64)
  %66 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %67 = call i64 @is_shared_micin(%struct.snd_ac97* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %52
  %70 = load i16, i16* @AC97_AD1986_OMS_C, align 2
  store i16 %70, i16* %4, align 2
  br label %83

71:                                               ; preds = %52
  %72 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %73 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load i16, i16* @AC97_AD1986_OMS_L, align 2
  store i16 %79, i16* %4, align 2
  br label %82

80:                                               ; preds = %71
  %81 = load i16, i16* @AC97_AD1986_OMS_M, align 2
  store i16 %81, i16* %4, align 2
  br label %82

82:                                               ; preds = %80, %78
  br label %83

83:                                               ; preds = %82, %69
  %84 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %85 = load i32, i32* @AC97_AD_SERIAL_CFG, align 4
  %86 = load i16, i16* @AC97_AD1986_OMS_MASK, align 2
  %87 = load i16, i16* %4, align 2
  %88 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %84, i32 %85, i16 zeroext %86, i16 zeroext %87)
  ret void
}

declare dso_local i32 @is_surround_on(%struct.snd_ac97*) #1

declare dso_local i32 @is_clfe_on(%struct.snd_ac97*) #1

declare dso_local i64 @is_shared_linein(%struct.snd_ac97*) #1

declare dso_local i32 @snd_ac97_update_bits(%struct.snd_ac97*, i32, i16 zeroext, i16 zeroext) #1

declare dso_local i64 @is_shared_micin(%struct.snd_ac97*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
