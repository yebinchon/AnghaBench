; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8190_rtl8256.c_phy_RF8256_Config_ParaFile.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8190_rtl8256.c_phy_RF8256_Config_ParaFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.r8192_priv = type { i64, %struct.TYPE_2__* }

@RT_STATUS_SUCCESS = common dso_local global i64 0, align 8
@bRFSI_RFENV = common dso_local global i32 0, align 4
@b3WireAddressLength = common dso_local global i32 0, align 4
@b3WireDataLength = common dso_local global i32 0, align 4
@bMask12Bits = common dso_local global i32 0, align 4
@HW90_BLOCK_RF = common dso_local global i32 0, align 4
@COMP_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"PHY_RF8256_Config():Check Radio[%d] Fail!!\0A\00", align 1
@COMP_RF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"RF %d %d register final value: %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"phy_RF8256_Config_ParaFile():Radio[%d] Fail!!\00", align 1
@COMP_PHY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"PHY Initialization Success\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"PHY Initialization failed\0A\00", align 1
@RT_STATUS_FAILURE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @phy_RF8256_Config_ParaFile(%struct.net_device* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca %struct.r8192_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 0, i32* %4, align 4
  %15 = load i64, i64* @RT_STATUS_SUCCESS, align 8
  store i64 %15, i64* %6, align 8
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %16)
  store %struct.r8192_priv* %17, %struct.r8192_priv** %8, align 8
  store i32 3, i32* %9, align 4
  store i32 2033, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i64 5, i64* %12, align 8
  store i64 5, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 131, i64* %5, align 8
  br label %18

18:                                               ; preds = %231, %1
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %21 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %234

24:                                               ; preds = %18
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @rtl8192_phy_CheckIsLegalRFPath(%struct.net_device* %25, i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %231

30:                                               ; preds = %24
  %31 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %32 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  store %struct.TYPE_2__* %35, %struct.TYPE_2__** %7, align 8
  %36 = load i64, i64* %5, align 8
  switch i64 %36, label %52 [
    i64 131, label %37
    i64 129, label %37
    i64 130, label %44
    i64 128, label %44
  ]

37:                                               ; preds = %30, %30
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @bRFSI_RFENV, align 4
  %43 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %38, i32 %41, i32 %42)
  store i32 %43, i32* %4, align 4
  br label %52

44:                                               ; preds = %30, %30
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @bRFSI_RFENV, align 4
  %50 = shl i32 %49, 16
  %51 = call i32 @rtl8192_QueryBBReg(%struct.net_device* %45, i32 %48, i32 %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %30, %44, %37
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @bRFSI_RFENV, align 4
  %58 = shl i32 %57, 16
  %59 = call i32 @rtl8192_setBBreg(%struct.net_device* %53, i32 %56, i32 %58, i32 1)
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @bRFSI_RFENV, align 4
  %65 = call i32 @rtl8192_setBBreg(%struct.net_device* %60, i32 %63, i32 %64, i32 1)
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @b3WireAddressLength, align 4
  %71 = call i32 @rtl8192_setBBreg(%struct.net_device* %66, i32 %69, i32 %70, i32 0)
  %72 = load %struct.net_device*, %struct.net_device** %3, align 8
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @b3WireDataLength, align 4
  %77 = call i32 @rtl8192_setBBreg(%struct.net_device* %72, i32 %75, i32 %76, i32 0)
  %78 = load %struct.net_device*, %struct.net_device** %3, align 8
  %79 = load i64, i64* %5, align 8
  %80 = load i32, i32* @bMask12Bits, align 4
  %81 = call i32 @rtl8192_phy_SetRFReg(%struct.net_device* %78, i64 %79, i32 0, i32 %80, i32 191)
  %82 = load %struct.net_device*, %struct.net_device** %3, align 8
  %83 = load i32, i32* @HW90_BLOCK_RF, align 4
  %84 = load i64, i64* %5, align 8
  %85 = call i64 @rtl8192_phy_checkBBAndRF(%struct.net_device* %82, i32 %83, i64 %84)
  store i64 %85, i64* %6, align 8
  %86 = load i64, i64* %6, align 8
  %87 = load i64, i64* @RT_STATUS_SUCCESS, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %52
  %90 = load i32, i32* @COMP_ERR, align 4
  %91 = load i64, i64* %5, align 8
  %92 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %90, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %91)
  br label %238

