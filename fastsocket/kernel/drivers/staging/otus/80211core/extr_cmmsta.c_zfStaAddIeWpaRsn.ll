; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaAddIeWpaRsn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaAddIeWpaRsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32*, i64, i32*, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*, i64 }

@__const.zfStaAddIeWpaRsn.ssn = private unnamed_addr constant <{ [24 x i32], [40 x i32] }> <{ [24 x i32] [i32 221, i32 24, i32 0, i32 80, i32 242, i32 1, i32 1, i32 0, i32 0, i32 80, i32 242, i32 2, i32 1, i32 0, i32 0, i32 80, i32 242, i32 2, i32 1, i32 0, i32 0, i32 80, i32 242, i32 2], [40 x i32] zeroinitializer }>, align 16
@__const.zfStaAddIeWpaRsn.rsn = private unnamed_addr constant <{ [20 x i32], [44 x i32] }> <{ [20 x i32] [i32 48, i32 20, i32 1, i32 0, i32 0, i32 15, i32 172, i32 2, i32 1, i32 0, i32 0, i32 15, i32 172, i32 2, i32 1, i32 0, i32 0, i32 15, i32 172, i32 2], [44 x i32] zeroinitializer }>, align 16
@wd = common dso_local global %struct.TYPE_8__* null, align 8
@ZM_AUTH_MODE_WPAPSK = common dso_local global i64 0, align 8
@ZM_ENCRYPTION_AES = common dso_local global i64 0, align 8
@zgWpaAesOui = common dso_local global i32* null, align 8
@ZM_AUTH_MODE_WPA = common dso_local global i64 0, align 8
@zgWpaRadiusOui = common dso_local global i32* null, align 8
@ZM_AUTH_MODE_WPA2PSK = common dso_local global i64 0, align 8
@zgWpa2AesOui = common dso_local global i32* null, align 8
@ZM_WLAN_FRAME_TYPE_REASOCREQ = common dso_local global i32 0, align 4
@ZM_AUTH_MODE_WPA2 = common dso_local global i64 0, align 8
@zgWpa2RadiusOui = common dso_local global i32* null, align 8
@ZM_WLAN_FRAME_TYPE_ASOCREQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfStaAddIeWpaRsn(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca [64 x i32], align 16
  %11 = alloca [64 x i32], align 16
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = bitcast [64 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast (<{ [24 x i32], [40 x i32] }>* @__const.zfStaAddIeWpaRsn.ssn to i8*), i64 256, i1 false)
  %13 = bitcast [64 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast (<{ [20 x i32], [44 x i32] }>* @__const.zfStaAddIeWpaRsn.rsn to i8*), i64 256, i1 false)
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @zmw_get_wlan_dev(i32* %14)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ZM_AUTH_MODE_WPAPSK, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %65

22:                                               ; preds = %4
  %23 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 0
  %24 = getelementptr inbounds i32, i32* %23, i64 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 8
  %30 = call i32 @zfMemoryCopy(i32* %24, i32* %29, i32 4)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ZM_ENCRYPTION_AES, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %22
  %38 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 0
  %39 = getelementptr inbounds i32, i32* %38, i64 14
  %40 = load i32*, i32** @zgWpaAesOui, align 8
  %41 = call i32 @zfMemoryCopy(i32* %39, i32* %40, i32 4)
  br label %42

42:                                               ; preds = %37, %22
  %43 = load i32*, i32** %5, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 0
  %46 = load i32, i32* %7, align 4
  %47 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 2
  %50 = call i32 @zfCopyToIntTxBuffer(i32* %43, i32* %44, i32* %45, i32 %46, i32 %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 0
  %56 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 2
  %59 = call i32 @zfMemoryCopy(i32* %54, i32* %55, i32 %58)
  %60 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 2
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %7, align 4
  br label %355

65:                                               ; preds = %4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @ZM_AUTH_MODE_WPA, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %119

72:                                               ; preds = %65
  %73 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 0
  %74 = getelementptr inbounds i32, i32* %73, i64 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 8
  %80 = call i32 @zfMemoryCopy(i32* %74, i32* %79, i32 4)
  %81 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 0
  %82 = getelementptr inbounds i32, i32* %81, i64 20
  %83 = load i32*, i32** @zgWpaRadiusOui, align 8
  %84 = call i32 @zfMemoryCopy(i32* %82, i32* %83, i32 4)
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @ZM_ENCRYPTION_AES, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %72
  %92 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 0
  %93 = getelementptr inbounds i32, i32* %92, i64 14
  %94 = load i32*, i32** @zgWpaAesOui, align 8
  %95 = call i32 @zfMemoryCopy(i32* %93, i32* %94, i32 4)
  br label %96

96:                                               ; preds = %91, %72
  %97 = load i32*, i32** %5, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 0
  %100 = load i32, i32* %7, align 4
  %101 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 2
  %104 = call i32 @zfCopyToIntTxBuffer(i32* %97, i32* %98, i32* %99, i32 %100, i32 %103)
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 0
  %110 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 2
  %113 = call i32 @zfMemoryCopy(i32* %108, i32* %109, i32 %112)
  %114 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 2
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %7, align 4
  br label %354

119:                                              ; preds = %65
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @ZM_AUTH_MODE_WPA2PSK, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %232

126:                                              ; preds = %119
  %127 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %128 = getelementptr inbounds i32, i32* %127, i64 4
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 4
  %134 = call i32 @zfMemoryCopy(i32* %128, i32* %133, i32 4)
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @ZM_ENCRYPTION_AES, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %126
  %142 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %143 = getelementptr inbounds i32, i32* %142, i64 10
  %144 = load i32*, i32** @zgWpa2AesOui, align 8
  %145 = call i32 @zfMemoryCopy(i32* %143, i32* %144, i32 4)
  br label %146

146:                                              ; preds = %141, %126
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @ZM_WLAN_FRAME_TYPE_REASOCREQ, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %209

150:                                              ; preds = %146
  store i64 0, i64* %9, align 8
  br label %151

151:                                              ; preds = %205, %150
  %152 = load i64, i64* %9, align 8
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ult i64 %152, %157
  br i1 %158, label %159, label %208

159:                                              ; preds = %151
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %163, align 8
  %165 = load i64, i64* %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = inttoptr i64 %168 to i32*
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 5
  %173 = load i64, i64* %172, align 8
  %174 = inttoptr i64 %173 to i32*
  %175 = call i64 @zfMemoryIsEqual(i32* %169, i32* %174, i32 6)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %159
  br label %208

178:                                              ; preds = %159
  %179 = load i64, i64* %9, align 8
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp ult i64 %179, %184
  br i1 %185, label %186, label %204

186:                                              ; preds = %178
  %187 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 22
  store i32 1, i32* %187, align 8
  %188 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 23
  store i32 0, i32* %188, align 4
  %189 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %190 = getelementptr inbounds i32, i32* %189, i64 24
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 4
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %194, align 8
  %196 = load i64, i64* %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = call i32 @zfMemoryCopy(i32* %190, i32* %199, i32 16)
  %201 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 1
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %202, 18
  store i32 %203, i32* %201, align 4
  br label %204

204:                                              ; preds = %186, %178
  br label %205

205:                                              ; preds = %204
  %206 = load i64, i64* %9, align 8
  %207 = add i64 %206, 1
  store i64 %207, i64* %9, align 8
  br label %151

208:                                              ; preds = %177, %151
  br label %209

209:                                              ; preds = %208, %146
  %210 = load i32*, i32** %5, align 8
  %211 = load i32*, i32** %6, align 8
  %212 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %213 = load i32, i32* %7, align 4
  %214 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 1
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %215, 2
  %217 = call i32 @zfCopyToIntTxBuffer(i32* %210, i32* %211, i32* %212, i32 %213, i32 %216)
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 3
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %223 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 1
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %224, 2
  %226 = call i32 @zfMemoryCopy(i32* %221, i32* %222, i32 %225)
  %227 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 1
  %228 = load i32, i32* %227, align 4
  %229 = add nsw i32 %228, 2
  %230 = load i32, i32* %7, align 4
  %231 = add nsw i32 %230, %229
  store i32 %231, i32* %7, align 4
  br label %353

232:                                              ; preds = %119
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @ZM_AUTH_MODE_WPA2, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %352

239:                                              ; preds = %232
  %240 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %241 = getelementptr inbounds i32, i32* %240, i64 4
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 3
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 4
  %247 = call i32 @zfMemoryCopy(i32* %241, i32* %246, i32 4)
  %248 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %249 = getelementptr inbounds i32, i32* %248, i64 16
  %250 = load i32*, i32** @zgWpa2RadiusOui, align 8
  %251 = call i32 @zfMemoryCopy(i32* %249, i32* %250, i32 4)
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 2
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* @ZM_ENCRYPTION_AES, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %263

258:                                              ; preds = %239
  %259 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %260 = getelementptr inbounds i32, i32* %259, i64 10
  %261 = load i32*, i32** @zgWpa2AesOui, align 8
  %262 = call i32 @zfMemoryCopy(i32* %260, i32* %261, i32 4)
  br label %263

263:                                              ; preds = %258, %239
  %264 = load i32, i32* %8, align 4
  %265 = load i32, i32* @ZM_WLAN_FRAME_TYPE_REASOCREQ, align 4
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %271, label %267

267:                                              ; preds = %263
  %268 = load i32, i32* %8, align 4
  %269 = load i32, i32* @ZM_WLAN_FRAME_TYPE_ASOCREQ, align 4
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %271, label %329

271:                                              ; preds = %267, %263
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 4
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %328

278:                                              ; preds = %271
  %279 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 22
  store i32 1, i32* %279, align 8
  %280 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 23
  store i32 0, i32* %280, align 4
  store i64 0, i64* %9, align 8
  br label %281

281:                                              ; preds = %321, %278
  %282 = load i64, i64* %9, align 8
  %283 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 4
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = icmp ult i64 %282, %287
  br i1 %288, label %289, label %324

289:                                              ; preds = %281
  %290 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 4
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 1
  %294 = load %struct.TYPE_5__*, %struct.TYPE_5__** %293, align 8
  %295 = load i64, i64* %9, align 8
  %296 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %294, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %296, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = inttoptr i64 %298 to i32*
  %300 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 5
  %303 = load i64, i64* %302, align 8
  %304 = inttoptr i64 %303 to i32*
  %305 = call i64 @zfMemoryIsEqual(i32* %299, i32* %304, i32 6)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %320

307:                                              ; preds = %289
  %308 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %309 = getelementptr inbounds i32, i32* %308, i64 24
  %310 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 4
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 1
  %314 = load %struct.TYPE_5__*, %struct.TYPE_5__** %313, align 8
  %315 = load i64, i64* %9, align 8
  %316 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %316, i32 0, i32 0
  %318 = load i32*, i32** %317, align 8
  %319 = call i32 @zfMemoryCopy(i32* %309, i32* %318, i32 16)
  br label %324

320:                                              ; preds = %289
  br label %321

321:                                              ; preds = %320
  %322 = load i64, i64* %9, align 8
  %323 = add i64 %322, 1
  store i64 %323, i64* %9, align 8
  br label %281

324:                                              ; preds = %307, %281
  %325 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 1
  %326 = load i32, i32* %325, align 4
  %327 = add nsw i32 %326, 18
  store i32 %327, i32* %325, align 4
  br label %328

328:                                              ; preds = %324, %271
  br label %329

329:                                              ; preds = %328, %267
  %330 = load i32*, i32** %5, align 8
  %331 = load i32*, i32** %6, align 8
  %332 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %333 = load i32, i32* %7, align 4
  %334 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 1
  %335 = load i32, i32* %334, align 4
  %336 = add nsw i32 %335, 2
  %337 = call i32 @zfCopyToIntTxBuffer(i32* %330, i32* %331, i32* %332, i32 %333, i32 %336)
  %338 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %339 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %339, i32 0, i32 3
  %341 = load i32*, i32** %340, align 8
  %342 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %343 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 1
  %344 = load i32, i32* %343, align 4
  %345 = add nsw i32 %344, 2
  %346 = call i32 @zfMemoryCopy(i32* %341, i32* %342, i32 %345)
  %347 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 1
  %348 = load i32, i32* %347, align 4
  %349 = add nsw i32 %348, 2
  %350 = load i32, i32* %7, align 4
  %351 = add nsw i32 %350, %349
  store i32 %351, i32* %7, align 4
  br label %352

352:                                              ; preds = %329, %232
  br label %353

353:                                              ; preds = %352, %209
  br label %354

354:                                              ; preds = %353, %96
  br label %355

355:                                              ; preds = %354, %42
  %356 = load i32, i32* %7, align 4
  ret i32 %356
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @zmw_get_wlan_dev(i32*) #2

declare dso_local i32 @zfMemoryCopy(i32*, i32*, i32) #2

declare dso_local i32 @zfCopyToIntTxBuffer(i32*, i32*, i32*, i32, i32) #2

declare dso_local i64 @zfMemoryIsEqual(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
