; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctxrx.c_zfShowTxEAPOL.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctxrx.c_zfShowTxEAPOL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"EAPOL Packet size = \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"EAP-Packet\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Packet Length = \00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"EAP-Packet Code = \00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"EAP-Packet Request\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"EAP-Packet Identifier = \00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"EAP-Packet Length = \00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"EAP-Packet Type = \00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"EAP-Packet Request Identity\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"EAP-Packet Request Notification\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"EAP-Packet Request MD5-Challenge\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"EAP-Packet Request One Time Password\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"EAP-Packet Request Generic Token Card\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"EAP-Packet Request Wi-Fi Protected Setup\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"EAP-Packet Vendor ID = \00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"EAP-Packet Venodr Type = \00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"EAP-Packet Op Code = \00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"EAP-Packet Flags = \00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"EAP-Packet Response\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"EAP-Packet Response Identity\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"EAP-Packet Request Nak\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"EAP-Packet Response Wi-Fi Protected Setup\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"EAP-Packet Success\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"EAP-Packet Failure\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"EAPOL-Start\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"EAPOL-Logoff\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"EAPOL-Key\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"packet length = \00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"key type = 254 (SSN key descriptor)\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"key type = 0x\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"replay counter(L) = \00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"key information = \00", align 1
@ZM_BIT_3 = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [19 x i8] c"    - pairwise key\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"    - group key\00", align 1
@ZM_BIT_6 = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [23 x i8] c"    - Tx key installed\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"    - Tx key not set\00", align 1
@ZM_BIT_7 = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [17 x i8] c"    - Ack needed\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"    - Ack not needed\00", align 1
@ZM_BIT_8 = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [14 x i8] c"    - MIC set\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"    - MIC not set\00", align 1
@ZM_BIT_9 = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [23 x i8] c"    - packet encrypted\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"    - packet not encrypted\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"keyLen = \00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"keyDataLen = \00", align 1
@.str.44 = private unnamed_addr constant [29 x i8] c"EAPOL-Encapsulated-ASF-Alert\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfShowTxEAPOL(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @zmw_get_wlan_dev(i32* %23)
  %25 = load i32*, i32** %4, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @zfwBufGetSize(i32* %25, i32* %26)
  %28 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i32 @zmw_tx_buf_readb(i32* %29, i32* %30, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 2
  %38 = call i32 @zmw_tx_buf_readb(i32* %34, i32* %35, i32 %37)
  %39 = shl i32 %38, 8
  %40 = load i32*, i32** %4, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 3
  %44 = call i32 @zmw_tx_buf_readb(i32* %40, i32* %41, i32 %43)
  %45 = add nsw i32 %39, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %396

48:                                               ; preds = %3
  %49 = load i32*, i32** %4, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 4
  %53 = call i32 @zmw_tx_buf_readb(i32* %49, i32* %50, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %196

61:                                               ; preds = %48
  %62 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %63 = load i32*, i32** %4, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 5
  %67 = call i32 @zmw_tx_buf_readb(i32* %63, i32* %64, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32*, i32** %4, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 6
  %72 = call i32 @zmw_tx_buf_readb(i32* %68, i32* %69, i32 %71)
  %73 = shl i32 %72, 8
  %74 = load i32*, i32** %4, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 7
  %78 = call i32 @zmw_tx_buf_readb(i32* %74, i32* %75, i32 %77)
  %79 = add nsw i32 %73, %78
  store i32 %79, i32* %17, align 4
  %80 = load i32*, i32** %4, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 8
  %84 = call i32 @zmw_tx_buf_readb(i32* %80, i32* %81, i32 %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %17, align 4
  %88 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %11, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %95

93:                                               ; preds = %61
  %94 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %195

95:                                               ; preds = %61
  %96 = load i32, i32* %11, align 4
  %97 = icmp eq i32 %96, 2
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  br label %194

100:                                              ; preds = %95
  %101 = load i32, i32* %11, align 4
  %102 = icmp eq i32 %101, 4
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  br label %193

105:                                              ; preds = %100
  %106 = load i32, i32* %11, align 4
  %107 = icmp eq i32 %106, 5
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0))
  br label %192

110:                                              ; preds = %105
  %111 = load i32, i32* %11, align 4
  %112 = icmp eq i32 %111, 6
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0))
  br label %191

