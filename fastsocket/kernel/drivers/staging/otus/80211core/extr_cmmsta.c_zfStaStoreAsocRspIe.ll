; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaStoreAsocRspIe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaStoreAsocRspIe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32, i32, %struct.TYPE_8__, i8** }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@wd = common dso_local global %struct.TYPE_10__* null, align 8
@ZM_WIRELESS_MODE_5_N = common dso_local global i32 0, align 4
@ZM_WIRELESS_MODE_24_N = common dso_local global i32 0, align 4
@ZM_WLAN_EID_HT_CAPABILITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"atheros pre n\00", align 1
@ZM_LV_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"ASOC:  HT Capabilities, htcap=\00", align 1
@ZM_WLAN_PREN2_EID_HTCAPABILITY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"pre n 2.0 standard\00", align 1
@HTCAP_SupChannelWidthSet = common dso_local global i32 0, align 4
@ZM_WLAN_EID_EXTENDED_HT_CAPABILITY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"atheros pre n HTINFO\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"ASOC:  HT Info, htinfo=\00", align 1
@ZM_WLAN_PREN2_EID_HTINFORMATION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"pre n 2.0 standard HTINFO\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"no HTINFO\00", align 1
@ExtHtCap_ExtChannelOffsetBelow = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfStaStoreAsocRspIe(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @zmw_get_wlan_dev(i32* %11)
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %33, %2
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %14, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %13
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load i64, i64* %6, align 8
  %24 = add i64 %23, 24
  %25 = trunc i64 %24 to i32
  %26 = call i8* @zmw_rx_buf_readb(i32* %21, i32* %22, i32 %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 4
  %30 = load i8**, i8*** %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds i8*, i8** %30, i64 %31
  store i8* %26, i8** %32, align 8
  br label %33

33:                                               ; preds = %20
  %34 = load i64, i64* %6, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %6, align 8
  br label %13

36:                                               ; preds = %13
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %40, 3000
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ZM_WIRELESS_MODE_5_N, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %42, %36
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %53, 3000
  br i1 %54, label %55, label %83

55:                                               ; preds = %49
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @ZM_WIRELESS_MODE_24_N, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %83, label %62

62:                                               ; preds = %55, %42
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = bitcast %struct.TYPE_6__* %66 to i32*
  store i32* %67, i32** %8, align 8
  store i64 0, i64* %6, align 8
  br label %68

68:                                               ; preds = %75, %62
  %69 = load i64, i64* %6, align 8
  %70 = icmp ult i64 %69, 28
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i32*, i32** %8, align 8
  %73 = load i64, i64* %6, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32 0, i32* %74, align 4
  br label %75

75:                                               ; preds = %71
  %76 = load i64, i64* %6, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %6, align 8
  br label %68

78:                                               ; preds = %68
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  store i32 0, i32* %80, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  store i32 0, i32* %82, align 8
  br label %353

83:                                               ; preds = %55, %49
  %84 = load i32*, i32** %3, align 8
  %85 = load i32*, i32** %4, align 8
  %86 = load i32, i32* @ZM_WLAN_EID_HT_CAPABILITY, align 4
  %87 = call i32 @zfFindElement(i32* %84, i32* %85, i32 %86)
  store i32 %87, i32* %5, align 4
  %88 = icmp ne i32 %87, 65535
  br i1 %88, label %89, label %133

89:                                               ; preds = %83
  %90 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = bitcast %struct.TYPE_6__* %94 to i32*
  store i32* %95, i32** %8, align 8
  %96 = load i32*, i32** %3, align 8
  %97 = load i32*, i32** %4, align 8
  %98 = load i32, i32* %5, align 4
  %99 = call i8* @zmw_rx_buf_readb(i32* %96, i32* %97, i32 %98)
  %100 = ptrtoint i8* %99 to i32
  %101 = load i32*, i32** %8, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  store i32 %100, i32* %102, align 4
  %103 = load i32*, i32** %8, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  store i32 26, i32* %104, align 4
  store i64 1, i64* %6, align 8
  br label %105

105:                                              ; preds = %129, %89
  %106 = load i64, i64* %6, align 8
  %107 = icmp ule i64 %106, 26
  br i1 %107, label %108, label %132

108:                                              ; preds = %105
  %109 = load i32*, i32** %3, align 8
  %110 = load i32*, i32** %4, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* %6, align 8
  %114 = add i64 %112, %113
  %115 = trunc i64 %114 to i32
  %116 = call i8* @zmw_rx_buf_readb(i32* %109, i32* %110, i32 %115)
  %117 = ptrtoint i8* %116 to i32
  %118 = load i32*, i32** %8, align 8
  %119 = load i64, i64* %6, align 8
  %120 = add i64 %119, 1
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %117, i32* %121, align 4
  %122 = load i32, i32* @ZM_LV_1, align 4
  %123 = load i32*, i32** %8, align 8
  %124 = load i64, i64* %6, align 8
  %125 = add i64 %124, 1
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @zm_msg2_mm(i32 %122, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %127)
  br label %129

129:                                              ; preds = %108
  %130 = load i64, i64* %6, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %6, align 8
  br label %105

132:                                              ; preds = %105
  br label %194

133:                                              ; preds = %83
  %134 = load i32*, i32** %3, align 8
  %135 = load i32*, i32** %4, align 8
  %136 = load i32, i32* @ZM_WLAN_PREN2_EID_HTCAPABILITY, align 4
  %137 = call i32 @zfFindElement(i32* %134, i32* %135, i32 %136)
  store i32 %137, i32* %5, align 4
  %138 = icmp ne i32 %137, 65535
  br i1 %138, label %139, label %172

139:                                              ; preds = %133
  %140 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = bitcast %struct.TYPE_6__* %144 to i32*
  store i32* %145, i32** %8, align 8
  store i64 0, i64* %6, align 8
  br label %146

146:                                              ; preds = %168, %139
  %147 = load i64, i64* %6, align 8
  %148 = icmp ult i64 %147, 28
  br i1 %148, label %149, label %171

149:                                              ; preds = %146
  %150 = load i32*, i32** %3, align 8
  %151 = load i32*, i32** %4, align 8
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = load i64, i64* %6, align 8
  %155 = add i64 %153, %154
  %156 = trunc i64 %155 to i32
  %157 = call i8* @zmw_rx_buf_readb(i32* %150, i32* %151, i32 %156)
  %158 = ptrtoint i8* %157 to i32
  %159 = load i32*, i32** %8, align 8
  %160 = load i64, i64* %6, align 8
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  store i32 %158, i32* %161, align 4
  %162 = load i32, i32* @ZM_LV_1, align 4
  %163 = load i32*, i32** %8, align 8
  %164 = load i64, i64* %6, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @zm_msg2_mm(i32 %162, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %166)
  br label %168

168:                                              ; preds = %149
  %169 = load i64, i64* %6, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %6, align 8
  br label %146

171:                                              ; preds = %146
  br label %193

172:                                              ; preds = %133
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 1
  %177 = bitcast %struct.TYPE_6__* %176 to i32*
  store i32* %177, i32** %8, align 8
  store i64 0, i64* %6, align 8
  br label %178

178:                                              ; preds = %185, %172
  %179 = load i64, i64* %6, align 8
  %180 = icmp ult i64 %179, 28
  br i1 %180, label %181, label %188

181:                                              ; preds = %178
  %182 = load i32*, i32** %8, align 8
  %183 = load i64, i64* %6, align 8
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  store i32 0, i32* %184, align 4
  br label %185

185:                                              ; preds = %181
  %186 = load i64, i64* %6, align 8
  %187 = add i64 %186, 1
  store i64 %187, i64* %6, align 8
  br label %178

188:                                              ; preds = %178
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 1
  store i32 0, i32* %190, align 4
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 2
  store i32 0, i32* %192, align 8
  br label %353

193:                                              ; preds = %171
  br label %194

194:                                              ; preds = %193, %132
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @HTCAP_SupChannelWidthSet, align 4
  %202 = and i32 %200, %201
  %203 = ashr i32 %202, 1
  store i32 %203, i32* %9, align 4
  %204 = load i32*, i32** %3, align 8
  %205 = load i32*, i32** %4, align 8
  %206 = load i32, i32* @ZM_WLAN_EID_EXTENDED_HT_CAPABILITY, align 4
  %207 = call i32 @zfFindElement(i32* %204, i32* %205, i32 %206)
  store i32 %207, i32* %5, align 4
  %208 = icmp ne i32 %207, 65535
  br i1 %208, label %209, label %253

209:                                              ; preds = %194
  %210 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 22, i32* %7, align 4
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = bitcast %struct.TYPE_7__* %214 to i32*
  store i32* %215, i32** %8, align 8
  %216 = load i32*, i32** %3, align 8
  %217 = load i32*, i32** %4, align 8
  %218 = load i32, i32* %5, align 4
  %219 = call i8* @zmw_rx_buf_readb(i32* %216, i32* %217, i32 %218)
  %220 = ptrtoint i8* %219 to i32
  %221 = load i32*, i32** %8, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 0
  store i32 %220, i32* %222, align 4
  %223 = load i32*, i32** %8, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 1
  store i32 22, i32* %224, align 4
  store i64 1, i64* %6, align 8
  br label %225

225:                                              ; preds = %249, %209
  %226 = load i64, i64* %6, align 8
  %227 = icmp ule i64 %226, 22
  br i1 %227, label %228, label %252

228:                                              ; preds = %225
  %229 = load i32*, i32** %3, align 8
  %230 = load i32*, i32** %4, align 8
  %231 = load i32, i32* %5, align 4
  %232 = sext i32 %231 to i64
  %233 = load i64, i64* %6, align 8
  %234 = add i64 %232, %233
  %235 = trunc i64 %234 to i32
  %236 = call i8* @zmw_rx_buf_readb(i32* %229, i32* %230, i32 %235)
  %237 = ptrtoint i8* %236 to i32
  %238 = load i32*, i32** %8, align 8
  %239 = load i64, i64* %6, align 8
  %240 = add i64 %239, 1
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  store i32 %237, i32* %241, align 4
  %242 = load i32, i32* @ZM_LV_1, align 4
  %243 = load i32*, i32** %8, align 8
  %244 = load i64, i64* %6, align 8
  %245 = add i64 %244, 1
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @zm_msg2_mm(i32 %242, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %247)
  br label %249

249:                                              ; preds = %228
  %250 = load i64, i64* %6, align 8
  %251 = add i64 %250, 1
  store i64 %251, i64* %6, align 8
  br label %225

252:                                              ; preds = %225
  br label %317

253:                                              ; preds = %194
  %254 = load i32*, i32** %3, align 8
  %255 = load i32*, i32** %4, align 8
  %256 = load i32, i32* @ZM_WLAN_PREN2_EID_HTINFORMATION, align 4
  %257 = call i32 @zfFindElement(i32* %254, i32* %255, i32 %256)
  store i32 %257, i32* %5, align 4
  %258 = icmp ne i32 %257, 65535
  br i1 %258, label %259, label %298

259:                                              ; preds = %253
  %260 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %261 = load i32*, i32** %3, align 8
  %262 = load i32*, i32** %4, align 8
  %263 = load i32, i32* %5, align 4
  %264 = add nsw i32 %263, 1
  %265 = call i8* @zmw_rx_buf_readb(i32* %261, i32* %262, i32 %264)
  %266 = ptrtoint i8* %265 to i32
  store i32 %266, i32* %7, align 4
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 3
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 3
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 0
  %271 = bitcast %struct.TYPE_7__* %270 to i32*
  store i32* %271, i32** %8, align 8
  store i64 0, i64* %6, align 8
  br label %272

272:                                              ; preds = %294, %259
  %273 = load i64, i64* %6, align 8
  %274 = icmp ult i64 %273, 24
  br i1 %274, label %275, label %297

275:                                              ; preds = %272
  %276 = load i32*, i32** %3, align 8
  %277 = load i32*, i32** %4, align 8
  %278 = load i32, i32* %5, align 4
  %279 = sext i32 %278 to i64
  %280 = load i64, i64* %6, align 8
  %281 = add i64 %279, %280
  %282 = trunc i64 %281 to i32
  %283 = call i8* @zmw_rx_buf_readb(i32* %276, i32* %277, i32 %282)
  %284 = ptrtoint i8* %283 to i32
  %285 = load i32*, i32** %8, align 8
  %286 = load i64, i64* %6, align 8
  %287 = getelementptr inbounds i32, i32* %285, i64 %286
  store i32 %284, i32* %287, align 4
  %288 = load i32, i32* @ZM_LV_1, align 4
  %289 = load i32*, i32** %8, align 8
  %290 = load i64, i64* %6, align 8
  %291 = getelementptr inbounds i32, i32* %289, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @zm_msg2_mm(i32 %288, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %292)
  br label %294

294:                                              ; preds = %275
  %295 = load i64, i64* %6, align 8
  %296 = add i64 %295, 1
  store i64 %296, i64* %6, align 8
  br label %272

297:                                              ; preds = %272
  br label %316

298:                                              ; preds = %253
  %299 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %300 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 3
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 3
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i32 0, i32 0
  %304 = bitcast %struct.TYPE_7__* %303 to i32*
  store i32* %304, i32** %8, align 8
  store i64 0, i64* %6, align 8
  br label %305

305:                                              ; preds = %312, %298
  %306 = load i64, i64* %6, align 8
  %307 = icmp ult i64 %306, 24
  br i1 %307, label %308, label %315

308:                                              ; preds = %305
  %309 = load i32*, i32** %8, align 8
  %310 = load i64, i64* %6, align 8
  %311 = getelementptr inbounds i32, i32* %309, i64 %310
  store i32 0, i32* %311, align 4
  br label %312

312:                                              ; preds = %308
  %313 = load i64, i64* %6, align 8
  %314 = add i64 %313, 1
  store i64 %314, i64* %6, align 8
  br label %305

315:                                              ; preds = %305
  br label %316

316:                                              ; preds = %315, %297
  br label %317

317:                                              ; preds = %316, %252
  %318 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 3
  %320 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %319, i32 0, i32 3
  %321 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = load i32, i32* @ExtHtCap_ExtChannelOffsetBelow, align 4
  %325 = and i32 %323, %324
  store i32 %325, i32* %10, align 4
  %326 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %327 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %326, i32 0, i32 3
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 4
  %330 = icmp eq i32 %329, 1
  br i1 %330, label %331, label %347

331:                                              ; preds = %317
  %332 = load i32, i32* %9, align 4
  %333 = icmp eq i32 %332, 1
  br i1 %333, label %334, label %347

334:                                              ; preds = %331
  %335 = load i32, i32* %10, align 4
  %336 = icmp eq i32 %335, 1
  br i1 %336, label %340, label %337

337:                                              ; preds = %334
  %338 = load i32, i32* %10, align 4
  %339 = icmp eq i32 %338, 3
  br i1 %339, label %340, label %347

340:                                              ; preds = %337, %334
  %341 = load i32, i32* %9, align 4
  %342 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %343 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %342, i32 0, i32 1
  store i32 %341, i32* %343, align 4
  %344 = load i32, i32* %10, align 4
  %345 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %346 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %345, i32 0, i32 2
  store i32 %344, i32* %346, align 8
  br label %352

347:                                              ; preds = %337, %331, %317
  %348 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %349 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %348, i32 0, i32 1
  store i32 0, i32* %349, align 4
  %350 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wd, align 8
  %351 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %350, i32 0, i32 2
  store i32 0, i32* %351, align 8
  br label %352

352:                                              ; preds = %347, %340
  br label %353

353:                                              ; preds = %352, %188, %78
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i8* @zmw_rx_buf_readb(i32*, i32*, i32) #1

declare dso_local i32 @zfFindElement(i32*, i32*, i32) #1

declare dso_local i32 @zm_debug_msg0(i8*) #1

declare dso_local i32 @zm_msg2_mm(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