93:                                               ; preds = %52
  %94 = load i64, i64* %12, align 8
  store i64 %94, i64* %13, align 8
  store i32 0, i32* %11, align 4
  %95 = load i64, i64* %5, align 8
  switch i64 %95, label %204 [
    i64 131, label %96
    i64 130, label %123
    i64 129, label %150
    i64 128, label %177
  ]

96:                                               ; preds = %93
  br label %97

97:                                               ; preds = %106, %96
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load i64, i64* %13, align 8
  %103 = icmp ne i64 %102, 0
  br label %104

104:                                              ; preds = %101, %97
  %105 = phi i1 [ false, %97 ], [ %103, %101 ]
  br i1 %105, label %106, label %122

106:                                              ; preds = %104
  %107 = load %struct.net_device*, %struct.net_device** %3, align 8
  %108 = load i64, i64* %5, align 8
  %109 = call i64 @rtl8192_phy_ConfigRFWithHeaderFile(%struct.net_device* %107, i64 %108)
  store i64 %109, i64* %14, align 8
  %110 = load %struct.net_device*, %struct.net_device** %3, align 8
  %111 = load i64, i64* %5, align 8
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @bMask12Bits, align 4
  %114 = call i32 @rtl8192_phy_QueryRFReg(%struct.net_device* %110, i64 %111, i32 %112, i32 %113)
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* @COMP_RF, align 4
  %116 = load i64, i64* %5, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %11, align 4
  %119 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %115, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %116, i32 %117, i32 %118)
  %120 = load i64, i64* %13, align 8
  %121 = add i64 %120, -1
  store i64 %121, i64* %13, align 8
  br label %97

122:                                              ; preds = %104
  br label %204

123:                                              ; preds = %93
  br label %124

124:                                              ; preds = %133, %123
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load i64, i64* %13, align 8
  %130 = icmp ne i64 %129, 0
  br label %131

131:                                              ; preds = %128, %124
  %132 = phi i1 [ false, %124 ], [ %130, %128 ]
  br i1 %132, label %133, label %149

133:                                              ; preds = %131
  %134 = load %struct.net_device*, %struct.net_device** %3, align 8
  %135 = load i64, i64* %5, align 8
  %136 = call i64 @rtl8192_phy_ConfigRFWithHeaderFile(%struct.net_device* %134, i64 %135)
  store i64 %136, i64* %14, align 8
  %137 = load %struct.net_device*, %struct.net_device** %3, align 8
  %138 = load i64, i64* %5, align 8
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* @bMask12Bits, align 4
  %141 = call i32 @rtl8192_phy_QueryRFReg(%struct.net_device* %137, i64 %138, i32 %139, i32 %140)
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* @COMP_RF, align 4
  %143 = load i64, i64* %5, align 8
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %11, align 4
  %146 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %142, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %143, i32 %144, i32 %145)
  %147 = load i64, i64* %13, align 8
  %148 = add i64 %147, -1
  store i64 %148, i64* %13, align 8
  br label %124

149:                                              ; preds = %131
  br label %204

150:                                              ; preds = %93
  br label %151

151:                                              ; preds = %160, %150
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* %10, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = load i64, i64* %13, align 8
  %157 = icmp ne i64 %156, 0
  br label %158

158:                                              ; preds = %155, %151
  %159 = phi i1 [ false, %151 ], [ %157, %155 ]
  br i1 %159, label %160, label %176

160:                                              ; preds = %158
  %161 = load %struct.net_device*, %struct.net_device** %3, align 8
  %162 = load i64, i64* %5, align 8
  %163 = call i64 @rtl8192_phy_ConfigRFWithHeaderFile(%struct.net_device* %161, i64 %162)
  store i64 %163, i64* %14, align 8
  %164 = load %struct.net_device*, %struct.net_device** %3, align 8
  %165 = load i64, i64* %5, align 8
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* @bMask12Bits, align 4
  %168 = call i32 @rtl8192_phy_QueryRFReg(%struct.net_device* %164, i64 %165, i32 %166, i32 %167)
  store i32 %168, i32* %11, align 4
  %169 = load i32, i32* @COMP_RF, align 4
  %170 = load i64, i64* %5, align 8
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* %11, align 4
  %173 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %169, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %170, i32 %171, i32 %172)
  %174 = load i64, i64* %13, align 8
  %175 = add i64 %174, -1
  store i64 %175, i64* %13, align 8
  br label %151

176:                                              ; preds = %158
  br label %204

177:                                              ; preds = %93
  br label %178

