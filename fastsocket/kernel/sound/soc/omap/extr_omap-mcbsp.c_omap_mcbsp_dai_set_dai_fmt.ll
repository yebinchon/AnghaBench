; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_omap-mcbsp.c_omap_mcbsp_dai_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_omap-mcbsp.c_omap_mcbsp_dai_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.omap_mcbsp_data = type { i32, i64, %struct.omap_mcbsp_reg_cfg }
%struct.omap_mcbsp_reg_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@FREE = common dso_local global i32 0, align 4
@RFIG = common dso_local global i32 0, align 4
@XFIG = common dso_local global i32 0, align 4
@XDMAEN = common dso_local global i32 0, align 4
@XDISABLE = common dso_local global i32 0, align 4
@RFULL_CYCLE = common dso_local global i32 0, align 4
@RDMAEN = common dso_local global i32 0, align 4
@RDISABLE = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@FSXM = common dso_local global i32 0, align 4
@FSRM = common dso_local global i32 0, align 4
@CLKXM = common dso_local global i32 0, align 4
@CLKRM = common dso_local global i32 0, align 4
@FSGM = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@FSXP = common dso_local global i32 0, align 4
@FSRP = common dso_local global i32 0, align 4
@CLKXP = common dso_local global i32 0, align 4
@CLKRP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @omap_mcbsp_dai_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_mcbsp_dai_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.omap_mcbsp_data*, align 8
  %7 = alloca %struct.omap_mcbsp_reg_cfg*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.omap_mcbsp_data* @to_mcbsp(i32 %11)
  store %struct.omap_mcbsp_data* %12, %struct.omap_mcbsp_data** %6, align 8
  %13 = load %struct.omap_mcbsp_data*, %struct.omap_mcbsp_data** %6, align 8
  %14 = getelementptr inbounds %struct.omap_mcbsp_data, %struct.omap_mcbsp_data* %13, i32 0, i32 2
  store %struct.omap_mcbsp_reg_cfg* %14, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.omap_mcbsp_data*, %struct.omap_mcbsp_data** %6, align 8
  %17 = getelementptr inbounds %struct.omap_mcbsp_data, %struct.omap_mcbsp_data* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %179

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.omap_mcbsp_data*, %struct.omap_mcbsp_data** %6, align 8
  %24 = getelementptr inbounds %struct.omap_mcbsp_data, %struct.omap_mcbsp_data* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %26 = call i32 @memset(%struct.omap_mcbsp_reg_cfg* %25, i32 0, i32 32)
  %27 = call i32 @XINTM(i32 3)
  %28 = load i32, i32* @FREE, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %31 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = call i32 @RINTM(i32 3)
  %35 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %36 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = call i64 (...) @cpu_is_omap34xx()
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %21
  %42 = load i32, i32* @RFIG, align 4
  %43 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %44 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* @XFIG, align 4
  %48 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %49 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %41, %21
  %53 = call i64 (...) @cpu_is_omap2430()
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = call i64 (...) @cpu_is_omap34xx()
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %55, %52
  %59 = call i32 @DXENDLY(i32 1)
  %60 = load i32, i32* @XDMAEN, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @XDISABLE, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %65 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @RFULL_CYCLE, align 4
  %67 = load i32, i32* @RDMAEN, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @RDISABLE, align 4
  %70 = or i32 %68, %69
  %71 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %72 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %58, %55
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %76 = and i32 %74, %75
  switch i32 %76, label %114 [
    i32 132, label %77
    i32 134, label %88
    i32 133, label %101
  ]

77:                                               ; preds = %73
  %78 = call i32 @RDATDLY(i32 1)
  %79 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %80 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  %83 = call i32 @XDATDLY(i32 1)
  %84 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %85 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %117

88:                                               ; preds = %73
  %89 = call i32 @RDATDLY(i32 1)
  %90 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %91 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = call i32 @XDATDLY(i32 1)
  %95 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %96 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  %99 = load i32, i32* %8, align 4
  %100 = xor i32 %99, 129
  store i32 %100, i32* %8, align 4
  br label %117

101:                                              ; preds = %73
  %102 = call i32 @RDATDLY(i32 0)
  %103 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %104 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  %107 = call i32 @XDATDLY(i32 0)
  %108 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %109 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  %112 = load i32, i32* %8, align 4
  %113 = xor i32 %112, 129
  store i32 %113, i32* %8, align 4
  br label %117

114:                                              ; preds = %73
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %3, align 4
  br label %179

117:                                              ; preds = %101, %88, %77
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %120 = and i32 %118, %119
  switch i32 %120, label %139 [
    i32 135, label %121
    i32 136, label %138
  ]

121:                                              ; preds = %117
  %122 = load i32, i32* @FSXM, align 4
  %123 = load i32, i32* @FSRM, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @CLKXM, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @CLKRM, align 4
  %128 = or i32 %126, %127
  %129 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %130 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 4
  %133 = load i32, i32* @FSGM, align 4
  %134 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %135 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 4
  br label %142

138:                                              ; preds = %117
  br label %142

139:                                              ; preds = %117
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %3, align 4
  br label %179

142:                                              ; preds = %138, %121
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %145 = and i32 %143, %144
  switch i32 %145, label %175 [
    i32 128, label %146
    i32 129, label %158
    i32 130, label %166
    i32 131, label %174
  ]

146:                                              ; preds = %142
  %147 = load i32, i32* @FSXP, align 4
  %148 = load i32, i32* @FSRP, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @CLKXP, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @CLKRP, align 4
  %153 = or i32 %151, %152
  %154 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %155 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 4
  br label %178

158:                                              ; preds = %142
  %159 = load i32, i32* @CLKXP, align 4
  %160 = load i32, i32* @CLKRP, align 4
  %161 = or i32 %159, %160
  %162 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %163 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 4
  br label %178

166:                                              ; preds = %142
  %167 = load i32, i32* @FSXP, align 4
  %168 = load i32, i32* @FSRP, align 4
  %169 = or i32 %167, %168
  %170 = load %struct.omap_mcbsp_reg_cfg*, %struct.omap_mcbsp_reg_cfg** %7, align 8
  %171 = getelementptr inbounds %struct.omap_mcbsp_reg_cfg, %struct.omap_mcbsp_reg_cfg* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 4
  br label %178

174:                                              ; preds = %142
  br label %178

175:                                              ; preds = %142
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %3, align 4
  br label %179

178:                                              ; preds = %174, %166, %158, %146
  store i32 0, i32* %3, align 4
  br label %179

179:                                              ; preds = %178, %175, %139, %114, %20
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local %struct.omap_mcbsp_data* @to_mcbsp(i32) #1

declare dso_local i32 @memset(%struct.omap_mcbsp_reg_cfg*, i32, i32) #1

declare dso_local i32 @XINTM(i32) #1

declare dso_local i32 @RINTM(i32) #1

declare dso_local i64 @cpu_is_omap34xx(...) #1

declare dso_local i64 @cpu_is_omap2430(...) #1

declare dso_local i32 @DXENDLY(i32) #1

declare dso_local i32 @RDATDLY(i32) #1

declare dso_local i32 @XDATDLY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