115:                                              ; preds = %110
  %116 = load i32, i32* %11, align 4
  %117 = icmp eq i32 %116, 254
  br i1 %117, label %118, label %190

118:                                              ; preds = %115
  %119 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0))
  %120 = load i32*, i32** %4, align 8
  %121 = load i32*, i32** %5, align 8
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 9
  %124 = call i32 @zmw_tx_buf_readb(i32* %120, i32* %121, i32 %123)
  %125 = shl i32 %124, 16
  %126 = load i32*, i32** %4, align 8
  %127 = load i32*, i32** %5, align 8
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 10
  %130 = call i32 @zmw_tx_buf_readb(i32* %126, i32* %127, i32 %129)
  %131 = shl i32 %130, 8
  %132 = add nsw i32 %125, %131
  %133 = load i32*, i32** %4, align 8
  %134 = load i32*, i32** %5, align 8
  %135 = load i32, i32* %6, align 4
  %136 = add nsw i32 %135, 11
  %137 = call i32 @zmw_tx_buf_readb(i32* %133, i32* %134, i32 %136)
  %138 = add nsw i32 %132, %137
  store i32 %138, i32* %21, align 4
  %139 = load i32*, i32** %4, align 8
  %140 = load i32*, i32** %5, align 8
  %141 = load i32, i32* %6, align 4
  %142 = add nsw i32 %141, 12
  %143 = call i32 @zmw_tx_buf_readb(i32* %139, i32* %140, i32 %142)
  %144 = shl i32 %143, 24
  %145 = load i32*, i32** %4, align 8
  %146 = load i32*, i32** %5, align 8
  %147 = load i32, i32* %6, align 4
  %148 = add nsw i32 %147, 13
  %149 = call i32 @zmw_tx_buf_readb(i32* %145, i32* %146, i32 %148)
  %150 = shl i32 %149, 16
  %151 = add nsw i32 %144, %150
  %152 = load i32*, i32** %4, align 8
  %153 = load i32*, i32** %5, align 8
  %154 = load i32, i32* %6, align 4
  %155 = add nsw i32 %154, 14
  %156 = call i32 @zmw_tx_buf_readb(i32* %152, i32* %153, i32 %155)
  %157 = shl i32 %156, 8
  %158 = add nsw i32 %151, %157
  %159 = load i32*, i32** %4, align 8
  %160 = load i32*, i32** %5, align 8
  %161 = load i32, i32* %6, align 4
  %162 = add nsw i32 %161, 15
  %163 = call i32 @zmw_tx_buf_readb(i32* %159, i32* %160, i32 %162)
  %164 = add nsw i32 %158, %163
  store i32 %164, i32* %22, align 4
  %165 = load i32*, i32** %4, align 8
  %166 = load i32*, i32** %5, align 8
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, 16
  %169 = call i32 @zmw_tx_buf_readb(i32* %165, i32* %166, i32 %168)
  %170 = shl i32 %169, 8
  %171 = load i32*, i32** %4, align 8
  %172 = load i32*, i32** %5, align 8
  %173 = load i32, i32* %6, align 4
  %174 = add nsw i32 %173, 17
  %175 = call i32 @zmw_tx_buf_readb(i32* %171, i32* %172, i32 %174)
  %176 = add nsw i32 %170, %175
  store i32 %176, i32* %18, align 4
  %177 = load i32*, i32** %4, align 8
  %178 = load i32*, i32** %5, align 8
  %179 = load i32, i32* %6, align 4
  %180 = add nsw i32 %179, 18
  %181 = call i32 @zmw_tx_buf_readb(i32* %177, i32* %178, i32 %180)
  store i32 %181, i32* %12, align 4
  %182 = load i32, i32* %21, align 4
  %183 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 %182)
  %184 = load i32, i32* %22, align 4
  %185 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* %18, align 4
  %187 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 %186)
  %188 = load i32, i32* %12, align 4
  %189 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 %188)
  br label %190

190:                                              ; preds = %118, %115
  br label %191

191:                                              ; preds = %190, %113
  br label %192

192:                                              ; preds = %191, %108
  br label %193

193:                                              ; preds = %192, %103
  br label %194

