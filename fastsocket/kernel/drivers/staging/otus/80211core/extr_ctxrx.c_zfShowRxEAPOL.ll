; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctxrx.c_zfShowRxEAPOL.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctxrx.c_zfShowRxEAPOL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"EAP-Packet\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Packet Length = \00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"EAP-Packet Code = \00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"EAP-Packet Request\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"EAP-Packet Identifier = \00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"EAP-Packet Length = \00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"EAP-Packet Type = \00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"EAP-Packet Request Identity\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"EAP-Packet Request Notification\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"EAP-Packet Request MD5-Challenge\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"EAP-Packet Request One Time Password\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"EAP-Packet Request Generic Token Card\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"EAP-Packet Request Wi-Fi Protected Setup\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"EAP-Packet Vendor ID = \00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"EAP-Packet Venodr Type = \00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"EAP-Packet Op Code = \00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"EAP-Packet Flags = \00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"EAP-Packet Response\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"EAP-Packet Response Identity\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"EAP-Packet Request Nak\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"EAP-Packet Response Wi-Fi Protected Setup\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"EAP-Packet Success\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"EAP-Packet Failure\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"EAPOL-Start\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"EAPOL-Logoff\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"EAPOL-Key\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"packet length = \00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"key type = 254 (SSN key descriptor)\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"key type = 0x\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"replay counter(L) = \00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"key information = \00", align 1
@ZM_BIT_3 = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [19 x i8] c"    - pairwise key\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"    - group key\00", align 1
@ZM_BIT_6 = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [23 x i8] c"    - Tx key installed\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"    - Tx key not set\00", align 1
@ZM_BIT_7 = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [17 x i8] c"    - Ack needed\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"    - Ack not needed\00", align 1
@ZM_BIT_8 = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [14 x i8] c"    - MIC set\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"    - MIC not set\00", align 1
@ZM_BIT_9 = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [23 x i8] c"    - packet encrypted\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"    - packet not encrypted\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"keyLen = \00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"keyDataLen = \00", align 1
@.str.43 = private unnamed_addr constant [29 x i8] c"EAPOL-Encapsulated-ASF-Alert\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfShowRxEAPOL(i32* %0, i32* %1, i32 %2) #0 {
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
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  %27 = call i32 @zmw_rx_buf_readb(i32* %23, i32* %24, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 2
  %32 = call i32 @zmw_rx_buf_readb(i32* %28, i32* %29, i32 %31)
  %33 = shl i32 %32, 8
  %34 = load i32*, i32** %4, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 3
  %38 = call i32 @zmw_rx_buf_readb(i32* %34, i32* %35, i32 %37)
  %39 = add nsw i32 %33, %38
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %390

42:                                               ; preds = %3
  %43 = load i32*, i32** %4, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 4
  %47 = call i32 @zmw_rx_buf_readb(i32* %43, i32* %44, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %190

55:                                               ; preds = %42
  %56 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32*, i32** %4, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 5
  %61 = call i32 @zmw_rx_buf_readb(i32* %57, i32* %58, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32*, i32** %4, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 6
  %66 = call i32 @zmw_rx_buf_readb(i32* %62, i32* %63, i32 %65)
  %67 = shl i32 %66, 8
  %68 = load i32*, i32** %4, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 7
  %72 = call i32 @zmw_rx_buf_readb(i32* %68, i32* %69, i32 %71)
  %73 = add nsw i32 %67, %72
  store i32 %73, i32* %17, align 4
  %74 = load i32*, i32** %4, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 8
  %78 = call i32 @zmw_rx_buf_readb(i32* %74, i32* %75, i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %17, align 4
  %82 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %11, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %89

87:                                               ; preds = %55
  %88 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %189

89:                                               ; preds = %55
  %90 = load i32, i32* %11, align 4
  %91 = icmp eq i32 %90, 2
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  br label %188

94:                                               ; preds = %89
  %95 = load i32, i32* %11, align 4
  %96 = icmp eq i32 %95, 4
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  br label %187

99:                                               ; preds = %94
  %100 = load i32, i32* %11, align 4
  %101 = icmp eq i32 %100, 5
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  br label %186

104:                                              ; preds = %99
  %105 = load i32, i32* %11, align 4
  %106 = icmp eq i32 %105, 6
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  br label %185

109:                                              ; preds = %104
  %110 = load i32, i32* %11, align 4
  %111 = icmp eq i32 %110, 254
  br i1 %111, label %112, label %184

112:                                              ; preds = %109
  %113 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0))
  %114 = load i32*, i32** %4, align 8
  %115 = load i32*, i32** %5, align 8
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 9
  %118 = call i32 @zmw_rx_buf_readb(i32* %114, i32* %115, i32 %117)
  %119 = shl i32 %118, 16
  %120 = load i32*, i32** %4, align 8
  %121 = load i32*, i32** %5, align 8
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 10
  %124 = call i32 @zmw_rx_buf_readb(i32* %120, i32* %121, i32 %123)
  %125 = shl i32 %124, 8
  %126 = add nsw i32 %119, %125
  %127 = load i32*, i32** %4, align 8
  %128 = load i32*, i32** %5, align 8
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 11
  %131 = call i32 @zmw_rx_buf_readb(i32* %127, i32* %128, i32 %130)
  %132 = add nsw i32 %126, %131
  store i32 %132, i32* %21, align 4
  %133 = load i32*, i32** %4, align 8
  %134 = load i32*, i32** %5, align 8
  %135 = load i32, i32* %6, align 4
  %136 = add nsw i32 %135, 12
  %137 = call i32 @zmw_rx_buf_readb(i32* %133, i32* %134, i32 %136)
  %138 = shl i32 %137, 24
  %139 = load i32*, i32** %4, align 8
  %140 = load i32*, i32** %5, align 8
  %141 = load i32, i32* %6, align 4
  %142 = add nsw i32 %141, 13
  %143 = call i32 @zmw_rx_buf_readb(i32* %139, i32* %140, i32 %142)
  %144 = shl i32 %143, 16
  %145 = add nsw i32 %138, %144
  %146 = load i32*, i32** %4, align 8
  %147 = load i32*, i32** %5, align 8
  %148 = load i32, i32* %6, align 4
  %149 = add nsw i32 %148, 14
  %150 = call i32 @zmw_rx_buf_readb(i32* %146, i32* %147, i32 %149)
  %151 = shl i32 %150, 8
  %152 = add nsw i32 %145, %151
  %153 = load i32*, i32** %4, align 8
  %154 = load i32*, i32** %5, align 8
  %155 = load i32, i32* %6, align 4
  %156 = add nsw i32 %155, 15
  %157 = call i32 @zmw_rx_buf_readb(i32* %153, i32* %154, i32 %156)
  %158 = add nsw i32 %152, %157
  store i32 %158, i32* %22, align 4
  %159 = load i32*, i32** %4, align 8
  %160 = load i32*, i32** %5, align 8
  %161 = load i32, i32* %6, align 4
  %162 = add nsw i32 %161, 16
  %163 = call i32 @zmw_rx_buf_readb(i32* %159, i32* %160, i32 %162)
  %164 = shl i32 %163, 8
  %165 = load i32*, i32** %4, align 8
  %166 = load i32*, i32** %5, align 8
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, 17
  %169 = call i32 @zmw_rx_buf_readb(i32* %165, i32* %166, i32 %168)
  %170 = add nsw i32 %164, %169
  store i32 %170, i32* %18, align 4
  %171 = load i32*, i32** %4, align 8
  %172 = load i32*, i32** %5, align 8
  %173 = load i32, i32* %6, align 4
  %174 = add nsw i32 %173, 18
  %175 = call i32 @zmw_rx_buf_readb(i32* %171, i32* %172, i32 %174)
  store i32 %175, i32* %12, align 4
  %176 = load i32, i32* %21, align 4
  %177 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* %22, align 4
  %179 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 %178)
  %180 = load i32, i32* %18, align 4
  %181 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i32 %180)
  %182 = load i32, i32* %12, align 4
  %183 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 %182)
  br label %184

