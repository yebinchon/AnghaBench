; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/davinci/extr_davinci-mcasp.c_davinci_hw_common_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/davinci/extr_davinci-mcasp.c_davinci_hw_common_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_audio_dev = type { i32, i64*, i32, i32, i64 }

@DAVINCI_MCASP_PWREMUMGT_REG = common dso_local global i64 0, align 8
@MCASP_SOFT = common dso_local global i64 0, align 8
@DAVINCI_MCASP_PFUNC_REG = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@DAVINCI_MCASP_TXSTAT_REG = common dso_local global i64 0, align 8
@DAVINCI_MCASP_XEVTCTL_REG = common dso_local global i64 0, align 8
@TXDATADMADIS = common dso_local global i64 0, align 8
@DAVINCI_MCASP_RXSTAT_REG = common dso_local global i64 0, align 8
@DAVINCI_MCASP_REVTCTL_REG = common dso_local global i64 0, align 8
@RXDATADMADIS = common dso_local global i64 0, align 8
@TX_MODE = common dso_local global i64 0, align 8
@DAVINCI_MCASP_PDIR_REG = common dso_local global i64 0, align 8
@RX_MODE = common dso_local global i64 0, align 8
@DAVINCI_MCASP_WFIFOCTL = common dso_local global i64 0, align 8
@NUMDMA_MASK = common dso_local global i32 0, align 4
@NUMEVT_MASK = common dso_local global i32 0, align 4
@FIFO_ENABLE = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@DAVINCI_MCASP_RFIFOCTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.davinci_audio_dev*, i32)* @davinci_hw_common_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @davinci_hw_common_param(%struct.davinci_audio_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.davinci_audio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.davinci_audio_dev* %0, %struct.davinci_audio_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %3, align 8
  %9 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DAVINCI_MCASP_PWREMUMGT_REG, align 8
  %12 = add nsw i64 %10, %11
  %13 = load i64, i64* @MCASP_SOFT, align 8
  %14 = call i32 @mcasp_set_bits(i64 %12, i64 %13)
  %15 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %3, align 8
  %16 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DAVINCI_MCASP_PFUNC_REG, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @mcasp_set_reg(i64 %19, i32 0)
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %2
  %25 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %3, align 8
  %26 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DAVINCI_MCASP_TXSTAT_REG, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @mcasp_set_reg(i64 %29, i32 -1)
  %31 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %3, align 8
  %32 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DAVINCI_MCASP_XEVTCTL_REG, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i64, i64* @TXDATADMADIS, align 8
  %37 = call i32 @mcasp_clr_bits(i64 %35, i64 %36)
  br label %52

38:                                               ; preds = %2
  %39 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %3, align 8
  %40 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DAVINCI_MCASP_RXSTAT_REG, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @mcasp_set_reg(i64 %43, i32 -1)
  %45 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %3, align 8
  %46 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DAVINCI_MCASP_REVTCTL_REG, align 8
  %49 = add nsw i64 %47, %48
  %50 = load i64, i64* @RXDATADMADIS, align 8
  %51 = call i32 @mcasp_clr_bits(i64 %49, i64 %50)
  br label %52

52:                                               ; preds = %38, %24
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %117, %52
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %3, align 8
  %56 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %120

59:                                               ; preds = %53
  %60 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %3, align 8
  %61 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i64 @DAVINCI_MCASP_XRSRCTL_REG(i32 %63)
  %65 = add nsw i64 %62, %64
  %66 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %3, align 8
  %67 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @mcasp_set_bits(i64 %65, i64 %72)
  %74 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %3, align 8
  %75 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @TX_MODE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %59
  %84 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %3, align 8
  %85 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @DAVINCI_MCASP_PDIR_REG, align 8
  %88 = add nsw i64 %86, %87
  %89 = load i32, i32* %5, align 4
  %90 = call i64 @AXR(i32 %89)
  %91 = call i32 @mcasp_set_bits(i64 %88, i64 %90)
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %116

94:                                               ; preds = %59
  %95 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %3, align 8
  %96 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %95, i32 0, i32 1
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @RX_MODE, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %94
  %105 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %3, align 8
  %106 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @DAVINCI_MCASP_PDIR_REG, align 8
  %109 = add nsw i64 %107, %108
  %110 = load i32, i32* %5, align 4
  %111 = call i64 @AXR(i32 %110)
  %112 = call i32 @mcasp_clr_bits(i64 %109, i64 %111)
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %104, %94
  br label %116

116:                                              ; preds = %115, %83
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %5, align 4
  br label %53

120:                                              ; preds = %53
  %121 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %3, align 8
  %122 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %168

125:                                              ; preds = %120
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %168

129:                                              ; preds = %125
  %130 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %3, align 8
  %131 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = mul nsw i32 %132, %133
  %135 = icmp sgt i32 %134, 64
  br i1 %135, label %136, label %139

136:                                              ; preds = %129
  %137 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %3, align 8
  %138 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %137, i32 0, i32 2
  store i32 1, i32* %138, align 8
  br label %139

139:                                              ; preds = %136, %129
  %140 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %3, align 8
  %141 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @DAVINCI_MCASP_WFIFOCTL, align 8
  %144 = add nsw i64 %142, %143
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* @NUMDMA_MASK, align 4
  %147 = call i32 @mcasp_mod_bits(i64 %144, i32 %145, i32 %146)
  %148 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %3, align 8
  %149 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @DAVINCI_MCASP_WFIFOCTL, align 8
  %152 = add nsw i64 %150, %151
  %153 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %3, align 8
  %154 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = mul nsw i32 %155, %156
  %158 = shl i32 %157, 8
  %159 = load i32, i32* @NUMEVT_MASK, align 4
  %160 = call i32 @mcasp_mod_bits(i64 %152, i32 %158, i32 %159)
  %161 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %3, align 8
  %162 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %161, i32 0, i32 4
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @DAVINCI_MCASP_WFIFOCTL, align 8
  %165 = add nsw i64 %163, %164
  %166 = load i64, i64* @FIFO_ENABLE, align 8
  %167 = call i32 @mcasp_set_bits(i64 %165, i64 %166)
  br label %168

168:                                              ; preds = %139, %125, %120
  %169 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %3, align 8
  %170 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %216

173:                                              ; preds = %168
  %174 = load i32, i32* %4, align 4
  %175 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %216

177:                                              ; preds = %173
  %178 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %3, align 8
  %179 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %7, align 4
  %182 = mul nsw i32 %180, %181
  %183 = icmp sgt i32 %182, 64
  br i1 %183, label %184, label %187

184:                                              ; preds = %177
  %185 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %3, align 8
  %186 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %185, i32 0, i32 3
  store i32 1, i32* %186, align 4
  br label %187

187:                                              ; preds = %184, %177
  %188 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %3, align 8
  %189 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %188, i32 0, i32 4
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @DAVINCI_MCASP_RFIFOCTL, align 8
  %192 = add nsw i64 %190, %191
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* @NUMDMA_MASK, align 4
  %195 = call i32 @mcasp_mod_bits(i64 %192, i32 %193, i32 %194)
  %196 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %3, align 8
  %197 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %196, i32 0, i32 4
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @DAVINCI_MCASP_RFIFOCTL, align 8
  %200 = add nsw i64 %198, %199
  %201 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %3, align 8
  %202 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %7, align 4
  %205 = mul nsw i32 %203, %204
  %206 = shl i32 %205, 8
  %207 = load i32, i32* @NUMEVT_MASK, align 4
  %208 = call i32 @mcasp_mod_bits(i64 %200, i32 %206, i32 %207)
  %209 = load %struct.davinci_audio_dev*, %struct.davinci_audio_dev** %3, align 8
  %210 = getelementptr inbounds %struct.davinci_audio_dev, %struct.davinci_audio_dev* %209, i32 0, i32 4
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @DAVINCI_MCASP_RFIFOCTL, align 8
  %213 = add nsw i64 %211, %212
  %214 = load i64, i64* @FIFO_ENABLE, align 8
  %215 = call i32 @mcasp_set_bits(i64 %213, i64 %214)
  br label %216

216:                                              ; preds = %187, %173, %168
  ret void
}

declare dso_local i32 @mcasp_set_bits(i64, i64) #1

declare dso_local i32 @mcasp_set_reg(i64, i32) #1

declare dso_local i32 @mcasp_clr_bits(i64, i64) #1

declare dso_local i64 @DAVINCI_MCASP_XRSRCTL_REG(i32) #1

declare dso_local i64 @AXR(i32) #1

declare dso_local i32 @mcasp_mod_bits(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