178:                                              ; preds = %187, %177
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* %10, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %178
  %183 = load i64, i64* %13, align 8
  %184 = icmp ne i64 %183, 0
  br label %185

185:                                              ; preds = %182, %178
  %186 = phi i1 [ false, %178 ], [ %184, %182 ]
  br i1 %186, label %187, label %203

187:                                              ; preds = %185
  %188 = load %struct.net_device*, %struct.net_device** %3, align 8
  %189 = load i64, i64* %5, align 8
  %190 = call i64 @rtl8192_phy_ConfigRFWithHeaderFile(%struct.net_device* %188, i64 %189)
  store i64 %190, i64* %14, align 8
  %191 = load %struct.net_device*, %struct.net_device** %3, align 8
  %192 = load i64, i64* %5, align 8
  %193 = load i32, i32* %9, align 4
  %194 = load i32, i32* @bMask12Bits, align 4
  %195 = call i32 @rtl8192_phy_QueryRFReg(%struct.net_device* %191, i64 %192, i32 %193, i32 %194)
  store i32 %195, i32* %11, align 4
  %196 = load i32, i32* @COMP_RF, align 4
  %197 = load i64, i64* %5, align 8
  %198 = load i32, i32* %9, align 4
  %199 = load i32, i32* %11, align 4
  %200 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %196, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %197, i32 %198, i32 %199)
  %201 = load i64, i64* %13, align 8
  %202 = add i64 %201, -1
  store i64 %202, i64* %13, align 8
  br label %178

203:                                              ; preds = %185
  br label %204

204:                                              ; preds = %93, %203, %176, %149, %122
  %205 = load i64, i64* %5, align 8
  switch i64 %205, label %223 [
    i64 131, label %206
    i64 129, label %206
    i64 130, label %214
    i64 128, label %214
  ]

206:                                              ; preds = %204, %204
  %207 = load %struct.net_device*, %struct.net_device** %3, align 8
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @bRFSI_RFENV, align 4
  %212 = load i32, i32* %4, align 4
  %213 = call i32 @rtl8192_setBBreg(%struct.net_device* %207, i32 %210, i32 %211, i32 %212)
  br label %223

214:                                              ; preds = %204, %204
  %215 = load %struct.net_device*, %struct.net_device** %3, align 8
  %216 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @bRFSI_RFENV, align 4
  %220 = shl i32 %219, 16
  %221 = load i32, i32* %4, align 4
  %222 = call i32 @rtl8192_setBBreg(%struct.net_device* %215, i32 %218, i32 %220, i32 %221)
  br label %223

223:                                              ; preds = %204, %214, %206
  %224 = load i64, i64* %14, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %223
  %227 = load i32, i32* @COMP_ERR, align 4
  %228 = load i64, i64* %5, align 8
  %229 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %227, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %228)
  br label %238

230:                                              ; preds = %223
  br label %231

231:                                              ; preds = %230, %29
  %232 = load i64, i64* %5, align 8
  %233 = add i64 %232, 1
  store i64 %233, i64* %5, align 8
  br label %18

234:                                              ; preds = %18
  %235 = load i32, i32* @COMP_PHY, align 4
  %236 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %235, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %237 = load i64, i64* @RT_STATUS_SUCCESS, align 8
  store i64 %237, i64* %2, align 8
  br label %242

238:                                              ; preds = %226, %89
  %239 = load i32, i32* @COMP_ERR, align 4
  %240 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %239, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %241 = load i64, i64* @RT_STATUS_FAILURE, align 8
  store i64 %241, i64* %2, align 8
  br label %242

242:                                              ; preds = %238, %234
  %243 = load i64, i64* %2, align 8
  ret i64 %243
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @rtl8192_phy_CheckIsLegalRFPath(%struct.net_device*, i64) #1

declare dso_local i32 @rtl8192_QueryBBReg(%struct.net_device*, i32, i32) #1

declare dso_local i32 @rtl8192_setBBreg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @rtl8192_phy_SetRFReg(%struct.net_device*, i64, i32, i32, i32) #1

declare dso_local i64 @rtl8192_phy_checkBBAndRF(%struct.net_device*, i32, i64) #1

declare dso_local i32 @RT_TRACE(i32, i8*, ...) #1

declare dso_local i64 @rtl8192_phy_ConfigRFWithHeaderFile(%struct.net_device*, i64) #1

declare dso_local i32 @rtl8192_phy_QueryRFReg(%struct.net_device*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