184:                                              ; preds = %112, %109
  br label %185

185:                                              ; preds = %184, %107
  br label %186

186:                                              ; preds = %185, %102
  br label %187

187:                                              ; preds = %186, %97
  br label %188

188:                                              ; preds = %187, %92
  br label %189

189:                                              ; preds = %188, %87
  br label %389

190:                                              ; preds = %42
  %191 = load i32, i32* %9, align 4
  %192 = icmp eq i32 %191, 2
  br i1 %192, label %193, label %334

193:                                              ; preds = %190
  %194 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  %195 = load i32*, i32** %4, align 8
  %196 = load i32*, i32** %5, align 8
  %197 = load i32, i32* %6, align 4
  %198 = add nsw i32 %197, 5
  %199 = call i32 @zmw_rx_buf_readb(i32* %195, i32* %196, i32 %198)
  store i32 %199, i32* %10, align 4
  %200 = load i32*, i32** %4, align 8
  %201 = load i32*, i32** %5, align 8
  %202 = load i32, i32* %6, align 4
  %203 = add nsw i32 %202, 6
  %204 = call i32 @zmw_rx_buf_readb(i32* %200, i32* %201, i32 %203)
  %205 = shl i32 %204, 8
  %206 = load i32*, i32** %4, align 8
  %207 = load i32*, i32** %5, align 8
  %208 = load i32, i32* %6, align 4
  %209 = add nsw i32 %208, 7
  %210 = call i32 @zmw_rx_buf_readb(i32* %206, i32* %207, i32 %209)
  %211 = add nsw i32 %205, %210
  store i32 %211, i32* %17, align 4
  %212 = load i32*, i32** %4, align 8
  %213 = load i32*, i32** %5, align 8
  %214 = load i32, i32* %6, align 4
  %215 = add nsw i32 %214, 8
  %216 = call i32 @zmw_rx_buf_readb(i32* %212, i32* %213, i32 %215)
  store i32 %216, i32* %11, align 4
  %217 = load i32, i32* %10, align 4
  %218 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %217)
  %219 = load i32, i32* %17, align 4
  %220 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %219)
  %221 = load i32, i32* %11, align 4
  %222 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %221)
  %223 = load i32, i32* %11, align 4
  %224 = icmp eq i32 %223, 1
  br i1 %224, label %225, label %227

