; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ac97_codec.c_sigmatel_9708_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ac97_codec.c_sigmatel_9708_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ac97_codec = type { i32 (%struct.ac97_codec*, i32)*, i32 (%struct.ac97_codec*, i32, i32)* }

@AC97_SIGMATEL_BIAS2 = common dso_local global i32 0, align 4
@AC97_SIGMATEL_ANALOG = common dso_local global i32 0, align 4
@AC97_SIGMATEL_CIC1 = common dso_local global i32 0, align 4
@AC97_SIGMATEL_CIC2 = common dso_local global i32 0, align 4
@AC97_SIGMATEL_BIAS1 = common dso_local global i32 0, align 4
@AC97_SIGMATEL_DAC2INVERT = common dso_local global i32 0, align 4
@AC97_SIGMATEL_MULTICHN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ac97_codec*)* @sigmatel_9708_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sigmatel_9708_init(%struct.ac97_codec* %0) #0 {
  %2 = alloca %struct.ac97_codec*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ac97_codec* %0, %struct.ac97_codec** %2, align 8
  %5 = load %struct.ac97_codec*, %struct.ac97_codec** %2, align 8
  %6 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %5, i32 0, i32 0
  %7 = load i32 (%struct.ac97_codec*, i32)*, i32 (%struct.ac97_codec*, i32)** %6, align 8
  %8 = load %struct.ac97_codec*, %struct.ac97_codec** %2, align 8
  %9 = load i32, i32* @AC97_SIGMATEL_BIAS2, align 4
  %10 = call i32 %7(%struct.ac97_codec* %8, i32 %9)
  %11 = and i32 %10, 32768
  store i32 %11, i32* %3, align 4
  %12 = load %struct.ac97_codec*, %struct.ac97_codec** %2, align 8
  %13 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %12, i32 0, i32 0
  %14 = load i32 (%struct.ac97_codec*, i32)*, i32 (%struct.ac97_codec*, i32)** %13, align 8
  %15 = load %struct.ac97_codec*, %struct.ac97_codec** %2, align 8
  %16 = load i32, i32* @AC97_SIGMATEL_ANALOG, align 4
  %17 = call i32 %14(%struct.ac97_codec* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %20
  %24 = load %struct.ac97_codec*, %struct.ac97_codec** %2, align 8
  %25 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %24, i32 0, i32 1
  %26 = load i32 (%struct.ac97_codec*, i32, i32)*, i32 (%struct.ac97_codec*, i32, i32)** %25, align 8
  %27 = load %struct.ac97_codec*, %struct.ac97_codec** %2, align 8
  %28 = load i32, i32* @AC97_SIGMATEL_CIC1, align 4
  %29 = call i32 %26(%struct.ac97_codec* %27, i32 %28, i32 43962)
  %30 = load %struct.ac97_codec*, %struct.ac97_codec** %2, align 8
  %31 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %30, i32 0, i32 1
  %32 = load i32 (%struct.ac97_codec*, i32, i32)*, i32 (%struct.ac97_codec*, i32, i32)** %31, align 8
  %33 = load %struct.ac97_codec*, %struct.ac97_codec** %2, align 8
  %34 = load i32, i32* @AC97_SIGMATEL_CIC2, align 4
  %35 = call i32 %32(%struct.ac97_codec* %33, i32 %34, i32 4096)
  %36 = load %struct.ac97_codec*, %struct.ac97_codec** %2, align 8
  %37 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %36, i32 0, i32 1
  %38 = load i32 (%struct.ac97_codec*, i32, i32)*, i32 (%struct.ac97_codec*, i32, i32)** %37, align 8
  %39 = load %struct.ac97_codec*, %struct.ac97_codec** %2, align 8
  %40 = load i32, i32* @AC97_SIGMATEL_BIAS1, align 4
  %41 = call i32 %38(%struct.ac97_codec* %39, i32 %40, i32 43962)
  %42 = load %struct.ac97_codec*, %struct.ac97_codec** %2, align 8
  %43 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %42, i32 0, i32 1
  %44 = load i32 (%struct.ac97_codec*, i32, i32)*, i32 (%struct.ac97_codec*, i32, i32)** %43, align 8
  %45 = load %struct.ac97_codec*, %struct.ac97_codec** %2, align 8
  %46 = load i32, i32* @AC97_SIGMATEL_BIAS2, align 4
  %47 = call i32 %44(%struct.ac97_codec* %45, i32 %46, i32 7)
  br label %82

48:                                               ; preds = %20, %1
  %49 = load i32, i32* %3, align 4
  %50 = icmp eq i32 %49, 32768
  br i1 %50, label %51, label %73

51:                                               ; preds = %48
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %51
  %55 = load %struct.ac97_codec*, %struct.ac97_codec** %2, align 8
  %56 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %55, i32 0, i32 1
  %57 = load i32 (%struct.ac97_codec*, i32, i32)*, i32 (%struct.ac97_codec*, i32, i32)** %56, align 8
  %58 = load %struct.ac97_codec*, %struct.ac97_codec** %2, align 8
  %59 = load i32, i32* @AC97_SIGMATEL_CIC1, align 4
  %60 = call i32 %57(%struct.ac97_codec* %58, i32 %59, i32 43962)
  %61 = load %struct.ac97_codec*, %struct.ac97_codec** %2, align 8
  %62 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %61, i32 0, i32 1
  %63 = load i32 (%struct.ac97_codec*, i32, i32)*, i32 (%struct.ac97_codec*, i32, i32)** %62, align 8
  %64 = load %struct.ac97_codec*, %struct.ac97_codec** %2, align 8
  %65 = load i32, i32* @AC97_SIGMATEL_CIC2, align 4
  %66 = call i32 %63(%struct.ac97_codec* %64, i32 %65, i32 4097)
  %67 = load %struct.ac97_codec*, %struct.ac97_codec** %2, align 8
  %68 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %67, i32 0, i32 1
  %69 = load i32 (%struct.ac97_codec*, i32, i32)*, i32 (%struct.ac97_codec*, i32, i32)** %68, align 8
  %70 = load %struct.ac97_codec*, %struct.ac97_codec** %2, align 8
  %71 = load i32, i32* @AC97_SIGMATEL_DAC2INVERT, align 4
  %72 = call i32 %69(%struct.ac97_codec* %70, i32 %71, i32 8)
  br label %81

73:                                               ; preds = %51, %48
  %74 = load i32, i32* %3, align 4
  %75 = icmp eq i32 %74, 32768
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* %4, align 4
  %78 = icmp eq i32 %77, 128
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %80

80:                                               ; preds = %79, %76, %73
  br label %81

81:                                               ; preds = %80, %54
  br label %82

82:                                               ; preds = %81, %23
  %83 = load %struct.ac97_codec*, %struct.ac97_codec** %2, align 8
  %84 = getelementptr inbounds %struct.ac97_codec, %struct.ac97_codec* %83, i32 0, i32 1
  %85 = load i32 (%struct.ac97_codec*, i32, i32)*, i32 (%struct.ac97_codec*, i32, i32)** %84, align 8
  %86 = load %struct.ac97_codec*, %struct.ac97_codec** %2, align 8
  %87 = load i32, i32* @AC97_SIGMATEL_MULTICHN, align 4
  %88 = call i32 %85(%struct.ac97_codec* %86, i32 %87, i32 0)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
