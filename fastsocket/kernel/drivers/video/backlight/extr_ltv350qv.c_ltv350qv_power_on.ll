; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_ltv350qv.c_ltv350qv_power_on.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/backlight/extr_ltv350qv.c_ltv350qv_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ltv350qv = type { i32 }

@LTV_PWRCTL1 = common dso_local global i32 0, align 4
@LTV_VCOM_DISABLE = common dso_local global i32 0, align 4
@LTV_PWRCTL2 = common dso_local global i32 0, align 4
@LTV_VCOML_ENABLE = common dso_local global i32 0, align 4
@LTV_IFCTL = common dso_local global i32 0, align 4
@LTV_NMD = common dso_local global i32 0, align 4
@LTV_REV = common dso_local global i32 0, align 4
@LTV_DATACTL = common dso_local global i32 0, align 4
@LTV_DS_SAME = common dso_local global i32 0, align 4
@LTV_CHS_480 = common dso_local global i32 0, align 4
@LTV_DF_RGB = common dso_local global i32 0, align 4
@LTV_RGB_BGR = common dso_local global i32 0, align 4
@LTV_ENTRY_MODE = common dso_local global i32 0, align 4
@LTV_VSPL_ACTIVE_LOW = common dso_local global i32 0, align 4
@LTV_HSPL_ACTIVE_LOW = common dso_local global i32 0, align 4
@LTV_DPL_SAMPLE_RISING = common dso_local global i32 0, align 4
@LTV_EPL_ACTIVE_LOW = common dso_local global i32 0, align 4
@LTV_SS_RIGHT_TO_LEFT = common dso_local global i32 0, align 4
@LTV_GATECTL1 = common dso_local global i32 0, align 4
@LTV_GATECTL2 = common dso_local global i32 0, align 4
@LTV_NW_INV_1LINE = common dso_local global i32 0, align 4
@LTV_VBP = common dso_local global i32 0, align 4
@LTV_HBP = common dso_local global i32 0, align 4
@LTV_SOTCTL = common dso_local global i32 0, align 4
@LTV_VCOMOUT_ENABLE = common dso_local global i32 0, align 4
@LTV_POWER_ON = common dso_local global i32 0, align 4
@LTV_DSC = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ltv350qv*)* @ltv350qv_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltv350qv_power_on(%struct.ltv350qv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ltv350qv*, align 8
  %4 = alloca i32, align 4
  store %struct.ltv350qv* %0, %struct.ltv350qv** %3, align 8
  %5 = load %struct.ltv350qv*, %struct.ltv350qv** %3, align 8
  %6 = load i32, i32* @LTV_PWRCTL1, align 4
  %7 = call i32 @ltv350qv_write_reg(%struct.ltv350qv* %5, i32 %6, i32 0)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %207

10:                                               ; preds = %1
  %11 = call i32 @msleep(i32 15)
  %12 = load %struct.ltv350qv*, %struct.ltv350qv** %3, align 8
  %13 = load i32, i32* @LTV_PWRCTL1, align 4
  %14 = load i32, i32* @LTV_VCOM_DISABLE, align 4
  %15 = call i32 @ltv350qv_write_reg(%struct.ltv350qv* %12, i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %207

18:                                               ; preds = %10
  %19 = load %struct.ltv350qv*, %struct.ltv350qv** %3, align 8
  %20 = load i32, i32* @LTV_PWRCTL2, align 4
  %21 = load i32, i32* @LTV_VCOML_ENABLE, align 4
  %22 = call i32 @ltv350qv_write_reg(%struct.ltv350qv* %19, i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %202

25:                                               ; preds = %18
  %26 = load %struct.ltv350qv*, %struct.ltv350qv** %3, align 8
  %27 = load i32, i32* @LTV_PWRCTL1, align 4
  %28 = load i32, i32* @LTV_VCOM_DISABLE, align 4
  %29 = call i32 @LTV_DRIVE_CURRENT(i32 5)
  %30 = or i32 %28, %29
  %31 = call i32 @LTV_SUPPLY_CURRENT(i32 5)
  %32 = or i32 %30, %31
  %33 = call i32 @ltv350qv_write_reg(%struct.ltv350qv* %26, i32 %27, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %201

36:                                               ; preds = %25
  %37 = call i32 @msleep(i32 55)
  %38 = load %struct.ltv350qv*, %struct.ltv350qv** %3, align 8
  %39 = load i32, i32* @LTV_IFCTL, align 4
  %40 = load i32, i32* @LTV_NMD, align 4
  %41 = load i32, i32* @LTV_REV, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @LTV_NL(i32 29)
  %44 = or i32 %42, %43
  %45 = call i32 @ltv350qv_write_reg(%struct.ltv350qv* %38, i32 %39, i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load %struct.ltv350qv*, %struct.ltv350qv** %3, align 8
  %47 = load i32, i32* @LTV_DATACTL, align 4
  %48 = load i32, i32* @LTV_DS_SAME, align 4
  %49 = load i32, i32* @LTV_CHS_480, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @LTV_DF_RGB, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @LTV_RGB_BGR, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @ltv350qv_write_reg(%struct.ltv350qv* %46, i32 %47, i32 %54)
  %56 = load i32, i32* %4, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %4, align 4
  %58 = load %struct.ltv350qv*, %struct.ltv350qv** %3, align 8
  %59 = load i32, i32* @LTV_ENTRY_MODE, align 4
  %60 = load i32, i32* @LTV_VSPL_ACTIVE_LOW, align 4
  %61 = load i32, i32* @LTV_HSPL_ACTIVE_LOW, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @LTV_DPL_SAMPLE_RISING, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @LTV_EPL_ACTIVE_LOW, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @LTV_SS_RIGHT_TO_LEFT, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @ltv350qv_write_reg(%struct.ltv350qv* %58, i32 %59, i32 %68)
  %70 = load i32, i32* %4, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %4, align 4
  %72 = load %struct.ltv350qv*, %struct.ltv350qv** %3, align 8
  %73 = load i32, i32* @LTV_GATECTL1, align 4
  %74 = call i32 @LTV_CLW(i32 3)
  %75 = call i32 @ltv350qv_write_reg(%struct.ltv350qv* %72, i32 %73, i32 %74)
  %76 = load i32, i32* %4, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %4, align 4
  %78 = load %struct.ltv350qv*, %struct.ltv350qv** %3, align 8
  %79 = load i32, i32* @LTV_GATECTL2, align 4
  %80 = load i32, i32* @LTV_NW_INV_1LINE, align 4
  %81 = call i32 @LTV_FWI(i32 3)
  %82 = or i32 %80, %81
  %83 = call i32 @ltv350qv_write_reg(%struct.ltv350qv* %78, i32 %79, i32 %82)
  %84 = load i32, i32* %4, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %4, align 4
  %86 = load %struct.ltv350qv*, %struct.ltv350qv** %3, align 8
  %87 = load i32, i32* @LTV_VBP, align 4
  %88 = call i32 @ltv350qv_write_reg(%struct.ltv350qv* %86, i32 %87, i32 10)
  %89 = load i32, i32* %4, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %4, align 4
  %91 = load %struct.ltv350qv*, %struct.ltv350qv** %3, align 8
  %92 = load i32, i32* @LTV_HBP, align 4
  %93 = call i32 @ltv350qv_write_reg(%struct.ltv350qv* %91, i32 %92, i32 33)
  %94 = load i32, i32* %4, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %4, align 4
  %96 = load %struct.ltv350qv*, %struct.ltv350qv** %3, align 8
  %97 = load i32, i32* @LTV_SOTCTL, align 4
  %98 = call i32 @LTV_SDT(i32 3)
  %99 = call i32 @LTV_EQ(i32 0)
  %100 = or i32 %98, %99
  %101 = call i32 @ltv350qv_write_reg(%struct.ltv350qv* %96, i32 %97, i32 %100)
  %102 = load i32, i32* %4, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %4, align 4
  %104 = load %struct.ltv350qv*, %struct.ltv350qv** %3, align 8
  %105 = call i32 @LTV_GAMMA(i32 0)
  %106 = call i32 @ltv350qv_write_reg(%struct.ltv350qv* %104, i32 %105, i32 259)
  %107 = load i32, i32* %4, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %4, align 4
  %109 = load %struct.ltv350qv*, %struct.ltv350qv** %3, align 8
  %110 = call i32 @LTV_GAMMA(i32 1)
  %111 = call i32 @ltv350qv_write_reg(%struct.ltv350qv* %109, i32 %110, i32 769)
  %112 = load i32, i32* %4, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %4, align 4
  %114 = load %struct.ltv350qv*, %struct.ltv350qv** %3, align 8
  %115 = call i32 @LTV_GAMMA(i32 2)
  %116 = call i32 @ltv350qv_write_reg(%struct.ltv350qv* %114, i32 %115, i32 7951)
  %117 = load i32, i32* %4, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %4, align 4
  %119 = load %struct.ltv350qv*, %struct.ltv350qv** %3, align 8
  %120 = call i32 @LTV_GAMMA(i32 3)
  %121 = call i32 @ltv350qv_write_reg(%struct.ltv350qv* %119, i32 %120, i32 7951)
  %122 = load i32, i32* %4, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %4, align 4
  %124 = load %struct.ltv350qv*, %struct.ltv350qv** %3, align 8
  %125 = call i32 @LTV_GAMMA(i32 4)
  %126 = call i32 @ltv350qv_write_reg(%struct.ltv350qv* %124, i32 %125, i32 1799)
  %127 = load i32, i32* %4, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %4, align 4
  %129 = load %struct.ltv350qv*, %struct.ltv350qv** %3, align 8
  %130 = call i32 @LTV_GAMMA(i32 5)
  %131 = call i32 @ltv350qv_write_reg(%struct.ltv350qv* %129, i32 %130, i32 775)
  %132 = load i32, i32* %4, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %4, align 4
  %134 = load %struct.ltv350qv*, %struct.ltv350qv** %3, align 8
  %135 = call i32 @LTV_GAMMA(i32 6)
  %136 = call i32 @ltv350qv_write_reg(%struct.ltv350qv* %134, i32 %135, i32 1799)
  %137 = load i32, i32* %4, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %4, align 4
  %139 = load %struct.ltv350qv*, %struct.ltv350qv** %3, align 8
  %140 = call i32 @LTV_GAMMA(i32 7)
  %141 = call i32 @ltv350qv_write_reg(%struct.ltv350qv* %139, i32 %140, i32 0)
  %142 = load i32, i32* %4, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %4, align 4
  %144 = load %struct.ltv350qv*, %struct.ltv350qv** %3, align 8
  %145 = call i32 @LTV_GAMMA(i32 8)
  %146 = call i32 @ltv350qv_write_reg(%struct.ltv350qv* %144, i32 %145, i32 4)
  %147 = load i32, i32* %4, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %4, align 4
  %149 = load %struct.ltv350qv*, %struct.ltv350qv** %3, align 8
  %150 = call i32 @LTV_GAMMA(i32 9)
  %151 = call i32 @ltv350qv_write_reg(%struct.ltv350qv* %149, i32 %150, i32 0)
  %152 = load i32, i32* %4, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %4, align 4
  %154 = load i32, i32* %4, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %36
  br label %200

157:                                              ; preds = %36
  %158 = call i32 @msleep(i32 20)
  %159 = load %struct.ltv350qv*, %struct.ltv350qv** %3, align 8
  %160 = load i32, i32* @LTV_PWRCTL1, align 4
  %161 = load i32, i32* @LTV_VCOM_DISABLE, align 4
  %162 = load i32, i32* @LTV_VCOMOUT_ENABLE, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @LTV_POWER_ON, align 4
  %165 = or i32 %163, %164
  %166 = call i32 @LTV_DRIVE_CURRENT(i32 5)
  %167 = or i32 %165, %166
  %168 = call i32 @LTV_SUPPLY_CURRENT(i32 5)
  %169 = or i32 %167, %168
  %170 = call i32 @ltv350qv_write_reg(%struct.ltv350qv* %159, i32 %160, i32 %169)
  store i32 %170, i32* %4, align 4
  %171 = load %struct.ltv350qv*, %struct.ltv350qv** %3, align 8
  %172 = load i32, i32* @LTV_GATECTL2, align 4
  %173 = load i32, i32* @LTV_NW_INV_1LINE, align 4
  %174 = load i32, i32* @LTV_DSC, align 4
  %175 = or i32 %173, %174
  %176 = call i32 @LTV_FWI(i32 3)
  %177 = or i32 %175, %176
  %178 = call i32 @ltv350qv_write_reg(%struct.ltv350qv* %171, i32 %172, i32 %177)
  %179 = load i32, i32* %4, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %4, align 4
  %181 = load i32, i32* %4, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %157
  br label %185

184:                                              ; preds = %157
  store i32 0, i32* %2, align 4
  br label %214

185:                                              ; preds = %183
  %186 = load %struct.ltv350qv*, %struct.ltv350qv** %3, align 8
  %187 = load i32, i32* @LTV_PWRCTL1, align 4
  %188 = load i32, i32* @LTV_VCOM_DISABLE, align 4
  %189 = call i32 @LTV_DRIVE_CURRENT(i32 5)
  %190 = or i32 %188, %189
  %191 = call i32 @LTV_SUPPLY_CURRENT(i32 5)
  %192 = or i32 %190, %191
  %193 = call i32 @ltv350qv_write_reg(%struct.ltv350qv* %186, i32 %187, i32 %192)
  %194 = load %struct.ltv350qv*, %struct.ltv350qv** %3, align 8
  %195 = load i32, i32* @LTV_GATECTL2, align 4
  %196 = load i32, i32* @LTV_NW_INV_1LINE, align 4
  %197 = call i32 @LTV_FWI(i32 3)
  %198 = or i32 %196, %197
  %199 = call i32 @ltv350qv_write_reg(%struct.ltv350qv* %194, i32 %195, i32 %198)
  br label %200

200:                                              ; preds = %185, %156
  br label %201

201:                                              ; preds = %200, %35
  br label %202

202:                                              ; preds = %201, %24
  %203 = load %struct.ltv350qv*, %struct.ltv350qv** %3, align 8
  %204 = load i32, i32* @LTV_PWRCTL2, align 4
  %205 = call i32 @ltv350qv_write_reg(%struct.ltv350qv* %203, i32 %204, i32 0)
  %206 = call i32 @msleep(i32 1)
  br label %207

207:                                              ; preds = %202, %17, %9
  %208 = load %struct.ltv350qv*, %struct.ltv350qv** %3, align 8
  %209 = load i32, i32* @LTV_PWRCTL1, align 4
  %210 = load i32, i32* @LTV_VCOM_DISABLE, align 4
  %211 = call i32 @ltv350qv_write_reg(%struct.ltv350qv* %208, i32 %209, i32 %210)
  %212 = load i32, i32* @EIO, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %2, align 4
  br label %214

214:                                              ; preds = %207, %184
  %215 = load i32, i32* %2, align 4
  ret i32 %215
}

declare dso_local i32 @ltv350qv_write_reg(%struct.ltv350qv*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @LTV_DRIVE_CURRENT(i32) #1

declare dso_local i32 @LTV_SUPPLY_CURRENT(i32) #1

declare dso_local i32 @LTV_NL(i32) #1

declare dso_local i32 @LTV_CLW(i32) #1

declare dso_local i32 @LTV_FWI(i32) #1

declare dso_local i32 @LTV_SDT(i32) #1

declare dso_local i32 @LTV_EQ(i32) #1

declare dso_local i32 @LTV_GAMMA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