225:                                              ; preds = %193
  %226 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0))
  br label %333

227:                                              ; preds = %193
  %228 = load i32, i32* %11, align 4
  %229 = icmp eq i32 %228, 2
  br i1 %229, label %230, label %232

230:                                              ; preds = %227
  %231 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  br label %332

232:                                              ; preds = %227
  %233 = load i32, i32* %11, align 4
  %234 = icmp eq i32 %233, 3
  br i1 %234, label %235, label %237

235:                                              ; preds = %232
  %236 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0))
  br label %331

237:                                              ; preds = %232
  %238 = load i32, i32* %11, align 4
  %239 = icmp eq i32 %238, 4
  br i1 %239, label %240, label %242

240:                                              ; preds = %237
  %241 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  br label %330

242:                                              ; preds = %237
  %243 = load i32, i32* %11, align 4
  %244 = icmp eq i32 %243, 5
  br i1 %244, label %245, label %247

245:                                              ; preds = %242
  %246 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  br label %329

247:                                              ; preds = %242
  %248 = load i32, i32* %11, align 4
  %249 = icmp eq i32 %248, 6
  br i1 %249, label %250, label %252

250:                                              ; preds = %247
  %251 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  br label %328

252:                                              ; preds = %247
  %253 = load i32, i32* %11, align 4
  %254 = icmp eq i32 %253, 254
  br i1 %254, label %255, label %327

