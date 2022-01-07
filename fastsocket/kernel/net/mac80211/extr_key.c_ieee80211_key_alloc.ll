; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_key.c_ieee80211_key_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_key.c_ieee80211_key_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_key = type { i32, %struct.TYPE_12__, %struct.TYPE_11__, i64 }
%struct.TYPE_12__ = type { i32, i32, i64, i32, i32, i32, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32* }
%struct.TYPE_9__ = type { i32, i32** }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@NUM_DEFAULT_KEYS = common dso_local global i32 0, align 4
@NUM_DEFAULT_MGMT_KEYS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WEP_IV_LEN = common dso_local global i32 0, align 4
@WEP_ICV_LEN = common dso_local global i32 0, align 4
@TKIP_IV_LEN = common dso_local global i32 0, align 4
@TKIP_ICV_LEN = common dso_local global i32 0, align 4
@IEEE80211_NUM_TIDS = common dso_local global i32 0, align 4
@CCMP_HDR_LEN = common dso_local global i32 0, align 4
@CCMP_MIC_LEN = common dso_local global i32 0, align 4
@CCMP_PN_LEN = common dso_local global i32 0, align 4
@CMAC_PN_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ieee80211_key* @ieee80211_key_alloc(i32 %0, i32 %1, i64 %2, i32* %3, i64 %4, i32* %5) #0 {
  %7 = alloca %struct.ieee80211_key*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ieee80211_key*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @NUM_DEFAULT_KEYS, align 4
  %23 = load i32, i32* @NUM_DEFAULT_MGMT_KEYS, align 4
  %24 = add nsw i32 %22, %23
  %25 = icmp sge i32 %21, %24
  br label %26

