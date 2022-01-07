; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmm.c_zfProcessManagement.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmm.c_zfProcessManagement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.zsAdditionInfo = type { i32 }

@wd = common dso_local global %struct.TYPE_12__* null, align 8
@ZM_MODE_AP = common dso_local global i64 0, align 8
@ZM_LV_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vap=\00", align 1
@ZM_REG_FLAG_CHANNEL_CSA = common dso_local global i32 0, align 4
@ZM_REG_FLAG_CHANNEL_PASSIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Deauthentication received\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Disassociation received\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"ProcessActionMgtFrame\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfProcessManagement(i32* %0, i32* %1, %struct.zsAdditionInfo* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.zsAdditionInfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca [3 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.zsAdditionInfo* %2, %struct.zsAdditionInfo** %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @zmw_get_wlan_dev(i32* %12)
  %14 = load i32*, i32** %4, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @zmw_rx_buf_readh(i32* %14, i32* %15, i32 4)
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  store i32 %16, i32* %17, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @zmw_rx_buf_readh(i32* %18, i32* %19, i32 6)
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @zmw_rx_buf_readh(i32* %22, i32* %23, i32 8)
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  store i32 %24, i32* %25, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @zmw_rx_buf_readh(i32* %26, i32* %27, i32 10)
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @zmw_rx_buf_readh(i32* %30, i32* %31, i32 12)
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @zmw_rx_buf_readh(i32* %34, i32* %35, i32 14)
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @zmw_rx_buf_readb(i32* %38, i32* %39, i32 0)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ZM_MODE_AP, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %116

46:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 1
  br i1 %50, label %51, label %67

51:                                               ; preds = %46
  %52 = load i32*, i32** %4, align 8
  %53 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %54 = call i32 @zfApFindSta(i32* %52, i32* %53)
  store i32 %54, i32* %11, align 4
  %55 = icmp ne i32 %54, 65535
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %56, %51
  br label %67

