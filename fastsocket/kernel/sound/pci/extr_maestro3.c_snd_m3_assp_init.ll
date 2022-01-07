; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_maestro3.c_snd_m3_assp_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_maestro3.c_snd_m3_assp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_m3 = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_12__ = type { i32, i32, i64 }
%struct.TYPE_11__ = type { i32, i32, i64 }
%struct.TYPE_10__ = type { i32, i32, i64 }
%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i64 }

@REV_B_DATA_MEMORY_UNIT_LENGTH = common dso_local global i32 0, align 4
@NUM_UNITS_KERNEL_DATA = common dso_local global i32 0, align 4
@MEMTYPE_INTERNAL_DATA = common dso_local global i32 0, align 4
@KDATA_BASE_ADDR = common dso_local global i32 0, align 4
@KDATA_BASE_ADDR2 = common dso_local global i32 0, align 4
@KDATA_CURRENT_DMA = common dso_local global i32 0, align 4
@KDATA_DMA_XFER0 = common dso_local global i32 0, align 4
@MEMTYPE_INTERNAL_CODE = common dso_local global i32 0, align 4
@REV_B_CODE_MEMORY_BEGIN = common dso_local global i32 0, align 4
@MINISRC_LPF_LEN = common dso_local global i32 0, align 4
@MINISRC_COEF_LOC = common dso_local global i32 0, align 4
@minisrc_lpf = common dso_local global i32* null, align 8
@KDATA_TASK0 = common dso_local global i32 0, align 4
@KDATA_MIXER_TASK_NUMBER = common dso_local global i32 0, align 4
@KDATA_DAC_LEFT_VOLUME = common dso_local global i32 0, align 4
@ARB_VOLUME = common dso_local global i32 0, align 4
@KDATA_DAC_RIGHT_VOLUME = common dso_local global i32 0, align 4
@KDATA_MIXER_XFER0 = common dso_local global i32 0, align 4
@MAX_VIRTUAL_MIXER_CHANNELS = common dso_local global i32 0, align 4
@KDATA_ADC1_XFER0 = common dso_local global i32 0, align 4
@MAX_VIRTUAL_ADC1_CHANNELS = common dso_local global i32 0, align 4
@MAX_VIRTUAL_DMA_CHANNELS = common dso_local global i32 0, align 4
@KDATA_INSTANCE0_MINISRC = common dso_local global i32 0, align 4
@MAX_INSTANCE_MINISRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_m3*)* @snd_m3_assp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_m3_assp_init(%struct.snd_m3* %0) #0 {
  %2 = alloca %struct.snd_m3*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store %struct.snd_m3* %0, %struct.snd_m3** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %19, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @REV_B_DATA_MEMORY_UNIT_LENGTH, align 4
  %8 = load i32, i32* @NUM_UNITS_KERNEL_DATA, align 4
  %9 = mul nsw i32 %7, %8
  %10 = sdiv i32 %9, 2
  %11 = icmp ult i32 %6, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %5
  %13 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %14 = load i32, i32* @MEMTYPE_INTERNAL_DATA, align 4
  %15 = load i32, i32* @KDATA_BASE_ADDR, align 4
  %16 = load i32, i32* %3, align 4
  %17 = add i32 %15, %16
  %18 = call i32 @snd_m3_assp_write(%struct.snd_m3* %13, i32 %14, i32 %17, i32 0)
  br label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %3, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %5

22:                                               ; preds = %5
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %37, %22
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @REV_B_DATA_MEMORY_UNIT_LENGTH, align 4
  %26 = load i32, i32* @NUM_UNITS_KERNEL_DATA, align 4
  %27 = mul nsw i32 %25, %26
  %28 = sdiv i32 %27, 2
  %29 = icmp ult i32 %24, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %23
  %31 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %32 = load i32, i32* @MEMTYPE_INTERNAL_DATA, align 4
  %33 = load i32, i32* @KDATA_BASE_ADDR2, align 4
  %34 = load i32, i32* %3, align 4
  %35 = add i32 %33, %34
  %36 = call i32 @snd_m3_assp_write(%struct.snd_m3* %31, i32 %32, i32 %35, i32 0)
  br label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %3, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %23

40:                                               ; preds = %23
  %41 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %42 = load i32, i32* @MEMTYPE_INTERNAL_DATA, align 4
  %43 = load i32, i32* @KDATA_CURRENT_DMA, align 4
  %44 = load i32, i32* @KDATA_DMA_XFER0, align 4
  %45 = call i32 @snd_m3_assp_write(%struct.snd_m3* %41, i32 %42, i32 %43, i32 %44)
  %46 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %47 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %46, i32 0, i32 5
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i32*
  store i32* %51, i32** %4, align 8
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %74, %40
  %53 = load i32, i32* %3, align 4
  %54 = mul i32 %53, 2
  %55 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %56 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %55, i32 0, i32 5
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ult i32 %54, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %52
  %62 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %63 = load i32, i32* @MEMTYPE_INTERNAL_CODE, align 4
  %64 = load i32, i32* @REV_B_CODE_MEMORY_BEGIN, align 4
  %65 = load i32, i32* %3, align 4
  %66 = add i32 %64, %65
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* %3, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @le16_to_cpu(i32 %71)
  %73 = call i32 @snd_m3_assp_write(%struct.snd_m3* %62, i32 %63, i32 %66, i32 %72)
  br label %74

74:                                               ; preds = %61
  %75 = load i32, i32* %3, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %52