255:                                              ; preds = %252
  %256 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i64 0, i64 0))
  %257 = load i32*, i32** %4, align 8
  %258 = load i32*, i32** %5, align 8
  %259 = load i32, i32* %6, align 4
  %260 = add nsw i32 %259, 9
  %261 = call i32 @zmw_rx_buf_readb(i32* %257, i32* %258, i32 %260)
  %262 = shl i32 %261, 16
  %263 = load i32*, i32** %4, align 8
  %264 = load i32*, i32** %5, align 8
  %265 = load i32, i32* %6, align 4
  %266 = add nsw i32 %265, 10
  %267 = call i32 @zmw_rx_buf_readb(i32* %263, i32* %264, i32 %266)
  %268 = shl i32 %267, 8
  %269 = add nsw i32 %262, %268
  %270 = load i32*, i32** %4, align 8
  %271 = load i32*, i32** %5, align 8
  %272 = load i32, i32* %6, align 4
  %273 = add nsw i32 %272, 11
  %274 = call i32 @zmw_rx_buf_readb(i32* %270, i32* %271, i32 %273)
  %275 = add nsw i32 %269, %274
  store i32 %275, i32* %21, align 4
  %276 = load i32*, i32** %4, align 8
  %277 = load i32*, i32** %5, align 8
  %278 = load i32, i32* %6, align 4
  %279 = add nsw i32 %278, 12
  %280 = call i32 @zmw_rx_buf_readb(i32* %276, i32* %277, i32 %279)
  %281 = shl i32 %280, 24
  %282 = load i32*, i32** %4, align 8
  %283 = load i32*, i32** %5, align 8
  %284 = load i32, i32* %6, align 4
  %285 = add nsw i32 %284, 13
  %286 = call i32 @zmw_rx_buf_readb(i32* %282, i32* %283, i32 %285)
  %287 = shl i32 %286, 16
  %288 = add nsw i32 %281, %287
  %289 = load i32*, i32** %4, align 8
  %290 = load i32*, i32** %5, align 8
  %291 = load i32, i32* %6, align 4
  %292 = add nsw i32 %291, 14
  %293 = call i32 @zmw_rx_buf_readb(i32* %289, i32* %290, i32 %292)
  %294 = shl i32 %293, 8
  %295 = add nsw i32 %288, %294
  %296 = load i32*, i32** %4, align 8
  %297 = load i32*, i32** %5, align 8
  %298 = load i32, i32* %6, align 4
  %299 = add nsw i32 %298, 15
  %300 = call i32 @zmw_rx_buf_readb(i32* %296, i32* %297, i32 %299)
  %301 = add nsw i32 %295, %300
  store i32 %301, i32* %22, align 4
  %302 = load i32*, i32** %4, align 8
  %303 = load i32*, i32** %5, align 8
  %304 = load i32, i32* %6, align 4
  %305 = add nsw i32 %304, 16
  %306 = call i32 @zmw_rx_buf_readb(i32* %302, i32* %303, i32 %305)
  %307 = shl i32 %306, 8
  %308 = load i32*, i32** %4, align 8
  %309 = load i32*, i32** %5, align 8
  %310 = load i32, i32* %6, align 4
  %311 = add nsw i32 %310, 17
  %312 = call i32 @zmw_rx_buf_readb(i32* %308, i32* %309, i32 %311)
  %313 = add nsw i32 %307, %312
  store i32 %313, i32* %18, align 4
  %314 = load i32*, i32** %4, align 8
  %315 = load i32*, i32** %5, align 8
  %316 = load i32, i32* %6, align 4
  %317 = add nsw i32 %316, 18
  %318 = call i32 @zmw_rx_buf_readb(i32* %314, i32* %315, i32 %317)
  store i32 %318, i32* %12, align 4
  %319 = load i32, i32* %21, align 4
  %320 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %319)
  %321 = load i32, i32* %22, align 4
  %322 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 %321)
  %323 = load i32, i32* %18, align 4
  %324 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i32 %323)
  %325 = load i32, i32* %12, align 4
  %326 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 %325)
  br label %327

327:                                              ; preds = %255, %252
  br label %328

328:                                              ; preds = %327, %250
  br label %329

329:                                              ; preds = %328, %245
  br label %330

330:                                              ; preds = %329, %240
  br label %331

331:                                              ; preds = %330, %235
  br label %332

332:                                              ; preds = %331, %230
  br label %333

333:                                              ; preds = %332, %225
  br label %388

334:                                              ; preds = %190
  %335 = load i32, i32* %9, align 4
  %336 = icmp eq i32 %335, 3
  br i1 %336, label %337, label %360

