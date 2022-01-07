; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192SU_HwConfigureRTL8192SUsb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_rtl8192SU_HwConfigureRTL8192SUsb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BW_OPMODE_20MHZ = common dso_local global i32 0, align 4
@RATE_ALL_CCK = common dso_local global i32 0, align 4
@BW_OPMODE_5G = common dso_local global i32 0, align 4
@RATE_ALL_OFDM_AG = common dso_local global i32 0, align 4
@RATE_ALL_OFDM_1SS = common dso_local global i32 0, align 4
@RATE_ALL_OFDM_2SS = common dso_local global i32 0, align 4
@INIRTSMCS_SEL = common dso_local global i64 0, align 8
@__const.rtl8192SU_HwConfigureRTL8192SUsb.val = private unnamed_addr constant [4 x i32] [i32 14, i32 14, i32 10, i32 10], align 16
@SIFS_CCK = common dso_local global i64 0, align 8
@SIFS_OFDM = common dso_local global i64 0, align 8
@BW_OPMODE = common dso_local global i64 0, align 8
@DARFRC = common dso_local global i64 0, align 8
@RARFRC = common dso_local global i64 0, align 8
@ARFR0 = common dso_local global i64 0, align 8
@AGGLEN_LMT_H = common dso_local global i64 0, align 8
@AGGLEN_LMT_L = common dso_local global i64 0, align 8
@NAV_PROT_LEN = common dso_local global i64 0, align 8
@TXOP_STALL_CTRL = common dso_local global i64 0, align 8
@MLT = common dso_local global i64 0, align 8
@ACK_TIMEOUT = common dso_local global i64 0, align 8
@CFEND_TH = common dso_local global i64 0, align 8
@COMP_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Initializeadapter: RF_Type%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(1T1R)\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(1T2R)\00", align 1
@MAX_MSS_DENSITY_1T = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Initializeadapter:RF_Type(2T2R)\0A\00", align 1
@MAX_MSS_DENSITY_2T = common dso_local global i32 0, align 4
@AMPDU_MIN_SPACE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8192SU_HwConfigureRTL8192SUsb(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %10)
  store %struct.r8192_priv* %11, %struct.r8192_priv** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %13 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %81 [
    i32 131, label %17
    i32 133, label %21
    i32 130, label %27
    i32 132, label %35
    i32 129, label %61
    i32 128, label %73
  ]

17:                                               ; preds = %1
  %18 = load i32, i32* @BW_OPMODE_20MHZ, align 4
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @RATE_ALL_CCK, align 4
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @RATE_ALL_CCK, align 4
  store i32 %20, i32* %6, align 4
  br label %81

21:                                               ; preds = %1
  %22 = load i32, i32* @BW_OPMODE_5G, align 4
  %23 = load i32, i32* @BW_OPMODE_20MHZ, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @RATE_ALL_OFDM_AG, align 4
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @RATE_ALL_OFDM_AG, align 4
  store i32 %26, i32* %6, align 4
  br label %81

27:                                               ; preds = %1
  %28 = load i32, i32* @BW_OPMODE_20MHZ, align 4
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @RATE_ALL_CCK, align 4
  %30 = load i32, i32* @RATE_ALL_OFDM_AG, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @RATE_ALL_CCK, align 4
  %33 = load i32, i32* @RATE_ALL_OFDM_AG, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %6, align 4
  br label %81

35:                                               ; preds = %1
  %36 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %37 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load i32, i32* @BW_OPMODE_20MHZ, align 4
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* @RATE_ALL_CCK, align 4
  %43 = load i32, i32* @RATE_ALL_OFDM_AG, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* @RATE_ALL_CCK, align 4
  %46 = load i32, i32* @RATE_ALL_OFDM_AG, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %6, align 4
  br label %60

48:                                               ; preds = %35
  %49 = load i32, i32* @BW_OPMODE_20MHZ, align 4
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* @RATE_ALL_CCK, align 4
  %51 = load i32, i32* @RATE_ALL_OFDM_AG, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @RATE_ALL_OFDM_1SS, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @RATE_ALL_OFDM_2SS, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* @RATE_ALL_CCK, align 4
  %58 = load i32, i32* @RATE_ALL_OFDM_AG, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %48, %40
  br label %81