77:                                               ; preds = %52
  %78 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %79 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %78, i32 0, i32 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to i32*
  store i32* %83, i32** %4, align 8
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %105, %77
  %85 = load i32, i32* %3, align 4
  %86 = mul i32 %85, 2
  %87 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %88 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %87, i32 0, i32 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ult i32 %86, %91
  br i1 %92, label %93, label %108

93:                                               ; preds = %84
  %94 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %95 = load i32, i32* @MEMTYPE_INTERNAL_CODE, align 4
  %96 = load i32, i32* %3, align 4
  %97 = add i32 1024, %96
  %98 = load i32*, i32** %4, align 8
  %99 = load i32, i32* %3, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @le16_to_cpu(i32 %102)
  %104 = call i32 @snd_m3_assp_write(%struct.snd_m3* %94, i32 %95, i32 %97, i32 %103)
  br label %105

105:                                              ; preds = %93
  %106 = load i32, i32* %3, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %3, align 4
  br label %84

108:                                              ; preds = %84
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %126, %108
  %110 = load i32, i32* %3, align 4
  %111 = load i32, i32* @MINISRC_LPF_LEN, align 4
  %112 = icmp ult i32 %110, %111
  br i1 %112, label %113, label %129

113:                                              ; preds = %109
  %114 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %115 = load i32, i32* @MEMTYPE_INTERNAL_CODE, align 4
  %116 = load i32, i32* @MINISRC_COEF_LOC, align 4
  %117 = add nsw i32 1024, %116
  %118 = load i32, i32* %3, align 4
  %119 = add i32 %117, %118
  %120 = load i32*, i32** @minisrc_lpf, align 8
  %121 = load i32, i32* %3, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @snd_m3_assp_write(%struct.snd_m3* %114, i32 %115, i32 %119, i32 %124)
  br label %126

126:                                              ; preds = %113
  %127 = load i32, i32* %3, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %3, align 4
  br label %109

129:                                              ; preds = %109
  %130 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %131 = load i32, i32* @MEMTYPE_INTERNAL_CODE, align 4
  %132 = load i32, i32* @MINISRC_COEF_LOC, align 4
  %133 = add nsw i32 1024, %132
  %134 = load i32, i32* @MINISRC_LPF_LEN, align 4
  %135 = add i32 %133, %134
  %136 = call i32 @snd_m3_assp_write(%struct.snd_m3* %130, i32 %131, i32 %135, i32 32768)
  %137 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %138 = load i32, i32* @MEMTYPE_INTERNAL_DATA, align 4
  %139 = load i32, i32* @KDATA_TASK0, align 4
  %140 = call i32 @snd_m3_assp_write(%struct.snd_m3* %137, i32 %138, i32 %139, i32 1024)
  %141 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %142 = load i32, i32* @MEMTYPE_INTERNAL_DATA, align 4
  %143 = load i32, i32* @KDATA_MIXER_TASK_NUMBER, align 4
  %144 = call i32 @snd_m3_assp_write(%struct.snd_m3* %141, i32 %142, i32 %143, i32 0)
  %145 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %146 = load i32, i32* @MEMTYPE_INTERNAL_DATA, align 4
  %147 = load i32, i32* @KDATA_DAC_LEFT_VOLUME, align 4
  %148 = load i32, i32* @ARB_VOLUME, align 4
  %149 = call i32 @snd_m3_assp_write(%struct.snd_m3* %145, i32 %146, i32 %147, i32 %148)
  %150 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %151 = load i32, i32* @MEMTYPE_INTERNAL_DATA, align 4
  %152 = load i32, i32* @KDATA_DAC_RIGHT_VOLUME, align 4
  %153 = load i32, i32* @ARB_VOLUME, align 4
  %154 = call i32 @snd_m3_assp_write(%struct.snd_m3* %150, i32 %151, i32 %152, i32 %153)
  %155 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %156 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 2
  store i64 0, i64* %157, align 8
  %158 = load i32, i32* @KDATA_MIXER_XFER0, align 4
  %159 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %160 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 1
  store i32 %158, i32* %161, align 4
  %162 = load i32, i32* @MAX_VIRTUAL_MIXER_CHANNELS, align 4
  %163 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %164 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  store i32 %162, i32* %165, align 8
  %166 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %167 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 2
  store i64 0, i64* %168, align 8
  %169 = load i32, i32* @KDATA_ADC1_XFER0, align 4
  %170 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %171 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 1
  store i32 %169, i32* %172, align 4
  %173 = load i32, i32* @MAX_VIRTUAL_ADC1_CHANNELS, align 4
  %174 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %175 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  store i32 %173, i32* %176, align 8
  %177 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %178 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 2
  store i64 0, i64* %179, align 8
  %180 = load i32, i32* @KDATA_DMA_XFER0, align 4
  %181 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %182 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  store i32 %180, i32* %183, align 8
  %184 = load i32, i32* @MAX_VIRTUAL_DMA_CHANNELS, align 4
  %185 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %186 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 1
  store i32 %184, i32* %187, align 4
  %188 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %189 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 2
  store i64 0, i64* %190, align 8
  %191 = load i32, i32* @KDATA_INSTANCE0_MINISRC, align 4
  %192 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %193 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 1
  store i32 %191, i32* %194, align 4
  %195 = load i32, i32* @MAX_INSTANCE_MINISRC, align 4
  %196 = load %struct.snd_m3*, %struct.snd_m3** %2, align 8
  %197 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  store i32 %195, i32* %198, align 8
  ret void
}

declare dso_local i32 @snd_m3_assp_write(%struct.snd_m3*, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
