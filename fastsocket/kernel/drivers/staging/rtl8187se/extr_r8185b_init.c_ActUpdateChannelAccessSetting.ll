; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_ActUpdateChannelAccessSetting.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_ActUpdateChannelAccessSetting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i32 (%struct.TYPE_33__*, i32, i32)* }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_35__ = type { i64, i64, %struct.TYPE_37__ }
%struct.TYPE_37__ = type { i32* }
%struct.net_device = type { i32 }
%struct.TYPE_29__ = type { i32, i32, i32, i32, i32, i32 }
%struct.r8180_priv = type { %struct.ieee80211_device* }
%struct.ieee80211_device = type { i64, %struct.TYPE_40__ }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_32__ = type { %struct.TYPE_43__, i64 }
%struct.TYPE_43__ = type { i32, %struct.TYPE_42__, %struct.TYPE_39__ }
%struct.TYPE_42__ = type { %struct.TYPE_41__ }
%struct.TYPE_41__ = type { i32, i32, i64 }
%struct.TYPE_39__ = type { %struct.TYPE_38__ }
%struct.TYPE_38__ = type { i32, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__, %struct.TYPE_25__, i64 }
%struct.TYPE_26__ = type { %struct.TYPE_44__ }
%struct.TYPE_44__ = type { i64, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64, i64 }
%struct.TYPE_31__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i64, i64 }