337:                                              ; preds = %334
  %338 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0))
  %339 = load i32*, i32** %4, align 8
  %340 = load i32*, i32** %5, align 8
  %341 = load i32, i32* %6, align 4
  %342 = add nsw i32 %341, 5
  %343 = call i32 @zmw_rx_buf_readb(i32* %339, i32* %340, i32 %342)
  store i32 %343, i32* %10, align 4
  %344 = load i32*, i32** %4, align 8
  %345 = load i32*, i32** %5, align 8
  %346 = load i32, i32* %6, align 4
  %347 = add nsw i32 %346, 6
  %348 = call i32 @zmw_rx_buf_readb(i32* %344, i32* %345, i32 %347)
  %349 = shl i32 %348, 8
  %350 = load i32*, i32** %4, align 8
  %351 = load i32*, i32** %5, align 8
  %352 = load i32, i32* %6, align 4
  %353 = add nsw i32 %352, 7
  %354 = call i32 @zmw_rx_buf_readb(i32* %350, i32* %351, i32 %353)
  %355 = add nsw i32 %349, %354
  store i32 %355, i32* %17, align 4
  %356 = load i32, i32* %10, align 4
  %357 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %356)
  %358 = load i32, i32* %17, align 4
  %359 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %358)
  br label %387

360:                                              ; preds = %334
  %361 = load i32, i32* %9, align 4
  %362 = icmp eq i32 %361, 4
  br i1 %362, label %363, label %386

363:                                              ; preds = %360
  %364 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0))
  %365 = load i32*, i32** %4, align 8
  %366 = load i32*, i32** %5, align 8
  %367 = load i32, i32* %6, align 4
  %368 = add nsw i32 %367, 5
  %369 = call i32 @zmw_rx_buf_readb(i32* %365, i32* %366, i32 %368)
  store i32 %369, i32* %10, align 4
  %370 = load i32*, i32** %4, align 8
  %371 = load i32*, i32** %5, align 8
  %372 = load i32, i32* %6, align 4
  %373 = add nsw i32 %372, 6
  %374 = call i32 @zmw_rx_buf_readb(i32* %370, i32* %371, i32 %373)
  %375 = shl i32 %374, 8
  %376 = load i32*, i32** %4, align 8
  %377 = load i32*, i32** %5, align 8
  %378 = load i32, i32* %6, align 4
  %379 = add nsw i32 %378, 7
  %380 = call i32 @zmw_rx_buf_readb(i32* %376, i32* %377, i32 %379)
  %381 = add nsw i32 %375, %380
  store i32 %381, i32* %17, align 4
  %382 = load i32, i32* %10, align 4
  %383 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %382)
  %384 = load i32, i32* %17, align 4
  %385 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %384)
  br label %386

386:                                              ; preds = %363, %360
  br label %387

387:                                              ; preds = %386, %337
  br label %388

388:                                              ; preds = %387, %333
  br label %389

389:                                              ; preds = %388, %189
  br label %570

390:                                              ; preds = %3
  %391 = load i32, i32* %7, align 4
  %392 = icmp eq i32 %391, 1
  br i1 %392, label %393, label %395

393:                                              ; preds = %390
  %394 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0))
  br label %569

395:                                              ; preds = %390
  %396 = load i32, i32* %7, align 4
  %397 = icmp eq i32 %396, 2
  br i1 %397, label %398, label %400

398:                                              ; preds = %395
  %399 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0))
  br label %568

400:                                              ; preds = %395
  %401 = load i32, i32* %7, align 4
  %402 = icmp eq i32 %401, 3
  br i1 %402, label %403, label %561

