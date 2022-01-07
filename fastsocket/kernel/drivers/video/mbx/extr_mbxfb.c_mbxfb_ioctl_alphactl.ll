; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/mbx/extr_mbxfb.c_mbxfb_ioctl_alphactl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/mbx/extr_mbxfb.c_mbxfb_ioctl_alphactl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbxfb_alphaCtl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@VCMSK = common dso_local global i32 0, align 4
@VCMSK_COLKEY_M = common dso_local global i32 0, align 4
@GDRCTRL = common dso_local global i32 0, align 4
@GDRCTRL_COLKEYM = common dso_local global i32 0, align 4
@VSCADR = common dso_local global i32 0, align 4
@VSCADR_BLEND_M = common dso_local global i32 0, align 4
@VSCADR_COLKEYSRC = common dso_local global i64 0, align 8
@VSCADR_COLKEY_EN = common dso_local global i64 0, align 8
@GSCADR = common dso_local global i32 0, align 4
@GSCADR_BLEND_M = common dso_local global i32 0, align 4
@GSCADR_COLKEY_EN = common dso_local global i64 0, align 8
@GSCADR_COLKEYSRC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VSCADR_BLEND_NONE = common dso_local global i64 0, align 8
@VSCADR_BLEND_GLOB = common dso_local global i64 0, align 8
@VSCADR_BLEND_PIX = common dso_local global i64 0, align 8
@GSCADR_BLEND_NONE = common dso_local global i64 0, align 8
@GSCADR_BLEND_GLOB = common dso_local global i64 0, align 8
@GSCADR_BLEND_PIX = common dso_local global i64 0, align 8
@VBBASE = common dso_local global i32 0, align 4
@GBBASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbxfb_alphaCtl*)* @mbxfb_ioctl_alphactl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbxfb_ioctl_alphactl(%struct.mbxfb_alphaCtl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mbxfb_alphaCtl*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.mbxfb_alphaCtl* %0, %struct.mbxfb_alphaCtl** %3, align 8
  %10 = load %struct.mbxfb_alphaCtl*, %struct.mbxfb_alphaCtl** %3, align 8
  %11 = getelementptr inbounds %struct.mbxfb_alphaCtl, %struct.mbxfb_alphaCtl* %10, i32 0, i32 9
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @Vbbase_Glalpha(i32 %12)
  %14 = load %struct.mbxfb_alphaCtl*, %struct.mbxfb_alphaCtl** %3, align 8
  %15 = getelementptr inbounds %struct.mbxfb_alphaCtl, %struct.mbxfb_alphaCtl* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @Vbbase_Colkey(i32 %16)
  %18 = or i64 %13, %17
  store i64 %18, i64* %5, align 8
  %19 = load %struct.mbxfb_alphaCtl*, %struct.mbxfb_alphaCtl** %3, align 8
  %20 = getelementptr inbounds %struct.mbxfb_alphaCtl, %struct.mbxfb_alphaCtl* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @Gbbase_Glalpha(i32 %21)
  %23 = load %struct.mbxfb_alphaCtl*, %struct.mbxfb_alphaCtl** %3, align 8
  %24 = getelementptr inbounds %struct.mbxfb_alphaCtl, %struct.mbxfb_alphaCtl* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @Gbbase_Colkey(i32 %25)
  %27 = or i64 %22, %26
  store i64 %27, i64* %8, align 8
  %28 = load i32, i32* @VCMSK, align 4
  %29 = call i64 @readl(i32 %28)
  store i64 %29, i64* %6, align 8
  %30 = load i32, i32* @VCMSK_COLKEY_M, align 4
  %31 = call i64 @FMsk(i32 %30)
  %32 = xor i64 %31, -1
  %33 = load i64, i64* %6, align 8
  %34 = and i64 %33, %32
  store i64 %34, i64* %6, align 8
  %35 = load %struct.mbxfb_alphaCtl*, %struct.mbxfb_alphaCtl** %3, align 8
  %36 = getelementptr inbounds %struct.mbxfb_alphaCtl, %struct.mbxfb_alphaCtl* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @Vcmsk_colkey_m(i32 %37)
  %39 = load i64, i64* %6, align 8
  %40 = or i64 %39, %38
  store i64 %40, i64* %6, align 8
  %41 = load i32, i32* @GDRCTRL, align 4
  %42 = call i64 @readl(i32 %41)
  store i64 %42, i64* %9, align 8
  %43 = load i32, i32* @GDRCTRL_COLKEYM, align 4
  %44 = call i64 @FMsk(i32 %43)
  %45 = xor i64 %44, -1
  %46 = load i64, i64* %9, align 8
  %47 = and i64 %46, %45
  store i64 %47, i64* %9, align 8
  %48 = load %struct.mbxfb_alphaCtl*, %struct.mbxfb_alphaCtl** %3, align 8
  %49 = getelementptr inbounds %struct.mbxfb_alphaCtl, %struct.mbxfb_alphaCtl* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @Gdrctrl_Colkeym(i32 %50)
  %52 = load i64, i64* %9, align 8
  %53 = or i64 %52, %51
  store i64 %53, i64* %9, align 8
  %54 = load i32, i32* @VSCADR, align 4
  %55 = call i64 @readl(i32 %54)
  store i64 %55, i64* %4, align 8
  %56 = load i32, i32* @VSCADR_BLEND_M, align 4
  %57 = call i64 @FMsk(i32 %56)
  %58 = load i64, i64* @VSCADR_COLKEYSRC, align 8
  %59 = or i64 %57, %58
  %60 = load i64, i64* @VSCADR_COLKEY_EN, align 8
  %61 = or i64 %59, %60
  %62 = xor i64 %61, -1
  %63 = load i64, i64* %4, align 8
  %64 = and i64 %63, %62
  store i64 %64, i64* %4, align 8
  %65 = load i32, i32* @GSCADR, align 4
  %66 = call i64 @readl(i32 %65)
  store i64 %66, i64* %7, align 8
  %67 = load i32, i32* @GSCADR_BLEND_M, align 4
  %68 = call i64 @FMsk(i32 %67)
  %69 = load i64, i64* @GSCADR_COLKEY_EN, align 8
  %70 = or i64 %68, %69
  %71 = load i64, i64* @GSCADR_COLKEYSRC, align 8
  %72 = or i64 %70, %71
  %73 = xor i64 %72, -1
  %74 = load i64, i64* %7, align 8
  %75 = and i64 %74, %73
  store i64 %75, i64* %7, align 8
  %76 = load %struct.mbxfb_alphaCtl*, %struct.mbxfb_alphaCtl** %3, align 8
  %77 = getelementptr inbounds %struct.mbxfb_alphaCtl, %struct.mbxfb_alphaCtl* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %90 [
    i32 129, label %79
    i32 128, label %80
    i32 130, label %84
  ]

79:                                               ; preds = %1
  br label %93

80:                                               ; preds = %1
  %81 = load i64, i64* @VSCADR_COLKEY_EN, align 8
  %82 = load i64, i64* %4, align 8
  %83 = or i64 %82, %81
  store i64 %83, i64* %4, align 8
  br label %93

84:                                               ; preds = %1
  %85 = load i64, i64* @VSCADR_COLKEY_EN, align 8
  %86 = load i64, i64* @VSCADR_COLKEYSRC, align 8
  %87 = or i64 %85, %86
  %88 = load i64, i64* %4, align 8
  %89 = or i64 %88, %87
  store i64 %89, i64* %4, align 8
  br label %93

90:                                               ; preds = %1
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %168

93:                                               ; preds = %84, %80, %79
  %94 = load %struct.mbxfb_alphaCtl*, %struct.mbxfb_alphaCtl** %3, align 8
  %95 = getelementptr inbounds %struct.mbxfb_alphaCtl, %struct.mbxfb_alphaCtl* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  switch i32 %96, label %109 [
    i32 132, label %97
    i32 133, label %101
    i32 131, label %105
  ]

97:                                               ; preds = %93
  %98 = load i64, i64* @VSCADR_BLEND_NONE, align 8
  %99 = load i64, i64* %4, align 8
  %100 = or i64 %99, %98
  store i64 %100, i64* %4, align 8
  br label %112

101:                                              ; preds = %93
  %102 = load i64, i64* @VSCADR_BLEND_GLOB, align 8
  %103 = load i64, i64* %4, align 8
  %104 = or i64 %103, %102
  store i64 %104, i64* %4, align 8
  br label %112

105:                                              ; preds = %93
  %106 = load i64, i64* @VSCADR_BLEND_PIX, align 8
  %107 = load i64, i64* %4, align 8
  %108 = or i64 %107, %106
  store i64 %108, i64* %4, align 8
  br label %112

109:                                              ; preds = %93
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %2, align 4
  br label %168

112:                                              ; preds = %105, %101, %97
  %113 = load %struct.mbxfb_alphaCtl*, %struct.mbxfb_alphaCtl** %3, align 8
  %114 = getelementptr inbounds %struct.mbxfb_alphaCtl, %struct.mbxfb_alphaCtl* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  switch i32 %115, label %127 [
    i32 129, label %116
    i32 128, label %117
    i32 130, label %121
  ]

116:                                              ; preds = %112
  br label %130

117:                                              ; preds = %112
  %118 = load i64, i64* @GSCADR_COLKEY_EN, align 8
  %119 = load i64, i64* %7, align 8
  %120 = or i64 %119, %118
  store i64 %120, i64* %7, align 8
  br label %130

121:                                              ; preds = %112
  %122 = load i64, i64* @GSCADR_COLKEY_EN, align 8
  %123 = load i64, i64* @GSCADR_COLKEYSRC, align 8
  %124 = or i64 %122, %123
  %125 = load i64, i64* %7, align 8
  %126 = or i64 %125, %124
  store i64 %126, i64* %7, align 8
  br label %130

127:                                              ; preds = %112
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %2, align 4
  br label %168

130:                                              ; preds = %121, %117, %116
  %131 = load %struct.mbxfb_alphaCtl*, %struct.mbxfb_alphaCtl** %3, align 8
  %132 = getelementptr inbounds %struct.mbxfb_alphaCtl, %struct.mbxfb_alphaCtl* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  switch i32 %133, label %146 [
    i32 132, label %134
    i32 133, label %138
    i32 131, label %142
  ]

134:                                              ; preds = %130
  %135 = load i64, i64* @GSCADR_BLEND_NONE, align 8
  %136 = load i64, i64* %7, align 8
  %137 = or i64 %136, %135
  store i64 %137, i64* %7, align 8
  br label %149

138:                                              ; preds = %130
  %139 = load i64, i64* @GSCADR_BLEND_GLOB, align 8
  %140 = load i64, i64* %7, align 8
  %141 = or i64 %140, %139
  store i64 %141, i64* %7, align 8
  br label %149

142:                                              ; preds = %130
  %143 = load i64, i64* @GSCADR_BLEND_PIX, align 8
  %144 = load i64, i64* %7, align 8
  %145 = or i64 %144, %143
  store i64 %145, i64* %7, align 8
  br label %149

146:                                              ; preds = %130
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %2, align 4
  br label %168

149:                                              ; preds = %142, %138, %134
  %150 = load i64, i64* %5, align 8
  %151 = load i32, i32* @VBBASE, align 4
  %152 = call i32 @write_reg_dly(i64 %150, i32 %151)
  %153 = load i64, i64* %8, align 8
  %154 = load i32, i32* @GBBASE, align 4
  %155 = call i32 @write_reg_dly(i64 %153, i32 %154)
  %156 = load i64, i64* %6, align 8
  %157 = load i32, i32* @VCMSK, align 4
  %158 = call i32 @write_reg_dly(i64 %156, i32 %157)
  %159 = load i64, i64* %9, align 8
  %160 = load i32, i32* @GDRCTRL, align 4
  %161 = call i32 @write_reg_dly(i64 %159, i32 %160)
  %162 = load i64, i64* %7, align 8
  %163 = load i32, i32* @GSCADR, align 4
  %164 = call i32 @write_reg_dly(i64 %162, i32 %163)
  %165 = load i64, i64* %4, align 8
  %166 = load i32, i32* @VSCADR, align 4
  %167 = call i32 @write_reg_dly(i64 %165, i32 %166)
  store i32 0, i32* %2, align 4
  br label %168

168:                                              ; preds = %149, %146, %127, %109, %90
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local i64 @Vbbase_Glalpha(i32) #1

declare dso_local i64 @Vbbase_Colkey(i32) #1

declare dso_local i64 @Gbbase_Glalpha(i32) #1

declare dso_local i64 @Gbbase_Colkey(i32) #1

declare dso_local i64 @readl(i32) #1

declare dso_local i64 @FMsk(i32) #1

declare dso_local i64 @Vcmsk_colkey_m(i32) #1

declare dso_local i64 @Gdrctrl_Colkeym(i32) #1

declare dso_local i32 @write_reg_dly(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