194:                                              ; preds = %193, %98
  br label %195

195:                                              ; preds = %194, %93
  br label %395

196:                                              ; preds = %48
  %197 = load i32, i32* %9, align 4
  %198 = icmp eq i32 %197, 2
  br i1 %198, label %199, label %340

199:                                              ; preds = %196
  %200 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0))
  %201 = load i32*, i32** %4, align 8
  %202 = load i32*, i32** %5, align 8
  %203 = load i32, i32* %6, align 4
  %204 = add nsw i32 %203, 5
  %205 = call i32 @zmw_tx_buf_readb(i32* %201, i32* %202, i32 %204)
  store i32 %205, i32* %10, align 4
  %206 = load i32*, i32** %4, align 8
  %207 = load i32*, i32** %5, align 8
  %208 = load i32, i32* %6, align 4
  %209 = add nsw i32 %208, 6
  %210 = call i32 @zmw_tx_buf_readb(i32* %206, i32* %207, i32 %209)
  %211 = shl i32 %210, 8
  %212 = load i32*, i32** %4, align 8
  %213 = load i32*, i32** %5, align 8
  %214 = load i32, i32* %6, align 4
  %215 = add nsw i32 %214, 7
  %216 = call i32 @zmw_tx_buf_readb(i32* %212, i32* %213, i32 %215)
  %217 = add nsw i32 %211, %216
  store i32 %217, i32* %17, align 4
  %218 = load i32*, i32** %4, align 8
  %219 = load i32*, i32** %5, align 8
  %220 = load i32, i32* %6, align 4
  %221 = add nsw i32 %220, 8
  %222 = call i32 @zmw_tx_buf_readb(i32* %218, i32* %219, i32 %221)
  store i32 %222, i32* %11, align 4
  %223 = load i32, i32* %10, align 4
  %224 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %223)
  %225 = load i32, i32* %17, align 4
  %226 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %225)
  %227 = load i32, i32* %11, align 4
  %228 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %227)
  %229 = load i32, i32* %11, align 4
  %230 = icmp eq i32 %229, 1
  br i1 %230, label %231, label %233

231:                                              ; preds = %199
  %232 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0))
  br label %339

233:                                              ; preds = %199
  %234 = load i32, i32* %11, align 4
  %235 = icmp eq i32 %234, 2
  br i1 %235, label %236, label %238

236:                                              ; preds = %233
  %237 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  br label %338

238:                                              ; preds = %233
  %239 = load i32, i32* %11, align 4
  %240 = icmp eq i32 %239, 3
  br i1 %240, label %241, label %243

241:                                              ; preds = %238
  %242 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0))
  br label %337

243:                                              ; preds = %238
  %244 = load i32, i32* %11, align 4
  %245 = icmp eq i32 %244, 4
  br i1 %245, label %246, label %248

246:                                              ; preds = %243
  %247 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  br label %336

248:                                              ; preds = %243
  %249 = load i32, i32* %11, align 4
  %250 = icmp eq i32 %249, 5
  br i1 %250, label %251, label %253

251:                                              ; preds = %248
  %252 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0))
  br label %335

253:                                              ; preds = %248
  %254 = load i32, i32* %11, align 4
  %255 = icmp eq i32 %254, 6
  br i1 %255, label %256, label %258

256:                                              ; preds = %253
  %257 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0))
  br label %334

258:                                              ; preds = %253
  %259 = load i32, i32* %11, align 4
  %260 = icmp eq i32 %259, 254
  br i1 %260, label %261, label %333