67:                                               ; preds = %66, %46
  %68 = load i32, i32* @ZM_LV_2, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @zm_msg2_mm(i32 %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %7, align 4
  switch i32 %71, label %115 [
    i32 134, label %72
    i32 135, label %76
    i32 138, label %82
    i32 129, label %82
    i32 137, label %88
    i32 133, label %89
    i32 132, label %95
    i32 131, label %101
    i32 130, label %106
    i32 139, label %111
  ]

72:                                               ; preds = %67
  %73 = load i32*, i32** %4, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @zfApProcessBeacon(i32* %73, i32* %74)
  br label %115

76:                                               ; preds = %67
  %77 = load i32*, i32** %4, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @zfApProcessAuth(i32* %77, i32* %78, i32* %79, i32 %80)
  br label %115

82:                                               ; preds = %67, %67
  %83 = load i32*, i32** %4, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @zfApProcessAsocReq(i32* %83, i32* %84, i32* %85, i32 %86)
  br label %115

88:                                               ; preds = %67
  br label %115

89:                                               ; preds = %67
  %90 = load i32*, i32** %4, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @zfApProcessDeauth(i32* %90, i32* %91, i32* %92, i32 %93)
  br label %115

95:                                               ; preds = %67
  %96 = load i32*, i32** %4, align 8
  %97 = load i32*, i32** %5, align 8
  %98 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @zfApProcessDisasoc(i32* %96, i32* %97, i32* %98, i32 %99)
  br label %115

101:                                              ; preds = %67
  %102 = load i32*, i32** %4, align 8
  %103 = load i32*, i32** %5, align 8
  %104 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %105 = call i32 @zfProcessProbeReq(i32* %102, i32* %103, i32* %104)
  br label %115

106:                                              ; preds = %67
  %107 = load i32*, i32** %4, align 8
  %108 = load i32*, i32** %5, align 8
  %109 = load %struct.zsAdditionInfo*, %struct.zsAdditionInfo** %6, align 8
  %110 = call i32 @zfApProcessProbeRsp(i32* %107, i32* %108, %struct.zsAdditionInfo* %109)
  br label %115

111:                                              ; preds = %67
  %112 = load i32*, i32** %4, align 8
  %113 = load i32*, i32** %5, align 8
  %114 = call i32 @zfApProcessAction(i32* %112, i32* %113)
  br label %115

115:                                              ; preds = %67, %111, %106, %101, %95, %89, %88, %82, %76, %72
  br label %244

116:                                              ; preds = %3
  %117 = load i32, i32* %7, align 4
  switch i32 %117, label %243 [
    i32 134, label %118
    i32 135, label %161
    i32 138, label %166
    i32 137, label %171
    i32 128, label %171
    i32 133, label %175
    i32 132, label %180
    i32 131, label %185
    i32 130, label %190
    i32 136, label %233
    i32 139, label %237
  ]

118:                                              ; preds = %116
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @ZM_REG_FLAG_CHANNEL_CSA, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %156

133:                                              ; preds = %118
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %156

139:                                              ; preds = %133
  %140 = load i32, i32* @ZM_REG_FLAG_CHANNEL_CSA, align 4
  %141 = load i32, i32* @ZM_REG_FLAG_CHANNEL_PASSIVE, align 4
  %142 = and i32 %140, %141
  %143 = xor i32 %142, -1
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %154, %143
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %139, %133, %118
  %157 = load i32*, i32** %4, align 8
  %158 = load i32*, i32** %5, align 8
  %159 = load %struct.zsAdditionInfo*, %struct.zsAdditionInfo** %6, align 8
  %160 = call i32 @zfStaProcessBeacon(i32* %157, i32* %158, %struct.zsAdditionInfo* %159)
  br label %243

161:                                              ; preds = %116
  %162 = load i32*, i32** %4, align 8
  %163 = load i32*, i32** %5, align 8
  %164 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %165 = call i32 @zfStaProcessAuth(i32* %162, i32* %163, i32* %164, i32 0)
  br label %243

166:                                              ; preds = %116
  %167 = load i32*, i32** %4, align 8
  %168 = load i32*, i32** %5, align 8
  %169 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %170 = call i32 @zfStaProcessAsocReq(i32* %167, i32* %168, i32* %169, i32 0)
  br label %243

171:                                              ; preds = %116, %116
  %172 = load i32*, i32** %4, align 8
  %173 = load i32*, i32** %5, align 8
  %174 = call i32 @zfStaProcessAsocRsp(i32* %172, i32* %173)
  br label %243

175:                                              ; preds = %116
  %176 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %177 = load i32*, i32** %4, align 8
  %178 = load i32*, i32** %5, align 8
  %179 = call i32 @zfStaProcessDeauth(i32* %177, i32* %178)
  br label %243

180:                                              ; preds = %116
  %181 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %182 = load i32*, i32** %4, align 8
  %183 = load i32*, i32** %5, align 8
  %184 = call i32 @zfStaProcessDisasoc(i32* %182, i32* %183)
  br label %243

185:                                              ; preds = %116
  %186 = load i32*, i32** %4, align 8
  %187 = load i32*, i32** %5, align 8
  %188 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %189 = call i32 @zfProcessProbeReq(i32* %186, i32* %187, i32* %188)
  br label %243

190:                                              ; preds = %116
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %193, align 8
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @ZM_REG_FLAG_CHANNEL_CSA, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %228

205:                                              ; preds = %190
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %228

211:                                              ; preds = %205
  %212 = load i32, i32* @ZM_REG_FLAG_CHANNEL_CSA, align 4
  %213 = load i32, i32* @ZM_REG_FLAG_CHANNEL_PASSIVE, align 4
  %214 = and i32 %212, %213
  %215 = xor i32 %214, -1
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %218, align 8
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** @wd, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = and i32 %226, %215
  store i32 %227, i32* %225, align 4
  br label %228

228:                                              ; preds = %211, %205, %190
  %229 = load i32*, i32** %4, align 8
  %230 = load i32*, i32** %5, align 8
  %231 = load %struct.zsAdditionInfo*, %struct.zsAdditionInfo** %6, align 8
  %232 = call i32 @zfStaProcessProbeRsp(i32* %229, i32* %230, %struct.zsAdditionInfo* %231)
  br label %243

233:                                              ; preds = %116
  %234 = load i32*, i32** %4, align 8
  %235 = load i32*, i32** %5, align 8
  %236 = call i32 @zfStaProcessAtim(i32* %234, i32* %235)
  br label %243

237:                                              ; preds = %116
  %238 = load i32, i32* @ZM_LV_2, align 4
  %239 = call i32 @zm_msg0_mm(i32 %238, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %240 = load i32*, i32** %4, align 8
  %241 = load i32*, i32** %5, align 8
  %242 = call i32 @zfStaProcessAction(i32* %240, i32* %241)
  br label %243

243:                                              ; preds = %116, %237, %233, %228, %185, %180, %175, %171, %166, %161, %156
  br label %244

244:                                              ; preds = %243, %115
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_rx_buf_readh(i32*, i32*, i32) #1

declare dso_local i32 @zmw_rx_buf_readb(i32*, i32*, i32) #1

declare dso_local i32 @zfApFindSta(i32*, i32*) #1

declare dso_local i32 @zm_msg2_mm(i32, i8*, i32) #1

declare dso_local i32 @zfApProcessBeacon(i32*, i32*) #1

declare dso_local i32 @zfApProcessAuth(i32*, i32*, i32*, i32) #1

declare dso_local i32 @zfApProcessAsocReq(i32*, i32*, i32*, i32) #1

declare dso_local i32 @zfApProcessDeauth(i32*, i32*, i32*, i32) #1

declare dso_local i32 @zfApProcessDisasoc(i32*, i32*, i32*, i32) #1

declare dso_local i32 @zfProcessProbeReq(i32*, i32*, i32*) #1

declare dso_local i32 @zfApProcessProbeRsp(i32*, i32*, %struct.zsAdditionInfo*) #1

declare dso_local i32 @zfApProcessAction(i32*, i32*) #1

declare dso_local i32 @zfStaProcessBeacon(i32*, i32*, %struct.zsAdditionInfo*) #1

declare dso_local i32 @zfStaProcessAuth(i32*, i32*, i32*, i32) #1

declare dso_local i32 @zfStaProcessAsocReq(i32*, i32*, i32*, i32) #1

declare dso_local i32 @zfStaProcessAsocRsp(i32*, i32*) #1

declare dso_local i32 @zm_debug_msg0(i8*) #1

declare dso_local i32 @zfStaProcessDeauth(i32*, i32*) #1

declare dso_local i32 @zfStaProcessDisasoc(i32*, i32*) #1

declare dso_local i32 @zfStaProcessProbeRsp(i32*, i32*, %struct.zsAdditionInfo*) #1

declare dso_local i32 @zfStaProcessAtim(i32*, i32*) #1

declare dso_local i32 @zm_msg0_mm(i32, i8*) #1

declare dso_local i32 @zfStaProcessAction(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
