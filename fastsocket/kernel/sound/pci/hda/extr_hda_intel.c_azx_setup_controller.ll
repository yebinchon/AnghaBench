; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_azx_setup_controller.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_azx_setup_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { i64*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.azx_dev = type { i32, i32, %struct.TYPE_3__, i64, i64 }
%struct.TYPE_3__ = type { i64 }

@SD_CTL = common dso_local global i32 0, align 4
@SD_CTL_STREAM_TAG_MASK = common dso_local global i32 0, align 4
@SD_CTL_STREAM_TAG_SHIFT = common dso_local global i32 0, align 4
@SD_CTL_TRAFFIC_PRIO = common dso_local global i32 0, align 4
@SD_CBL = common dso_local global i32 0, align 4
@SD_FORMAT = common dso_local global i32 0, align 4
@SD_LVI = common dso_local global i32 0, align 4
@SD_BDLPL = common dso_local global i32 0, align 4
@SD_BDLPU = common dso_local global i32 0, align 4
@POS_FIX_LPIB = common dso_local global i64 0, align 8
@DPLBASE = common dso_local global i32 0, align 4
@ICH6_DPLBASE_ENABLE = common dso_local global i32 0, align 4
@SD_INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.azx*, %struct.azx_dev*)* @azx_setup_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @azx_setup_controller(%struct.azx* %0, %struct.azx_dev* %1) #0 {
  %3 = alloca %struct.azx*, align 8
  %4 = alloca %struct.azx_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.azx* %0, %struct.azx** %3, align 8
  store %struct.azx_dev* %1, %struct.azx_dev** %4, align 8
  %6 = load %struct.azx*, %struct.azx** %3, align 8
  %7 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %8 = call i32 @azx_stream_clear(%struct.azx* %6, %struct.azx_dev* %7)
  %9 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %10 = load i32, i32* @SD_CTL, align 4
  %11 = call i32 @azx_sd_readl(%struct.azx_dev* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SD_CTL_STREAM_TAG_MASK, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %17 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SD_CTL_STREAM_TAG_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = or i32 %15, %20
  store i32 %21, i32* %5, align 4
  %22 = load %struct.azx*, %struct.azx** %3, align 8
  %23 = call i32 @azx_snoop(%struct.azx* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @SD_CTL_TRAFFIC_PRIO, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %25, %2
  %30 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %31 = load i32, i32* @SD_CTL, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @azx_sd_writel(%struct.azx_dev* %30, i32 %31, i32 %32)
  %34 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %35 = load i32, i32* @SD_CBL, align 4
  %36 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %37 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @azx_sd_writel(%struct.azx_dev* %34, i32 %35, i32 %38)
  %40 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %41 = load i32, i32* @SD_FORMAT, align 4
  %42 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %43 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @azx_sd_writew(%struct.azx_dev* %40, i32 %41, i64 %44)
  %46 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %47 = load i32, i32* @SD_LVI, align 4
  %48 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %49 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %50, 1
  %52 = call i32 @azx_sd_writew(%struct.azx_dev* %46, i32 %47, i64 %51)
  %53 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %54 = load i32, i32* @SD_BDLPL, align 4
  %55 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %56 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @azx_sd_writel(%struct.azx_dev* %53, i32 %54, i32 %59)
  %61 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %62 = load i32, i32* @SD_BDLPU, align 4
  %63 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %64 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @upper_32_bits(i64 %66)
  %68 = call i32 @azx_sd_writel(%struct.azx_dev* %61, i32 %62, i32 %67)
  %69 = load %struct.azx*, %struct.azx** %3, align 8
  %70 = getelementptr inbounds %struct.azx, %struct.azx* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @POS_FIX_LPIB, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %84, label %76

76:                                               ; preds = %29
  %77 = load %struct.azx*, %struct.azx** %3, align 8
  %78 = getelementptr inbounds %struct.azx, %struct.azx* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @POS_FIX_LPIB, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %103

84:                                               ; preds = %76, %29
  %85 = load %struct.azx*, %struct.azx** %3, align 8
  %86 = load i32, i32* @DPLBASE, align 4
  %87 = call i32 @azx_readl(%struct.azx* %85, i32 %86)
  %88 = load i32, i32* @ICH6_DPLBASE_ENABLE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %102, label %91

91:                                               ; preds = %84
  %92 = load %struct.azx*, %struct.azx** %3, align 8
  %93 = load i32, i32* @DPLBASE, align 4
  %94 = load %struct.azx*, %struct.azx** %3, align 8
  %95 = getelementptr inbounds %struct.azx, %struct.azx* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = load i32, i32* @ICH6_DPLBASE_ENABLE, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @azx_writel(%struct.azx* %92, i32 %93, i32 %100)
  br label %102

102:                                              ; preds = %91, %84
  br label %103

103:                                              ; preds = %102, %76
  %104 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %105 = load i32, i32* @SD_CTL, align 4
  %106 = load %struct.azx_dev*, %struct.azx_dev** %4, align 8
  %107 = load i32, i32* @SD_CTL, align 4
  %108 = call i32 @azx_sd_readl(%struct.azx_dev* %106, i32 %107)
  %109 = load i32, i32* @SD_INT_MASK, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @azx_sd_writel(%struct.azx_dev* %104, i32 %105, i32 %110)
  ret i32 0
}

declare dso_local i32 @azx_stream_clear(%struct.azx*, %struct.azx_dev*) #1

declare dso_local i32 @azx_sd_readl(%struct.azx_dev*, i32) #1

declare dso_local i32 @azx_snoop(%struct.azx*) #1

declare dso_local i32 @azx_sd_writel(%struct.azx_dev*, i32, i32) #1

declare dso_local i32 @azx_sd_writew(%struct.azx_dev*, i32, i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @azx_readl(%struct.azx*, i32) #1

declare dso_local i32 @azx_writel(%struct.azx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