261:                                              ; preds = %258
  %262 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i64 0, i64 0))
  %263 = load i32*, i32** %4, align 8
  %264 = load i32*, i32** %5, align 8
  %265 = load i32, i32* %6, align 4
  %266 = add nsw i32 %265, 9
  %267 = call i32 @zmw_tx_buf_readb(i32* %263, i32* %264, i32 %266)
  %268 = shl i32 %267, 16
  %269 = load i32*, i32** %4, align 8
  %270 = load i32*, i32** %5, align 8
  %271 = load i32, i32* %6, align 4
  %272 = add nsw i32 %271, 10
  %273 = call i32 @zmw_tx_buf_readb(i32* %269, i32* %270, i32 %272)
  %274 = shl i32 %273, 8
  %275 = add nsw i32 %268, %274
  %276 = load i32*, i32** %4, align 8
  %277 = load i32*, i32** %5, align 8
  %278 = load i32, i32* %6, align 4
  %279 = add nsw i32 %278, 11
  %280 = call i32 @zmw_tx_buf_readb(i32* %276, i32* %277, i32 %279)
  %281 = add nsw i32 %275, %280
  store i32 %281, i32* %21, align 4
  %282 = load i32*, i32** %4, align 8
  %283 = load i32*, i32** %5, align 8
  %284 = load i32, i32* %6, align 4
  %285 = add nsw i32 %284, 12
  %286 = call i32 @zmw_tx_buf_readb(i32* %282, i32* %283, i32 %285)
  %287 = shl i32 %286, 24
  %288 = load i32*, i32** %4, align 8
  %289 = load i32*, i32** %5, align 8
  %290 = load i32, i32* %6, align 4
  %291 = add nsw i32 %290, 13
  %292 = call i32 @zmw_tx_buf_readb(i32* %288, i32* %289, i32 %291)
  %293 = shl i32 %292, 16
  %294 = add nsw i32 %287, %293
  %295 = load i32*, i32** %4, align 8
  %296 = load i32*, i32** %5, align 8
  %297 = load i32, i32* %6, align 4
  %298 = add nsw i32 %297, 14
  %299 = call i32 @zmw_tx_buf_readb(i32* %295, i32* %296, i32 %298)
  %300 = shl i32 %299, 8
  %301 = add nsw i32 %294, %300
  %302 = load i32*, i32** %4, align 8
  %303 = load i32*, i32** %5, align 8
  %304 = load i32, i32* %6, align 4
  %305 = add nsw i32 %304, 15
  %306 = call i32 @zmw_tx_buf_readb(i32* %302, i32* %303, i32 %305)
  %307 = add nsw i32 %301, %306
  store i32 %307, i32* %22, align 4
  %308 = load i32*, i32** %4, align 8
  %309 = load i32*, i32** %5, align 8
  %310 = load i32, i32* %6, align 4
  %311 = add nsw i32 %310, 16
  %312 = call i32 @zmw_tx_buf_readb(i32* %308, i32* %309, i32 %311)
  %313 = shl i32 %312, 8
  %314 = load i32*, i32** %4, align 8
  %315 = load i32*, i32** %5, align 8
  %316 = load i32, i32* %6, align 4
  %317 = add nsw i32 %316, 17
  %318 = call i32 @zmw_tx_buf_readb(i32* %314, i32* %315, i32 %317)
  %319 = add nsw i32 %313, %318
  store i32 %319, i32* %18, align 4
  %320 = load i32*, i32** %4, align 8
  %321 = load i32*, i32** %5, align 8
  %322 = load i32, i32* %6, align 4
  %323 = add nsw i32 %322, 18
  %324 = call i32 @zmw_tx_buf_readb(i32* %320, i32* %321, i32 %323)
  store i32 %324, i32* %12, align 4
  %325 = load i32, i32* %21, align 4
  %326 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 %325)
  %327 = load i32, i32* %22, align 4
  %328 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i32 %327)
  %329 = load i32, i32* %18, align 4
  %330 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 %329)
  %331 = load i32, i32* %12, align 4
  %332 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 %331)
  br label %333

333:                                              ; preds = %261, %258
  br label %334

334:                                              ; preds = %333, %256
  br label %335

335:                                              ; preds = %334, %251
  br label %336

336:                                              ; preds = %335, %246
  br label %337

337:                                              ; preds = %336, %241
  br label %338

338:                                              ; preds = %337, %236
  br label %339

339:                                              ; preds = %338, %231
  br label %394

340:                                              ; preds = %196
  %341 = load i32, i32* %9, align 4
  %342 = icmp eq i32 %341, 3
  br i1 %342, label %343, label %366

