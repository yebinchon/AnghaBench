; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_azx_via_get_position.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_azx_via_get_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { i64 }
%struct.azx_dev = type { i32, i32, i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SD_LPIB = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@VIA_IN_STREAM0_FIFO_SIZE_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.azx*, %struct.azx_dev*)* @azx_via_get_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @azx_via_get_position(%struct.azx* %0, %struct.azx_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.azx*, align 8
  %5 = alloca %struct.azx_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.azx* %0, %struct.azx** %4, align 8
  store %struct.azx_dev* %1, %struct.azx_dev** %5, align 8
  %13 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %14 = load i32, i32* @SD_LPIB, align 4
  %15 = call i32 @azx_sd_readl(%struct.azx_dev* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %17 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %16, i32 0, i32 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %116

25:                                               ; preds = %2
  %26 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %27 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le32_to_cpu(i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %32 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = urem i32 %34, %33
  store i32 %35, i32* %10, align 4
  %36 = load %struct.azx*, %struct.azx** %4, align 8
  %37 = getelementptr inbounds %struct.azx, %struct.azx* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @VIA_IN_STREAM0_FIFO_SIZE_OFFSET, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @readw(i64 %40)
  store i32 %41, i32* %12, align 4
  %42 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %43 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %25
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ule i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %116

51:                                               ; preds = %46
  %52 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %53 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %51, %25
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ule i32 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %60 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = add i32 %61, %62
  %64 = load i32, i32* %12, align 4
  %65 = sub i32 %63, %64
  store i32 %65, i32* %7, align 4
  br label %70

66:                                               ; preds = %54
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %12, align 4
  %69 = sub i32 %67, %68
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %66, %58
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %73 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = urem i32 %71, %74
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %78 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = urem i32 %76, %79
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp uge i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %70
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %9, align 4
  %87 = sub i32 %85, %86
  store i32 %87, i32* %8, align 4
  br label %112

88:                                               ; preds = %70
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp uge i32 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %11, align 4
  %95 = sub i32 %93, %94
  store i32 %95, i32* %8, align 4
  br label %111

96:                                               ; preds = %88
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %11, align 4
  %99 = sub i32 %97, %98
  %100 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %101 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = add i32 %99, %102
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %106 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp uge i32 %104, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %96
  store i32 0, i32* %8, align 4
  br label %110

110:                                              ; preds = %109, %96
  br label %111

111:                                              ; preds = %110, %92
  br label %112

112:                                              ; preds = %111, %84
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %10, align 4
  %115 = add i32 %113, %114
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %112, %50, %23
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @azx_sd_readl(%struct.azx_dev*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @readw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
