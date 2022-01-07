; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35reg.c_Wb35Reg_initial.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wb35reg.c_Wb35Reg_initial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_data = type { i64, i32, i32, i32, i64, i64, i32, i32, %struct.wb35_reg }
%struct.wb35_reg = type { i32, i32, i32 }

@RF_DECIDE_BY_INF = common dso_local global i64 0, align 8
@RF_MAXIM_2825 = common dso_local global i64 0, align 8
@RF_MAXIM_2827 = common dso_local global i64 0, align 8
@RF_MAXIM_2828 = common dso_local global i64 0, align 8
@RF_MAXIM_2829 = common dso_local global i64 0, align 8
@RF_MAXIM_V1 = common dso_local global i64 0, align 8
@RF_AIROHA_2230 = common dso_local global i64 0, align 8
@RF_AIROHA_2230S = common dso_local global i64 0, align 8
@RF_AIROHA_7230 = common dso_local global i64 0, align 8
@RF_WB_242 = common dso_local global i64 0, align 8
@RF_WB_242_1 = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@REGION_AUTO = common dso_local global i32 0, align 4
@SCAN_MAX_CHNL_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @Wb35Reg_initial(%struct.hw_data* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.hw_data*, align 8
  %4 = alloca %struct.wb35_reg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hw_data* %0, %struct.hw_data** %3, align 8
  %10 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %11 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %10, i32 0, i32 8
  store %struct.wb35_reg* %11, %struct.wb35_reg** %4, align 8
  %12 = load %struct.wb35_reg*, %struct.wb35_reg** %4, align 8
  %13 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %12, i32 0, i32 2
  %14 = call i32 @spin_lock_init(i32* %13)
  %15 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %16 = call i32 @Wb35Reg_WriteSync(%struct.hw_data* %15, i32 948, i32 135069696)
  %17 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %18 = call i32 @Wb35Reg_ReadSync(%struct.hw_data* %17, i32 948, i32* %5)
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 255
  %21 = load %struct.wb35_reg*, %struct.wb35_reg** %4, align 8
  %22 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.wb35_reg*, %struct.wb35_reg** %4, align 8
  %24 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* @RF_DECIDE_BY_INF, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %107

29:                                               ; preds = %1
  %30 = load %struct.wb35_reg*, %struct.wb35_reg** %4, align 8
  %31 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* @RF_MAXIM_2825, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %99, label %36

36:                                               ; preds = %29
  %37 = load %struct.wb35_reg*, %struct.wb35_reg** %4, align 8
  %38 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* @RF_MAXIM_2827, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %99, label %43

43:                                               ; preds = %36
  %44 = load %struct.wb35_reg*, %struct.wb35_reg** %4, align 8
  %45 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* @RF_MAXIM_2828, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %99, label %50

50:                                               ; preds = %43
  %51 = load %struct.wb35_reg*, %struct.wb35_reg** %4, align 8
  %52 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* @RF_MAXIM_2829, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %99, label %57

57:                                               ; preds = %50
  %58 = load %struct.wb35_reg*, %struct.wb35_reg** %4, align 8
  %59 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* @RF_MAXIM_V1, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %99, label %64

64:                                               ; preds = %57
  %65 = load %struct.wb35_reg*, %struct.wb35_reg** %4, align 8
  %66 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* @RF_AIROHA_2230, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %99, label %71

71:                                               ; preds = %64
  %72 = load %struct.wb35_reg*, %struct.wb35_reg** %4, align 8
  %73 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* @RF_AIROHA_2230S, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %99, label %78

78:                                               ; preds = %71
  %79 = load %struct.wb35_reg*, %struct.wb35_reg** %4, align 8
  %80 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* @RF_AIROHA_7230, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %99, label %85

85:                                               ; preds = %78
  %86 = load %struct.wb35_reg*, %struct.wb35_reg** %4, align 8
  %87 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* @RF_WB_242, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %99, label %92

92:                                               ; preds = %85
  %93 = load %struct.wb35_reg*, %struct.wb35_reg** %4, align 8
  %94 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* @RF_WB_242_1, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %92, %85, %78, %71, %64, %57, %50, %43, %36, %29
  %100 = load %struct.wb35_reg*, %struct.wb35_reg** %4, align 8
  %101 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %105 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  br label %106

106:                                              ; preds = %99, %92
  br label %107

107:                                              ; preds = %106, %1
  %108 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %109 = call i32 @Uxx_power_on_procedure(%struct.hw_data* %108)
  %110 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %111 = call i32 @Uxx_ReadEthernetAddress(%struct.hw_data* %110)
  %112 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %113 = call i32 @Wb35Reg_WriteSync(%struct.hw_data* %112, i32 948, i32 136314880)
  %114 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %115 = call i32 @Wb35Reg_ReadSync(%struct.hw_data* %114, i32 948, i32* %7)
  %116 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %117 = call i32 @Wb35Reg_WriteSync(%struct.hw_data* %116, i32 948, i32 136380416)
  %118 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %119 = call i32 @Wb35Reg_ReadSync(%struct.hw_data* %118, i32 948, i32* %6)
  %120 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %121 = call i32 @Wb35Reg_WriteSync(%struct.hw_data* %120, i32 948, i32 135266304)
  %122 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %123 = call i32 @Wb35Reg_ReadSync(%struct.hw_data* %122, i32 948, i32* %8)
  %124 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %125 = call i32 @Wb35Reg_WriteSync(%struct.hw_data* %124, i32 948, i32 136118272)
  %126 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %127 = call i32 @Wb35Reg_ReadSync(%struct.hw_data* %126, i32 948, i32* %9)
  %128 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %129 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %132 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @ETH_ALEN, align 4
  %135 = call i32 @memcpy(i32 %130, i32 %133, i32 %134)
  %136 = load i32, i32* %6, align 4
  %137 = and i32 %136, 65535
  %138 = sext i32 %137 to i64
  %139 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %140 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %139, i32 0, i32 5
  store i64 %138, i64* %140, align 8
  %141 = load i32, i32* %8, align 4
  %142 = and i32 %141, 255
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %145 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 8
  %146 = load i32, i32* %7, align 4
  %147 = and i32 %146, 255
  %148 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %149 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 4
  %150 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %151 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 255
  br i1 %153, label %154, label %157

154:                                              ; preds = %107
  %155 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %156 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %155, i32 0, i32 2
  store i32 40, i32* %156, align 4
  br label %157

157:                                              ; preds = %154, %107
  %158 = load i32, i32* %9, align 4
  %159 = ashr i32 %158, 8
  %160 = load %struct.wb35_reg*, %struct.wb35_reg** %4, align 8
  %161 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  %162 = load %struct.wb35_reg*, %struct.wb35_reg** %4, align 8
  %163 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = icmp slt i32 %164, 1
  br i1 %165, label %171, label %166

166:                                              ; preds = %157
  %167 = load %struct.wb35_reg*, %struct.wb35_reg** %4, align 8
  %168 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp sgt i32 %169, 6
  br i1 %170, label %171, label %175

171:                                              ; preds = %166, %157
  %172 = load i32, i32* @REGION_AUTO, align 4
  %173 = load %struct.wb35_reg*, %struct.wb35_reg** %4, align 8
  %174 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  br label %175

175:                                              ; preds = %171, %166
  %176 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %177 = call i32 @GetTxVgaFromEEPROM(%struct.hw_data* %176)
  %178 = load i32, i32* %9, align 4
  %179 = and i32 %178, 255
  %180 = mul nsw i32 %179, 10
  %181 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %182 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %181, i32 0, i32 3
  store i32 %180, i32* %182, align 8
  %183 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %184 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 8
  %186 = icmp eq i32 %185, 2550
  br i1 %186, label %192, label %187

187:                                              ; preds = %175
  %188 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %189 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = icmp slt i32 %190, 10
  br i1 %191, label %192, label %196

192:                                              ; preds = %187, %175
  %193 = load i32, i32* @SCAN_MAX_CHNL_TIME, align 4
  %194 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %195 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %194, i32 0, i32 3
  store i32 %193, i32* %195, align 8
  br label %196

196:                                              ; preds = %192, %187
  %197 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %198 = call i32 @RFSynthesizer_initial(%struct.hw_data* %197)
  %199 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %200 = call i32 @BBProcessor_initial(%struct.hw_data* %199)
  %201 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %202 = call i32 @Wb35Reg_phy_calibration(%struct.hw_data* %201)
  %203 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %204 = call i32 @Mxx_initial(%struct.hw_data* %203)
  %205 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %206 = call i32 @Dxx_initial(%struct.hw_data* %205)
  %207 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %208 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %207, i32 0, i32 4
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %196
  store i8 0, i8* %2, align 1
  br label %213

212:                                              ; preds = %196
  store i8 1, i8* %2, align 1
  br label %213

213:                                              ; preds = %212, %211
  %214 = load i8, i8* %2, align 1
  ret i8 %214
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @Wb35Reg_WriteSync(%struct.hw_data*, i32, i32) #1

declare dso_local i32 @Wb35Reg_ReadSync(%struct.hw_data*, i32, i32*) #1

declare dso_local i32 @Uxx_power_on_procedure(%struct.hw_data*) #1

declare dso_local i32 @Uxx_ReadEthernetAddress(%struct.hw_data*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @GetTxVgaFromEEPROM(%struct.hw_data*) #1

declare dso_local i32 @RFSynthesizer_initial(%struct.hw_data*) #1

declare dso_local i32 @BBProcessor_initial(%struct.hw_data*) #1

declare dso_local i32 @Wb35Reg_phy_calibration(%struct.hw_data*) #1

declare dso_local i32 @Mxx_initial(%struct.hw_data*) #1

declare dso_local i32 @Dxx_initial(%struct.hw_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