343:                                              ; preds = %340
  %344 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0))
  %345 = load i32*, i32** %4, align 8
  %346 = load i32*, i32** %5, align 8
  %347 = load i32, i32* %6, align 4
  %348 = add nsw i32 %347, 5
  %349 = call i32 @zmw_rx_buf_readb(i32* %345, i32* %346, i32 %348)
  store i32 %349, i32* %10, align 4
  %350 = load i32*, i32** %4, align 8
  %351 = load i32*, i32** %5, align 8
  %352 = load i32, i32* %6, align 4
  %353 = add nsw i32 %352, 6
  %354 = call i32 @zmw_rx_buf_readb(i32* %350, i32* %351, i32 %353)
  %355 = shl i32 %354, 8
  %356 = load i32*, i32** %4, align 8
  %357 = load i32*, i32** %5, align 8
  %358 = load i32, i32* %6, align 4
  %359 = add nsw i32 %358, 7
  %360 = call i32 @zmw_rx_buf_readb(i32* %356, i32* %357, i32 %359)
  %361 = add nsw i32 %355, %360
  store i32 %361, i32* %17, align 4
  %362 = load i32, i32* %10, align 4
  %363 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %362)
  %364 = load i32, i32* %17, align 4
  %365 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %364)
  br label %393

366:                                              ; preds = %340
  %367 = load i32, i32* %9, align 4
  %368 = icmp eq i32 %367, 4
  br i1 %368, label %369, label %392

369:                                              ; preds = %366
  %370 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0))
  %371 = load i32*, i32** %4, align 8
  %372 = load i32*, i32** %5, align 8
  %373 = load i32, i32* %6, align 4
  %374 = add nsw i32 %373, 5
  %375 = call i32 @zmw_tx_buf_readb(i32* %371, i32* %372, i32 %374)
  store i32 %375, i32* %10, align 4
  %376 = load i32*, i32** %4, align 8
  %377 = load i32*, i32** %5, align 8
  %378 = load i32, i32* %6, align 4
  %379 = add nsw i32 %378, 6
  %380 = call i32 @zmw_tx_buf_readb(i32* %376, i32* %377, i32 %379)
  %381 = shl i32 %380, 8
  %382 = load i32*, i32** %4, align 8
  %383 = load i32*, i32** %5, align 8
  %384 = load i32, i32* %6, align 4
  %385 = add nsw i32 %384, 7
  %386 = call i32 @zmw_tx_buf_readb(i32* %382, i32* %383, i32 %385)
  %387 = add nsw i32 %381, %386
  store i32 %387, i32* %17, align 4
  %388 = load i32, i32* %10, align 4
  %389 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %388)
  %390 = load i32, i32* %17, align 4
  %391 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %390)
  br label %392

392:                                              ; preds = %369, %366
  br label %393

393:                                              ; preds = %392, %343
  br label %394

394:                                              ; preds = %393, %339
  br label %395

395:                                              ; preds = %394, %195
  br label %576

396:                                              ; preds = %3
  %397 = load i32, i32* %7, align 4
  %398 = icmp eq i32 %397, 1
  br i1 %398, label %399, label %401

399:                                              ; preds = %396
  %400 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0))
  br label %575

401:                                              ; preds = %396
  %402 = load i32, i32* %7, align 4
  %403 = icmp eq i32 %402, 2
  br i1 %403, label %404, label %406

404:                                              ; preds = %401
  %405 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0))
  br label %574

406:                                              ; preds = %401
  %407 = load i32, i32* %7, align 4
  %408 = icmp eq i32 %407, 3
  br i1 %408, label %409, label %567