403:                                              ; preds = %400
  %404 = load i32*, i32** %4, align 8
  %405 = load i32*, i32** %5, align 8
  %406 = load i32, i32* %6, align 4
  %407 = add nsw i32 %406, 4
  %408 = call i32 @zmw_rx_buf_readb(i32* %404, i32* %405, i32 %407)
  store i32 %408, i32* %8, align 4
  %409 = load i32*, i32** %4, align 8
  %410 = load i32*, i32** %5, align 8
  %411 = load i32, i32* %6, align 4
  %412 = add nsw i32 %411, 5
  %413 = call i32 @zmw_rx_buf_readb(i32* %409, i32* %410, i32 %412)
  %414 = shl i32 %413, 8
  %415 = load i32*, i32** %4, align 8
  %416 = load i32*, i32** %5, align 8
  %417 = load i32, i32* %6, align 4
  %418 = add nsw i32 %417, 6
  %419 = call i32 @zmw_rx_buf_readb(i32* %415, i32* %416, i32 %418)
  %420 = add nsw i32 %414, %419
  store i32 %420, i32* %14, align 4
  %421 = load i32*, i32** %4, align 8
  %422 = load i32*, i32** %5, align 8
  %423 = load i32, i32* %6, align 4
  %424 = add nsw i32 %423, 7
  %425 = call i32 @zmw_rx_buf_readb(i32* %421, i32* %422, i32 %424)
  %426 = shl i32 %425, 8
  %427 = load i32*, i32** %4, align 8
  %428 = load i32*, i32** %5, align 8
  %429 = load i32, i32* %6, align 4
  %430 = add nsw i32 %429, 8
  %431 = call i32 @zmw_rx_buf_readb(i32* %427, i32* %428, i32 %430)
  %432 = add nsw i32 %426, %431
  store i32 %432, i32* %15, align 4
  %433 = load i32*, i32** %4, align 8
  %434 = load i32*, i32** %5, align 8
  %435 = load i32, i32* %6, align 4
  %436 = add nsw i32 %435, 9
  %437 = call i32 @zmw_rx_buf_readb(i32* %433, i32* %434, i32 %436)
  %438 = shl i32 %437, 24
  %439 = load i32*, i32** %4, align 8
  %440 = load i32*, i32** %5, align 8
  %441 = load i32, i32* %6, align 4
  %442 = add nsw i32 %441, 10
  %443 = call i32 @zmw_rx_buf_readb(i32* %439, i32* %440, i32 %442)
  %444 = shl i32 %443, 16
  %445 = add nsw i32 %438, %444
  %446 = load i32*, i32** %4, align 8
  %447 = load i32*, i32** %5, align 8
  %448 = load i32, i32* %6, align 4
  %449 = add nsw i32 %448, 11
  %450 = call i32 @zmw_rx_buf_readb(i32* %446, i32* %447, i32 %449)
  %451 = shl i32 %450, 8
  %452 = add nsw i32 %445, %451
  %453 = load i32*, i32** %4, align 8
  %454 = load i32*, i32** %5, align 8
  %455 = load i32, i32* %6, align 4
  %456 = add nsw i32 %455, 12
  %457 = call i32 @zmw_rx_buf_readb(i32* %453, i32* %454, i32 %456)
  %458 = add nsw i32 %452, %457
  store i32 %458, i32* %19, align 4
  %459 = load i32*, i32** %4, align 8
  %460 = load i32*, i32** %5, align 8
  %461 = load i32, i32* %6, align 4
  %462 = add nsw i32 %461, 13
  %463 = call i32 @zmw_rx_buf_readb(i32* %459, i32* %460, i32 %462)
  %464 = shl i32 %463, 24
  %465 = load i32*, i32** %4, align 8
  %466 = load i32*, i32** %5, align 8
  %467 = load i32, i32* %6, align 4
  %468 = add nsw i32 %467, 14
  %469 = call i32 @zmw_rx_buf_readb(i32* %465, i32* %466, i32 %468)
  %470 = shl i32 %469, 16
  %471 = add nsw i32 %464, %470
  %472 = load i32*, i32** %4, align 8
  %473 = load i32*, i32** %5, align 8
  %474 = load i32, i32* %6, align 4
  %475 = add nsw i32 %474, 15
  %476 = call i32 @zmw_rx_buf_readb(i32* %472, i32* %473, i32 %475)
  %477 = shl i32 %476, 8
  %478 = add nsw i32 %471, %477
  %479 = load i32*, i32** %4, align 8
  %480 = load i32*, i32** %5, align 8
  %481 = load i32, i32* %6, align 4
  %482 = add nsw i32 %481, 16
  %483 = call i32 @zmw_rx_buf_readb(i32* %479, i32* %480, i32 %482)
  %484 = add nsw i32 %478, %483
  store i32 %484, i32* %20, align 4
  %485 = load i32*, i32** %4, align 8
  %486 = load i32*, i32** %5, align 8
  %487 = load i32, i32* %6, align 4
  %488 = add nsw i32 %487, 97
  %489 = call i32 @zmw_rx_buf_readb(i32* %485, i32* %486, i32 %488)
  %490 = shl i32 %489, 8
  %491 = load i32*, i32** %4, align 8
  %492 = load i32*, i32** %5, align 8
  %493 = load i32, i32* %6, align 4
  %494 = add nsw i32 %493, 98
  %495 = call i32 @zmw_rx_buf_readb(i32* %491, i32* %492, i32 %494)
  %496 = add nsw i32 %490, %495
  store i32 %496, i32* %16, align 4
  %497 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0))
  %498 = load i32, i32* %13, align 4
  %499 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), i32 %498)
  %500 = load i32, i32* %8, align 4
  %501 = icmp eq i32 %500, 254
  br i1 %501, label %502, label %504