@SIFS = common dso_local global i32 0, align 4
@SLOT = common dso_local global i32 0, align 4
@aSifsTime = common dso_local global i32 0, align 4
@EIFS = common dso_local global i32 0, align 4
@AckTimeOutReg = common dso_local global i32 0, align 4
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@AC_MAX = common dso_local global i64 0, align 8
@AC_PARAM_TXOP_LIMIT_OFFSET = common dso_local global i32 0, align 4
@AC_PARAM_ECW_MAX_OFFSET = common dso_local global i32 0, align 4
@AC_PARAM_ECW_MIN_OFFSET = common dso_local global i32 0, align 4
@AC_PARAM_AIFS_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"SetHwReg8185(): invalid ACI: %d !\0A\00", align 1
@BEQ_ACM_EN = common dso_local global i32 0, align 4
@BEQ_ACM_CTL = common dso_local global i32 0, align 4
@ACM_HW_EN = common dso_local global i32 0, align 4
@VIQ_ACM_EN = common dso_local global i32 0, align 4
@VIQ_ACM_CTL = common dso_local global i32 0, align 4
@VOQ_ACM_EN = common dso_local global i32 0, align 4
@VOQ_ACM_CTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"SetHwReg8185(): [HW_VAR_ACM_CTRL] ACM set failed: eACI is %d\0A\00", align 1
@ACM_CONTROL = common dso_local global i32 0, align 4
@Adapter = common dso_local global %struct.TYPE_33__* null, align 8
@HW_VAR_AC_PARAM = common dso_local global i32 0, align 4
@QOS_DISABLE = common dso_local global i64 0, align 8
@pHalData = common dso_local global %struct.TYPE_36__* null, align 8
@pStaQos = common dso_local global %struct.TYPE_35__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ActUpdateChannelAccessSetting(%struct.net_device* %0, i64 %1, %struct.TYPE_29__* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca %struct.r8180_priv*, align 8
  %8 = alloca %struct.ieee80211_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_32__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_30__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_31__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_29__* %2, %struct.TYPE_29__** %6, align 8
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = call %struct.r8180_priv* @ieee80211_priv(%struct.net_device* %20)
  store %struct.r8180_priv* %21, %struct.r8180_priv** %7, align 8
  %22 = load %struct.r8180_priv*, %struct.r8180_priv** %7, align 8
  %23 = getelementptr inbounds %struct.r8180_priv, %struct.r8180_priv* %22, i32 0, i32 0
  %24 = load %struct.ieee80211_device*, %struct.ieee80211_device** %23, align 8
  store %struct.ieee80211_device* %24, %struct.ieee80211_device** %8, align 8
  store i32 0, i32* %11, align 4
  %25 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %25, i32 0, i32 0
  store i32 34, i32* %26, align 4
  %27 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %27, i32 0, i32 1
  store i32 28, i32* %28, align 4
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %29, i32 0, i32 2
  store i32 9, i32* %30, align 4
  %31 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %31, i32 0, i32 3
  store i32 91, i32* %32, align 4
  %33 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %33, i32 0, i32 4
  store i32 3, i32* %34, align 4
  %35 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %35, i32 0, i32 5
  store i32 7, i32* %36, align 4
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = load i32, i32* @SIFS, align 4
  %39 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @write_nic_byte(%struct.net_device* %37, i32 %38, i32 %41)
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = load i32, i32* @SLOT, align 4
  %45 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @write_nic_byte(%struct.net_device* %43, i32 %44, i32 %47)
  %49 = load i32, i32* @aSifsTime, align 4
  %50 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 2, %52
  %54 = add nsw i32 %49, %53
  store i32 %54, i32* %12, align 4
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = load i32, i32* @EIFS, align 4
  %57 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @write_nic_byte(%struct.net_device* %55, i32 %56, i32 %59)
  %61 = load %struct.net_device*, %struct.net_device** %4, align 8
  %62 = load i32, i32* @AckTimeOutReg, align 4
  %63 = call i32 @write_nic_byte(%struct.net_device* %61, i32 %62, i32 91)
  store i32 1, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %268

66:                                               ; preds = %3
  %67 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %10, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %10, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %70, i32 0, i32 0
  store i32 2, i32* %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %10, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %10, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %81, i32 0, i32 0
  store i32 %78, i32* %82, align 8
  %83 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %10, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %88, i32 0, i32 1
  store i32 %85, i32* %89, align 4
  %90 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %10, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  %92 = load %struct.ieee80211_device*, %struct.ieee80211_device** %8, align 8
  %93 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %100

97:                                               ; preds = %66
  %98 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %10, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %98, i32 0, i32 0
  store i32 511, i32* %99, align 8
  br label %100

100:                                              ; preds = %97, %66
  %101 = load %struct.ieee80211_device*, %struct.ieee80211_device** %8, align 8
  %102 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @IW_MODE_ADHOC, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %10, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %107, i32 0, i32 0
  store i32 32, i32* %108, align 8
  br label %109

109:                                              ; preds = %106, %100
  store i64 0, i64* %9, align 8
  br label %110

110:                                              ; preds = %264, %109
  %111 = load i64, i64* %9, align 8
  %112 = load i64, i64* @AC_MAX, align 8
  %113 = icmp ult i64 %111, %112
  br i1 %113, label %114, label %267

114:                                              ; preds = %110
  %115 = load i64, i64* %9, align 8
  %116 = trunc i64 %115 to i32
  %117 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %10, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %119, i32 0, i32 1
  store i32 %116, i32* %120, align 4
  %121 = bitcast %struct.TYPE_32__* %10 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %121, %struct.TYPE_30__** %13, align 8
  %122 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %14, align 8
  %128 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = mul nsw i32 %133, %136
  %138 = load i32, i32* @aSifsTime, align 4
  %139 = add nsw i32 %137, %138
  store i32 %139, i32* %15, align 4
  %140 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = trunc i64 %143 to i32
  %145 = load i32, i32* @AC_PARAM_TXOP_LIMIT_OFFSET, align 4
  %146 = shl i32 %144, %145
  %147 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = trunc i64 %152 to i32
  %154 = load i32, i32* @AC_PARAM_ECW_MAX_OFFSET, align 4
  %155 = shl i32 %153, %154
  %156 = or i32 %146, %155
  %157 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = trunc i64 %162 to i32
  %164 = load i32, i32* @AC_PARAM_ECW_MIN_OFFSET, align 4
  %165 = shl i32 %163, %164
  %166 = or i32 %156, %165
  %167 = load i32, i32* %15, align 4
  %168 = load i32, i32* @AC_PARAM_AIFS_OFFSET, align 4
  %169 = shl i32 %167, %168
  %170 = or i32 %166, %169
  store i32 %170, i32* %16, align 4
  %171 = load i64, i64* %14, align 8
  switch i64 %171, label %176 [
    i64 130, label %172
    i64 131, label %173
    i64 129, label %174
    i64 128, label %175
  ]

172:                                              ; preds = %114
  br label %179

173:                                              ; preds = %114
  br label %179

174:                                              ; preds = %114
  br label %179

175:                                              ; preds = %114
  br label %179

176:                                              ; preds = %114
  %177 = load i64, i64* %14, align 8
  %178 = call i32 @DMESGW(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %177)
  br label %179

179:                                              ; preds = %176, %175, %174, %173, %172
  %180 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %181 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %181, i32 0, i32 0
  %183 = bitcast %struct.TYPE_26__* %182 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %183, %struct.TYPE_31__** %17, align 8
  %184 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %185 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  store i64 %187, i64* %18, align 8
  store i32 0, i32* %19, align 4
  %188 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %189 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %223

193:                                              ; preds = %179
  %194 = load i64, i64* %18, align 8
  switch i64 %194, label %219 [
    i64 131, label %195
    i64 129, label %203
    i64 128, label %211
  ]

195:                                              ; preds = %193
  %196 = load i32, i32* @BEQ_ACM_EN, align 4
  %197 = load i32, i32* @BEQ_ACM_CTL, align 4
  %198 = or i32 %196, %197
  %199 = load i32, i32* @ACM_HW_EN, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* %19, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %19, align 4
  br label %222

203:                                              ; preds = %193
  %204 = load i32, i32* @VIQ_ACM_EN, align 4
  %205 = load i32, i32* @VIQ_ACM_CTL, align 4
  %206 = or i32 %204, %205
  %207 = load i32, i32* @ACM_HW_EN, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* %19, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %19, align 4
  br label %222

211:                                              ; preds = %193
  %212 = load i32, i32* @VOQ_ACM_EN, align 4
  %213 = load i32, i32* @VOQ_ACM_CTL, align 4
  %214 = or i32 %212, %213
  %215 = load i32, i32* @ACM_HW_EN, align 4
  %216 = or i32 %214, %215
  %217 = load i32, i32* %19, align 4
  %218 = or i32 %217, %216
  store i32 %218, i32* %19, align 4
  br label %222

219:                                              ; preds = %193
  %220 = load i64, i64* %18, align 8
  %221 = call i32 @DMESGW(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i64 %220)
  br label %222

222:                                              ; preds = %219, %211, %203, %195
  br label %260

223:                                              ; preds = %179
  %224 = load i64, i64* %18, align 8
  switch i64 %224, label %258 [
    i64 131, label %225
    i64 129, label %236
    i64 128, label %247
  ]

225:                                              ; preds = %223
  %226 = load i32, i32* @BEQ_ACM_EN, align 4
  %227 = xor i32 %226, -1
  %228 = load i32, i32* @BEQ_ACM_CTL, align 4
  %229 = xor i32 %228, -1
  %230 = and i32 %227, %229
  %231 = load i32, i32* @ACM_HW_EN, align 4
  %232 = xor i32 %231, -1
  %233 = and i32 %230, %232
  %234 = load i32, i32* %19, align 4
  %235 = and i32 %234, %233
  store i32 %235, i32* %19, align 4
  br label %259

236:                                              ; preds = %223
  %237 = load i32, i32* @VIQ_ACM_EN, align 4
  %238 = xor i32 %237, -1
  %239 = load i32, i32* @VIQ_ACM_CTL, align 4
  %240 = xor i32 %239, -1
  %241 = and i32 %238, %240
  %242 = load i32, i32* @ACM_HW_EN, align 4
  %243 = xor i32 %242, -1
  %244 = and i32 %241, %243
  %245 = load i32, i32* %19, align 4
  %246 = and i32 %245, %244
  store i32 %246, i32* %19, align 4
  br label %259

247:                                              ; preds = %223
  %248 = load i32, i32* @VOQ_ACM_EN, align 4
  %249 = xor i32 %248, -1
  %250 = load i32, i32* @VOQ_ACM_CTL, align 4
  %251 = xor i32 %250, -1
  %252 = and i32 %249, %251
  %253 = load i32, i32* @ACM_HW_EN, align 4
  %254 = xor i32 %253, -1
  %255 = and i32 %252, %254
  %256 = load i32, i32* %19, align 4
  %257 = and i32 %256, %255
  store i32 %257, i32* %19, align 4
  br label %259

258:                                              ; preds = %223
  br label %259

259:                                              ; preds = %258, %247, %236, %225
  br label %260

260:                                              ; preds = %259, %222
  %261 = load %struct.net_device*, %struct.net_device** %4, align 8
  %262 = load i32, i32* @ACM_CONTROL, align 4
  %263 = call i32 @write_nic_byte(%struct.net_device* %261, i32 %262, i32 0)
  br label %264

264:                                              ; preds = %260
  %265 = load i64, i64* %9, align 8
  %266 = add i64 %265, 1
  store i64 %266, i64* %9, align 8
  br label %110

267:                                              ; preds = %110
  br label %268

268:                                              ; preds = %267, %3
  ret void
}

declare dso_local %struct.r8180_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @DMESGW(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