26:                                               ; preds = %20, %6
  %27 = phi i1 [ true, %6 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load i64, i64* %10, align 8
  %31 = add i64 104, %30
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.ieee80211_key* @kzalloc(i32 %32, i32 %33)
  store %struct.ieee80211_key* %34, %struct.ieee80211_key** %14, align 8
  %35 = load %struct.ieee80211_key*, %struct.ieee80211_key** %14, align 8
  %36 = icmp ne %struct.ieee80211_key* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %26
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  %40 = call %struct.ieee80211_key* @ERR_PTR(i32 %39)
  store %struct.ieee80211_key* %40, %struct.ieee80211_key** %7, align 8
  br label %269

41:                                               ; preds = %26
  %42 = load %struct.ieee80211_key*, %struct.ieee80211_key** %14, align 8
  %43 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 6
  store i64 0, i64* %44, align 8
  %45 = load %struct.ieee80211_key*, %struct.ieee80211_key** %14, align 8
  %46 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.ieee80211_key*, %struct.ieee80211_key** %14, align 8
  %49 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.ieee80211_key*, %struct.ieee80211_key** %14, align 8
  %53 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.ieee80211_key*, %struct.ieee80211_key** %14, align 8
  %57 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  store i64 %55, i64* %58, align 8
  %59 = load i32, i32* %8, align 4
  switch i32 %59, label %257 [
    i32 128, label %60
    i32 129, label %60
    i32 130, label %69
    i32 131, label %119
    i32 132, label %196
  ]

60:                                               ; preds = %41, %41
  %61 = load i32, i32* @WEP_IV_LEN, align 4
  %62 = load %struct.ieee80211_key*, %struct.ieee80211_key** %14, align 8
  %63 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 5
  store i32 %61, i32* %64, align 8
  %65 = load i32, i32* @WEP_ICV_LEN, align 4
  %66 = load %struct.ieee80211_key*, %struct.ieee80211_key** %14, align 8
  %67 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 3
  store i32 %65, i32* %68, align 8
  br label %257

69:                                               ; preds = %41
  %70 = load i32, i32* @TKIP_IV_LEN, align 4
  %71 = load %struct.ieee80211_key*, %struct.ieee80211_key** %14, align 8
  %72 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 5
  store i32 %70, i32* %73, align 8
  %74 = load i32, i32* @TKIP_ICV_LEN, align 4
  %75 = load %struct.ieee80211_key*, %struct.ieee80211_key** %14, align 8
  %76 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 3
  store i32 %74, i32* %77, align 8
  %78 = load i32*, i32** %13, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %113

80:                                               ; preds = %69
  store i32 0, i32* %15, align 4
  br label %81

81:                                               ; preds = %109, %80
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* @IEEE80211_NUM_TIDS, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %112

85:                                               ; preds = %81
  %86 = load i32*, i32** %13, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = call i32 @get_unaligned_le32(i32* %87)
  %89 = load %struct.ieee80211_key*, %struct.ieee80211_key** %14, align 8
  %90 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  store i32 %88, i32* %97, align 4
  %98 = load i32*, i32** %13, align 8
  %99 = call i32 @get_unaligned_le16(i32* %98)
  %100 = load %struct.ieee80211_key*, %struct.ieee80211_key** %14, align 8
  %101 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  store i32 %99, i32* %108, align 4
  br label %109

109:                                              ; preds = %85
  %110 = load i32, i32* %15, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %15, align 4
  br label %81

112:                                              ; preds = %81
  br label %113

113:                                              ; preds = %112, %69
  %114 = load %struct.ieee80211_key*, %struct.ieee80211_key** %14, align 8
  %115 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = call i32 @spin_lock_init(i32* %117)
  br label %257

119:                                              ; preds = %41
  %120 = load i32, i32* @CCMP_HDR_LEN, align 4
  %121 = load %struct.ieee80211_key*, %struct.ieee80211_key** %14, align 8
  %122 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 5
  store i32 %120, i32* %123, align 8
  %124 = load i32, i32* @CCMP_MIC_LEN, align 4
  %125 = load %struct.ieee80211_key*, %struct.ieee80211_key** %14, align 8
  %126 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 3
  store i32 %124, i32* %127, align 8
  %128 = load i32*, i32** %13, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %170

130:                                              ; preds = %119
  store i32 0, i32* %15, align 4
  br label %131

131:                                              ; preds = %166, %130
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* @IEEE80211_NUM_TIDS, align 4
  %134 = add nsw i32 %133, 1
  %135 = icmp slt i32 %132, %134
  br i1 %135, label %136, label %169

136:                                              ; preds = %131
  store i32 0, i32* %16, align 4
  br label %137

137:                                              ; preds = %162, %136
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* @CCMP_PN_LEN, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %165

141:                                              ; preds = %137
  %142 = load i32*, i32** %13, align 8
  %143 = load i32, i32* @CCMP_PN_LEN, align 4
  %144 = load i32, i32* %16, align 4
  %145 = sub nsw i32 %143, %144
  %146 = sub nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %142, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.ieee80211_key*, %struct.ieee80211_key** %14, align 8
  %151 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  %154 = load i32**, i32*** %153, align 8
  %155 = load i32, i32* %15, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32*, i32** %154, i64 %156
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %16, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32 %149, i32* %161, align 4
  br label %162

162:                                              ; preds = %141
  %163 = load i32, i32* %16, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %16, align 4
  br label %137

165:                                              ; preds = %137
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %15, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %15, align 4
  br label %131

169:                                              ; preds = %131
  br label %170

170:                                              ; preds = %169, %119
  %171 = load i32*, i32** %11, align 8
  %172 = call i32 @ieee80211_aes_key_setup_encrypt(i32* %171)
  %173 = load %struct.ieee80211_key*, %struct.ieee80211_key** %14, align 8
  %174 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  store i32 %172, i32* %176, align 8
  %177 = load %struct.ieee80211_key*, %struct.ieee80211_key** %14, align 8
  %178 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @IS_ERR(i32 %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %195

184:                                              ; preds = %170
  %185 = load %struct.ieee80211_key*, %struct.ieee80211_key** %14, align 8
  %186 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @PTR_ERR(i32 %189)
  store i32 %190, i32* %17, align 4
  %191 = load %struct.ieee80211_key*, %struct.ieee80211_key** %14, align 8
  %192 = call i32 @kfree(%struct.ieee80211_key* %191)
  %193 = load i32, i32* %17, align 4
  %194 = call %struct.ieee80211_key* @ERR_PTR(i32 %193)
  store %struct.ieee80211_key* %194, %struct.ieee80211_key** %7, align 8
  br label %269

195:                                              ; preds = %170
  br label %257

196:                                              ; preds = %41
  %197 = load %struct.ieee80211_key*, %struct.ieee80211_key** %14, align 8
  %198 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 5
  store i32 0, i32* %199, align 8
  %200 = load %struct.ieee80211_key*, %struct.ieee80211_key** %14, align 8
  %201 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 3
  store i32 4, i32* %202, align 8
  %203 = load i32*, i32** %13, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %205, label %231

205:                                              ; preds = %196
  store i32 0, i32* %16, align 4
  br label %206

206:                                              ; preds = %227, %205
  %207 = load i32, i32* %16, align 4
  %208 = load i32, i32* @CMAC_PN_LEN, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %230

210:                                              ; preds = %206
  %211 = load i32*, i32** %13, align 8
  %212 = load i32, i32* @CMAC_PN_LEN, align 4
  %213 = load i32, i32* %16, align 4
  %214 = sub nsw i32 %212, %213
  %215 = sub nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %211, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.ieee80211_key*, %struct.ieee80211_key** %14, align 8
  %220 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %16, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  store i32 %218, i32* %226, align 4
  br label %227

227:                                              ; preds = %210
  %228 = load i32, i32* %16, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %16, align 4
  br label %206

230:                                              ; preds = %206
  br label %231

231:                                              ; preds = %230, %196
  %232 = load i32*, i32** %11, align 8
  %233 = call i32 @ieee80211_aes_cmac_key_setup(i32* %232)
  %234 = load %struct.ieee80211_key*, %struct.ieee80211_key** %14, align 8
  %235 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 0
  store i32 %233, i32* %237, align 8
  %238 = load %struct.ieee80211_key*, %struct.ieee80211_key** %14, align 8
  %239 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @IS_ERR(i32 %242)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %256

245:                                              ; preds = %231
  %246 = load %struct.ieee80211_key*, %struct.ieee80211_key** %14, align 8
  %247 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @PTR_ERR(i32 %250)
  store i32 %251, i32* %17, align 4
  %252 = load %struct.ieee80211_key*, %struct.ieee80211_key** %14, align 8
  %253 = call i32 @kfree(%struct.ieee80211_key* %252)
  %254 = load i32, i32* %17, align 4
  %255 = call %struct.ieee80211_key* @ERR_PTR(i32 %254)
  store %struct.ieee80211_key* %255, %struct.ieee80211_key** %7, align 8
  br label %269

256:                                              ; preds = %231
  br label %257

257:                                              ; preds = %41, %256, %195, %113, %60
  %258 = load %struct.ieee80211_key*, %struct.ieee80211_key** %14, align 8
  %259 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 4
  %261 = load i32, i32* %260, align 4
  %262 = load i32*, i32** %11, align 8
  %263 = load i64, i64* %10, align 8
  %264 = call i32 @memcpy(i32 %261, i32* %262, i64 %263)
  %265 = load %struct.ieee80211_key*, %struct.ieee80211_key** %14, align 8
  %266 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %265, i32 0, i32 0
  %267 = call i32 @INIT_LIST_HEAD(i32* %266)
  %268 = load %struct.ieee80211_key*, %struct.ieee80211_key** %14, align 8
  store %struct.ieee80211_key* %268, %struct.ieee80211_key** %7, align 8
  br label %269

269:                                              ; preds = %257, %245, %184, %37
  %270 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  ret %struct.ieee80211_key* %270
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.ieee80211_key* @kzalloc(i32, i32) #1

declare dso_local %struct.ieee80211_key* @ERR_PTR(i32) #1

declare dso_local i32 @get_unaligned_le32(i32*) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @ieee80211_aes_key_setup_encrypt(i32*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @kfree(%struct.ieee80211_key*) #1

declare dso_local i32 @ieee80211_aes_cmac_key_setup(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