502:                                              ; preds = %403
  %503 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.27, i64 0, i64 0))
  br label %507

504:                                              ; preds = %403
  %505 = load i32, i32* %8, align 4
  %506 = call i32 @zm_debug_msg2(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i32 %505)
  br label %507

507:                                              ; preds = %504, %502
  %508 = load i32, i32* %20, align 4
  %509 = call i32 @zm_debug_msg2(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i32 %508)
  %510 = load i32, i32* %14, align 4
  %511 = call i32 @zm_debug_msg2(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0), i32 %510)
  %512 = load i32, i32* %14, align 4
  %513 = load i32, i32* @ZM_BIT_3, align 4
  %514 = and i32 %512, %513
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %518

516:                                              ; preds = %507
  %517 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0))
  br label %520

518:                                              ; preds = %507
  %519 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0))
  br label %520

520:                                              ; preds = %518, %516
  %521 = load i32, i32* %14, align 4
  %522 = load i32, i32* @ZM_BIT_6, align 4
  %523 = and i32 %521, %522
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %527

525:                                              ; preds = %520
  %526 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i64 0, i64 0))
  br label %529

527:                                              ; preds = %520
  %528 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i64 0, i64 0))
  br label %529

529:                                              ; preds = %527, %525
  %530 = load i32, i32* %14, align 4
  %531 = load i32, i32* @ZM_BIT_7, align 4
  %532 = and i32 %530, %531
  %533 = icmp ne i32 %532, 0
  br i1 %533, label %534, label %536

534:                                              ; preds = %529
  %535 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0))
  br label %538

536:                                              ; preds = %529
  %537 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i64 0, i64 0))
  br label %538

538:                                              ; preds = %536, %534
  %539 = load i32, i32* %14, align 4
  %540 = load i32, i32* @ZM_BIT_8, align 4
  %541 = and i32 %539, %540
  %542 = icmp ne i32 %541, 0
  br i1 %542, label %543, label %545

543:                                              ; preds = %538
  %544 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i64 0, i64 0))
  br label %547

545:                                              ; preds = %538
  %546 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i64 0, i64 0))
  br label %547

547:                                              ; preds = %545, %543
  %548 = load i32, i32* %14, align 4
  %549 = load i32, i32* @ZM_BIT_9, align 4
  %550 = and i32 %548, %549
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %552, label %554

552:                                              ; preds = %547
  %553 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i64 0, i64 0))
  br label %556

554:                                              ; preds = %547
  %555 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.40, i64 0, i64 0))
  br label %556

556:                                              ; preds = %554, %552
  %557 = load i32, i32* %15, align 4
  %558 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0), i32 %557)
  %559 = load i32, i32* %16, align 4
  %560 = call i32 @zm_debug_msg1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0), i32 %559)
  br label %567

561:                                              ; preds = %400
  %562 = load i32, i32* %7, align 4
  %563 = icmp eq i32 %562, 4
  br i1 %563, label %564, label %566

564:                                              ; preds = %561
  %565 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.43, i64 0, i64 0))
  br label %566

566:                                              ; preds = %564, %561
  br label %567

567:                                              ; preds = %566, %556
  br label %568

568:                                              ; preds = %567, %398
  br label %569

569:                                              ; preds = %568, %393
  br label %570

570:                                              ; preds = %569, %389
  ret void
}

declare dso_local i32 @zmw_rx_buf_readb(i32*, i32*, i32) #1

declare dso_local i32 @zm_debug_msg0(i8*) #1

declare dso_local i32 @zm_debug_msg1(i8*, i32) #1

declare dso_local i32 @zm_debug_msg2(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