61:                                               ; preds = %1
  %62 = load i32, i32* @BW_OPMODE_20MHZ, align 4
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* @RATE_ALL_CCK, align 4
  %64 = load i32, i32* @RATE_ALL_OFDM_AG, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @RATE_ALL_OFDM_1SS, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @RATE_ALL_OFDM_2SS, align 4
  %69 = or i32 %67, %68
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* @RATE_ALL_CCK, align 4
  %71 = load i32, i32* @RATE_ALL_OFDM_AG, align 4
  %72 = or i32 %70, %71
  store i32 %72, i32* %6, align 4
  br label %81

73:                                               ; preds = %1
  %74 = load i32, i32* @BW_OPMODE_5G, align 4
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* @RATE_ALL_OFDM_AG, align 4
  %76 = load i32, i32* @RATE_ALL_OFDM_1SS, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @RATE_ALL_OFDM_2SS, align 4
  %79 = or i32 %77, %78
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* @RATE_ALL_OFDM_AG, align 4
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %1, %73, %61, %60, %27, %21, %17
  %82 = load %struct.net_device*, %struct.net_device** %2, align 8
  %83 = load i64, i64* @INIRTSMCS_SEL, align 8
  %84 = call i32 @read_nic_byte(%struct.net_device* %82, i64 %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %6, align 4
  %86 = and i32 %85, 1048575
  %87 = shl i32 %86, 8
  %88 = load i32, i32* %7, align 4
  %89 = or i32 %87, %88
  store i32 %89, i32* %6, align 4
  %90 = bitcast [4 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %90, i8* align 16 bitcast ([4 x i32]* @__const.rtl8192SU_HwConfigureRTL8192SUsb.val to i8*), i64 16, i1 false)
  %91 = load %struct.net_device*, %struct.net_device** %2, align 8
  %92 = load i64, i64* @SIFS_CCK, align 8
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %94 = load i32, i32* %93, align 16
  %95 = call i32 @write_nic_byte(%struct.net_device* %91, i64 %92, i32 %94)
  %96 = load %struct.net_device*, %struct.net_device** %2, align 8
  %97 = load i64, i64* @SIFS_CCK, align 8
  %98 = add nsw i64 %97, 1
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @write_nic_byte(%struct.net_device* %96, i64 %98, i32 %100)
  %102 = load %struct.net_device*, %struct.net_device** %2, align 8
  %103 = load i64, i64* @SIFS_OFDM, align 8
  %104 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @write_nic_byte(%struct.net_device* %102, i64 %103, i32 %105)
  %107 = load %struct.net_device*, %struct.net_device** %2, align 8
  %108 = load i64, i64* @SIFS_OFDM, align 8
  %109 = add nsw i64 %108, 1
  %110 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @write_nic_byte(%struct.net_device* %107, i64 %109, i32 %111)
  %113 = load %struct.net_device*, %struct.net_device** %2, align 8
  %114 = load i64, i64* @INIRTSMCS_SEL, align 8
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @write_nic_dword(%struct.net_device* %113, i64 %114, i32 %115)
  %117 = load %struct.net_device*, %struct.net_device** %2, align 8
  %118 = load i64, i64* @BW_OPMODE, align 8
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @write_nic_byte(%struct.net_device* %117, i64 %118, i32 %119)
  %121 = load %struct.net_device*, %struct.net_device** %2, align 8
  %122 = load i64, i64* @DARFRC, align 8
  %123 = call i32 @write_nic_dword(%struct.net_device* %121, i64 %122, i32 33619968)
  %124 = load %struct.net_device*, %struct.net_device** %2, align 8
  %125 = load i64, i64* @DARFRC, align 8
  %126 = add nsw i64 %125, 4
  %127 = call i32 @write_nic_dword(%struct.net_device* %124, i64 %126, i32 100992003)
  %128 = load %struct.net_device*, %struct.net_device** %2, align 8
  %129 = load i64, i64* @RARFRC, align 8
  %130 = call i32 @write_nic_dword(%struct.net_device* %128, i64 %129, i32 33619968)
  %131 = load %struct.net_device*, %struct.net_device** %2, align 8
  %132 = load i64, i64* @RARFRC, align 8
  %133 = add nsw i64 %132, 4
  %134 = call i32 @write_nic_dword(%struct.net_device* %131, i64 %133, i32 100992003)
  store i32 0, i32* %8, align 4
  br label %135

135:                                              ; preds = %146, %81
  %136 = load i32, i32* %8, align 4
  %137 = icmp slt i32 %136, 8
  br i1 %137, label %138, label %149

138:                                              ; preds = %135
  %139 = load %struct.net_device*, %struct.net_device** %2, align 8
  %140 = load i64, i64* @ARFR0, align 8
  %141 = load i32, i32* %8, align 4
  %142 = mul nsw i32 %141, 4
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %140, %143
  %145 = call i32 @write_nic_dword(%struct.net_device* %139, i64 %144, i32 521142256)
  br label %146

146:                                              ; preds = %138
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  br label %135

149:                                              ; preds = %135
  %150 = load %struct.net_device*, %struct.net_device** %2, align 8
  %151 = load i64, i64* @AGGLEN_LMT_H, align 8
  %152 = call i32 @write_nic_byte(%struct.net_device* %150, i64 %151, i32 15)
  %153 = load %struct.net_device*, %struct.net_device** %2, align 8
  %154 = load i64, i64* @AGGLEN_LMT_L, align 8
  %155 = call i32 @write_nic_dword(%struct.net_device* %153, i64 %154, i32 -573082558)
  %156 = load %struct.net_device*, %struct.net_device** %2, align 8
  %157 = load i64, i64* @AGGLEN_LMT_L, align 8
  %158 = add nsw i64 %157, 4
  %159 = call i32 @write_nic_dword(%struct.net_device* %156, i64 %158, i32 -141454)
  %160 = load %struct.net_device*, %struct.net_device** %2, align 8
  %161 = load i64, i64* @NAV_PROT_LEN, align 8
  %162 = call i32 @write_nic_word(%struct.net_device* %160, i64 %161, i32 128)
  %163 = load %struct.net_device*, %struct.net_device** %2, align 8
  %164 = load i64, i64* @TXOP_STALL_CTRL, align 8
  %165 = call i32 @write_nic_byte(%struct.net_device* %163, i64 %164, i32 0)
  %166 = load %struct.net_device*, %struct.net_device** %2, align 8
  %167 = load i64, i64* @MLT, align 8
  %168 = call i32 @write_nic_byte(%struct.net_device* %166, i64 %167, i32 143)
  %169 = load %struct.net_device*, %struct.net_device** %2, align 8
  %170 = load i64, i64* @SIFS_CCK, align 8
  %171 = call i32 @write_nic_word(%struct.net_device* %169, i64 %170, i32 2570)
  %172 = load %struct.net_device*, %struct.net_device** %2, align 8
  %173 = load i64, i64* @SIFS_OFDM, align 8
  %174 = call i32 @write_nic_word(%struct.net_device* %172, i64 %173, i32 3598)
  %175 = load %struct.net_device*, %struct.net_device** %2, align 8
  %176 = load i64, i64* @ACK_TIMEOUT, align 8
  %177 = call i32 @write_nic_byte(%struct.net_device* %175, i64 %176, i32 64)
  %178 = load %struct.net_device*, %struct.net_device** %2, align 8
  %179 = load i64, i64* @CFEND_TH, align 8
  %180 = call i32 @write_nic_byte(%struct.net_device* %178, i64 %179, i32 255)
  %181 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %182 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  switch i32 %183, label %204 [
    i32 136, label %184
    i32 137, label %184
    i32 135, label %197
    i32 134, label %197
  ]

184:                                              ; preds = %149, %149
  %185 = load i32, i32* @COMP_INIT, align 4
  %186 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %187 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp eq i32 %188, 137
  %190 = zext i1 %189 to i64
  %191 = select i1 %189, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %192 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %185, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %191)
  %193 = load i32, i32* @MAX_MSS_DENSITY_1T, align 4
  %194 = shl i32 %193, 3
  %195 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %196 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  br label %204

197:                                              ; preds = %149, %149
  %198 = load i32, i32* @COMP_INIT, align 4
  %199 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %198, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %200 = load i32, i32* @MAX_MSS_DENSITY_2T, align 4
  %201 = shl i32 %200, 3
  %202 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %203 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 4
  br label %204

204:                                              ; preds = %149, %197, %184
  %205 = load %struct.net_device*, %struct.net_device** %2, align 8
  %206 = load i64, i64* @AMPDU_MIN_SPACE, align 8
  %207 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %208 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @write_nic_byte(%struct.net_device* %205, i64 %206, i32 %209)
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @write_nic_byte(%struct.net_device*, i64, i32) #1

declare dso_local i32 @write_nic_dword(%struct.net_device*, i64, i32) #1

declare dso_local i32 @write_nic_word(%struct.net_device*, i64, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