409:                                              ; preds = %406
  %410 = load i32*, i32** %4, align 8
  %411 = load i32*, i32** %5, align 8
  %412 = load i32, i32* %6, align 4
  %413 = add nsw i32 %412, 4
  %414 = call i32 @zmw_tx_buf_readb(i32* %410, i32* %411, i32 %413)
  store i32 %414, i32* %8, align 4
  %415 = load i32*, i32** %4, align 8
  %416 = load i32*, i32** %5, align 8
  %417 = load i32, i32* %6, align 4
  %418 = add nsw i32 %417, 5
  %419 = call i32 @zmw_tx_buf_readb(i32* %415, i32* %416, i32 %418)
  %420 = shl i32 %419, 8
  %421 = load i32*, i32** %4, align 8
  %422 = load i32*, i32** %5, align 8
  %423 = load i32, i32* %6, align 4
  %424 = add nsw i32 %423, 6
  %425 = call i32 @zmw_tx_buf_readb(i32* %421, i32* %422, i32 %424)
  %426 = add nsw i32 %420, %425
  store i32 %426, i32* %14, align 4
  %427 = load i32*, i32** %4, align 8
  %428 = load i32*, i32** %5, align 8
  %429 = load i32, i32* %6, align 4
  %430 = add nsw i32 %429, 7
  %431 = call i32 @zmw_tx_buf_readb(i32* %427, i32* %428, i32 %430)
  %432 = shl i32 %431, 8
  %433 = load i32*, i32** %4, align 8
  %434 = load i32*, i32** %5, align 8
  %435 = load i32, i32* %6, align 4
  %436 = add nsw i32 %435, 8
  %437 = call i32 @zmw_tx_buf_readb(i32* %433, i32* %434, i32 %436)
  %438 = add nsw i32 %432, %437
  store i32 %438, i32* %15, align 4
  %439 = load i32*, i32** %4, align 8
  %440 = load i32*, i32** %5, align 8
  %441 = load i32, i32* %6, align 4
  %442 = add nsw i32 %441, 9
  %443 = call i32 @zmw_tx_buf_readb(i32* %439, i32* %440, i32 %442)
  %444 = shl i32 %443, 24
  %445 = load i32*, i32** %4, align 8
  %446 = load i32*, i32** %5, align 8
  %447 = load i32, i32* %6, align 4
  %448 = add nsw i32 %447, 10
  %449 = call i32 @zmw_tx_buf_readb(i32* %445, i32* %446, i32 %448)
  %450 = shl i32 %449, 16
  %451 = add nsw i32 %444, %450
  %452 = load i32*, i32** %4, align 8
  %453 = load i32*, i32** %5, align 8
  %454 = load i32, i32* %6, align 4
  %455 = add nsw i32 %454, 11
  %456 = call i32 @zmw_tx_buf_readb(i32* %452, i32* %453, i32 %455)
  %457 = shl i32 %456, 8
  %458 = add nsw i32 %451, %457
  %459 = load i32*, i32** %4, align 8
  %460 = load i32*, i32** %5, align 8
  %461 = load i32, i32* %6, align 4
  %462 = add nsw i32 %461, 12
  %463 = call i32 @zmw_tx_buf_readb(i32* %459, i32* %460, i32 %462)
  %464 = add nsw i32 %458, %463
  store i32 %464, i32* %19, align 4
  %465 = load i32*, i32** %4, align 8
  %466 = load i32*, i32** %5, align 8
  %467 = load i32, i32* %6, align 4
  %468 = add nsw i32 %467, 13
  %469 = call i32 @zmw_tx_buf_readb(i32* %465, i32* %466, i32 %468)
  %470 = shl i32 %469, 24
  %471 = load i32*, i32** %4, align 8
  %472 = load i32*, i32** %5, align 8
  %473 = load i32, i32* %6, align 4
  %474 = add nsw i32 %473, 14
  %475 = call i32 @zmw_tx_buf_readb(i32* %471, i32* %472, i32 %474)
  %476 = shl i32 %475, 16
  %477 = add nsw i32 %470, %476
  %478 = load i32*, i32** %4, align 8
  %479 = load i32*, i32** %5, align 8
  %480 = load i32, i32* %6, align 4
  %481 = add nsw i32 %480, 15
  %482 = call i32 @zmw_tx_buf_readb(i32* %478, i32* %479, i32 %481)
  %483 = shl i32 %482, 8
  %484 = add nsw i32 %477, %483
  %485 = load i32*, i32** %4, align 8
  %486 = load i32*, i32** %5, align 8
  %487 = load i32, i32* %6, align 4
  %488 = add nsw i32 %487, 16
  %489 = call i32 @zmw_tx_buf_readb(i32* %485, i32* %486, i32 %488)
  %490 = add nsw i32 %484, %489
  store i32 %490, i32* %20, align 4
  %491 = load i32*, i32** %4, align 8
  %492 = load i32*, i32** %5, align 8
  %493 = load i32, i32* %6, align 4
  %494 = add nsw i32 %493, 97
  %495 = call i32 @zmw_tx_buf_readb(i32* %491, i32* %492, i32 %494)
  %496 = shl i32 %495, 8
  %497 = load i32*, i32** %4, align 8
  %498 = load i32*, i32** %5, align 8
  %499 = load i32, i32* %6, align 4
  %500 = add nsw i32 %499, 98
  %501 = call i32 @zmw_tx_buf_readb(i32* %497, i32* %498, i32 %500)
  %502 = add nsw i32 %496, %501
  store i32 %502, i32* %16, align 4
  %503 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0))
  %504 = load i32, i32* %13, align 4
  %505 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0), i32 %504)
  %506 = load i32, i32* %8, align 4
  %507 = icmp eq i32 %506, 254
  br i1 %507, label %508, label %510

508:                                              ; preds = %409
  %509 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i64 0, i64 0))
  br label %513

510:                                              ; preds = %409
  %511 = load i32, i32* %8, align 4
  %512 = call i32 @zm_debug_msg2(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i32 %511)
  br label %513

513:                                              ; preds = %510, %508
  %514 = load i32, i32* %20, align 4
  %515 = call i32 @zm_debug_msg2(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i64 0, i64 0), i32 %514)
  %516 = load i32, i32* %14, align 4
  %517 = call i32 @zm_debug_msg2(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0), i32 %516)
  %518 = load i32, i32* %14, align 4
  %519 = load i32, i32* @ZM_BIT_3, align 4
  %520 = and i32 %518, %519
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %522, label %524

522:                                              ; preds = %513
  %523 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i64 0, i64 0))
  br label %526

524:                                              ; preds = %513
  %525 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i64 0, i64 0))
  br label %526

526:                                              ; preds = %524, %522
  %527 = load i32, i32* %14, align 4
  %528 = load i32, i32* @ZM_BIT_6, align 4
  %529 = and i32 %527, %528
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %533

531:                                              ; preds = %526
  %532 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i64 0, i64 0))
  br label %535

533:                                              ; preds = %526
  %534 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i64 0, i64 0))
  br label %535

535:                                              ; preds = %533, %531
  %536 = load i32, i32* %14, align 4
  %537 = load i32, i32* @ZM_BIT_7, align 4
  %538 = and i32 %536, %537
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %540, label %542

540:                                              ; preds = %535
  %541 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0))
  br label %544

542:                                              ; preds = %535
  %543 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i64 0, i64 0))
  br label %544

544:                                              ; preds = %542, %540
  %545 = load i32, i32* %14, align 4
  %546 = load i32, i32* @ZM_BIT_8, align 4
  %547 = and i32 %545, %546
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %549, label %551

549:                                              ; preds = %544
  %550 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i64 0, i64 0))
  br label %553

551:                                              ; preds = %544
  %552 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i64 0, i64 0))
  br label %553

553:                                              ; preds = %551, %549
  %554 = load i32, i32* %14, align 4
  %555 = load i32, i32* @ZM_BIT_9, align 4
  %556 = and i32 %554, %555
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %560

558:                                              ; preds = %553
  %559 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.40, i64 0, i64 0))
  br label %562

560:                                              ; preds = %553
  %561 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.41, i64 0, i64 0))
  br label %562

562:                                              ; preds = %560, %558
  %563 = load i32, i32* %15, align 4
  %564 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0), i32 %563)
  %565 = load i32, i32* %16, align 4
  %566 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i64 0, i64 0), i32 %565)
  br label %573

567:                                              ; preds = %406
  %568 = load i32, i32* %7, align 4
  %569 = icmp eq i32 %568, 4
  br i1 %569, label %570, label %572

570:                                              ; preds = %567
  %571 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.44, i64 0, i64 0))
  br label %572

572:                                              ; preds = %570, %567
  br label %573

573:                                              ; preds = %572, %562
  br label %574

574:                                              ; preds = %573, %404
  br label %575

575:                                              ; preds = %574, %399
  br label %576

576:                                              ; preds = %575, %395
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zm_debug_msg1(i8*, i32) #1

declare dso_local i32 @zfwBufGetSize(i32*, i32*) #1

declare dso_local i32 @zmw_tx_buf_readb(i32*, i32*, i32) #1

declare dso_local i32 @zm_debug_msg0(i8*) #1

declare dso_local i32 @zmw_rx_buf_readb(i32*, i32*, i32) #1

declare dso_local i32 @zm_debug_msg2(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
