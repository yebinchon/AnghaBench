; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wa-xfer.c_wa_xfer_result_chew.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_wa-xfer.c_wa_xfer_result_chew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wahc = type { i32, %struct.TYPE_8__*, %struct.wa_xfer_result*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.wa_seg*, i8*, i32, i64, i64, i32 }
%struct.wa_seg = type { i64, i32, i32 }
%struct.wa_xfer_result = type { i32, i64, i32 }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }
%struct.wa_xfer = type { i64, i64, i32, %struct.TYPE_7__*, i32, i64, i64, %struct.TYPE_6__*, %struct.wa_seg** }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { %struct.wa_rpipe* }
%struct.wa_rpipe = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"xfer %p#%u: bTransferStatus 0x%02x (seg %u)\0A\00", align 1
@WA_SEG_ABORTED = common dso_local global i64 0, align 8
@WA_SEG_ERROR = common dso_local global i64 0, align 8
@WA_SEG_SUBMITTED = common dso_local global i64 0, align 8
@WA_SEG_PENDING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"xfer %p#%u: Bad segment state %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"DTI: xfer %p#%u failed (0x%02x)\0A\00", align 1
@WA_SEG_DTI_PENDING = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@WA_SEG_DONE = common dso_local global i64 0, align 8
@EDC_MAX_ERRORS = common dso_local global i32 0, align 4
@EDC_ERROR_TIMEFRAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"DTI: URB max acceptable errors exceeded, resetting device\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"xfer %p#%u: can't submit DTI data phase: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"xfer %p#%u: bad segment\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wahc*, %struct.wa_xfer*)* @wa_xfer_result_chew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wa_xfer_result_chew(%struct.wahc* %0, %struct.wa_xfer* %1) #0 {
  %3 = alloca %struct.wahc*, align 8
  %4 = alloca %struct.wa_xfer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.wa_seg*, align 8
  %10 = alloca %struct.wa_rpipe*, align 8
  %11 = alloca %struct.wa_xfer_result*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.wahc* %0, %struct.wahc** %3, align 8
  store %struct.wa_xfer* %1, %struct.wa_xfer** %4, align 8
  %15 = load %struct.wahc*, %struct.wahc** %3, align 8
  %16 = getelementptr inbounds %struct.wahc, %struct.wahc* %15, i32 0, i32 3
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %6, align 8
  %19 = load %struct.wahc*, %struct.wahc** %3, align 8
  %20 = getelementptr inbounds %struct.wahc, %struct.wahc* %19, i32 0, i32 2
  %21 = load %struct.wa_xfer_result*, %struct.wa_xfer_result** %20, align 8
  store %struct.wa_xfer_result* %21, %struct.wa_xfer_result** %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %14, align 4
  %22 = load %struct.wa_xfer*, %struct.wa_xfer** %4, align 8
  %23 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %22, i32 0, i32 2
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.wa_xfer_result*, %struct.wa_xfer_result** %11, align 8
  %27 = getelementptr inbounds %struct.wa_xfer_result, %struct.wa_xfer_result* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, 127
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.wa_xfer*, %struct.wa_xfer** %4, align 8
  %33 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp uge i64 %31, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %2
  br label %311

40:                                               ; preds = %2
  %41 = load %struct.wa_xfer*, %struct.wa_xfer** %4, align 8
  %42 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %41, i32 0, i32 8
  %43 = load %struct.wa_seg**, %struct.wa_seg*** %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds %struct.wa_seg*, %struct.wa_seg** %43, i64 %44
  %46 = load %struct.wa_seg*, %struct.wa_seg** %45, align 8
  store %struct.wa_seg* %46, %struct.wa_seg** %9, align 8
  %47 = load %struct.wa_xfer*, %struct.wa_xfer** %4, align 8
  %48 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %47, i32 0, i32 7
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.wa_rpipe*, %struct.wa_rpipe** %50, align 8
  store %struct.wa_rpipe* %51, %struct.wa_rpipe** %10, align 8
  %52 = load %struct.wa_xfer_result*, %struct.wa_xfer_result** %11, align 8
  %53 = getelementptr inbounds %struct.wa_xfer_result, %struct.wa_xfer_result* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %13, align 8
  %55 = load %struct.device*, %struct.device** %6, align 8
  %56 = load %struct.wa_xfer*, %struct.wa_xfer** %4, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %13, align 8
  %59 = load %struct.wa_seg*, %struct.wa_seg** %9, align 8
  %60 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @dev_dbg(%struct.device* %55, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.wa_xfer* %56, i64 %57, i64 %58, i64 %61)
  %63 = load %struct.wa_seg*, %struct.wa_seg** %9, align 8
  %64 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @WA_SEG_ABORTED, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %40
  %69 = load %struct.wa_seg*, %struct.wa_seg** %9, align 8
  %70 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @WA_SEG_ERROR, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68, %40
  br label %341

75:                                               ; preds = %68
  %76 = load %struct.wa_seg*, %struct.wa_seg** %9, align 8
  %77 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @WA_SEG_SUBMITTED, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load i64, i64* @WA_SEG_PENDING, align 8
  %83 = load %struct.wa_seg*, %struct.wa_seg** %9, align 8
  %84 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %81, %75
  %86 = load %struct.wa_seg*, %struct.wa_seg** %9, align 8
  %87 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @WA_SEG_PENDING, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %106

91:                                               ; preds = %85
  %92 = call i64 (...) @printk_ratelimit()
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %91
  %95 = load %struct.device*, %struct.device** %6, align 8
  %96 = load %struct.wa_xfer*, %struct.wa_xfer** %4, align 8
  %97 = load i64, i64* %8, align 8
  %98 = load %struct.wa_seg*, %struct.wa_seg** %9, align 8
  %99 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %95, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.wa_xfer* %96, i64 %97, i64 %100)
  br label %102

102:                                              ; preds = %94, %91
  %103 = load i64, i64* @WA_SEG_PENDING, align 8
  %104 = load %struct.wa_seg*, %struct.wa_seg** %9, align 8
  %105 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  br label %106

106:                                              ; preds = %102, %85
  %107 = load i64, i64* %13, align 8
  %108 = and i64 %107, 128
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %106
  %111 = load i64, i64* %13, align 8
  %112 = call i32 @wa_xfer_status_to_errno(i64 %111)
  %113 = load %struct.wa_seg*, %struct.wa_seg** %9, align 8
  %114 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 8
  %115 = load %struct.device*, %struct.device** %6, align 8
  %116 = load %struct.wa_xfer*, %struct.wa_xfer** %4, align 8
  %117 = load %struct.wa_seg*, %struct.wa_seg** %9, align 8
  %118 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i64, i64* %13, align 8
  %121 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %115, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), %struct.wa_xfer* %116, i32 %119, i64 %120)
  br label %281

122:                                              ; preds = %106
  %123 = load i64, i64* %13, align 8
  %124 = and i64 %123, 64
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  store i64 0, i64* %13, align 8
  br label %127

127:                                              ; preds = %126, %122
  %128 = load %struct.wa_xfer*, %struct.wa_xfer** %4, align 8
  %129 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %128, i32 0, i32 6
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %220

132:                                              ; preds = %127
  %133 = load i64, i64* @WA_SEG_DTI_PENDING, align 8
  %134 = load %struct.wa_seg*, %struct.wa_seg** %9, align 8
  %135 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  %136 = load %struct.wahc*, %struct.wahc** %3, align 8
  %137 = getelementptr inbounds %struct.wahc, %struct.wahc* %136, i32 0, i32 1
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @EINPROGRESS, align 4
  %142 = sub nsw i32 0, %141
  %143 = icmp eq i32 %140, %142
  %144 = zext i1 %143 to i32
  %145 = call i32 @BUG_ON(i32 %144)
  %146 = load %struct.wa_xfer*, %struct.wa_xfer** %4, align 8
  %147 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %146, i32 0, i32 5
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %173

150:                                              ; preds = %132
  %151 = load %struct.wa_xfer*, %struct.wa_xfer** %4, align 8
  %152 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %151, i32 0, i32 3
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* %8, align 8
  %157 = load %struct.wa_xfer*, %struct.wa_xfer** %4, align 8
  %158 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = mul i64 %156, %159
  %161 = add i64 %155, %160
  %162 = load %struct.wahc*, %struct.wahc** %3, align 8
  %163 = getelementptr inbounds %struct.wahc, %struct.wahc* %162, i32 0, i32 1
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 4
  store i64 %161, i64* %165, align 8
  %166 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %167 = load %struct.wahc*, %struct.wahc** %3, align 8
  %168 = getelementptr inbounds %struct.wahc, %struct.wahc* %167, i32 0, i32 1
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = or i32 %171, %166
  store i32 %172, i32* %170, align 8
  br label %197

173:                                              ; preds = %132
  %174 = load %struct.wa_xfer*, %struct.wa_xfer** %4, align 8
  %175 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %174, i32 0, i32 3
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* %8, align 8
  %180 = load %struct.wa_xfer*, %struct.wa_xfer** %4, align 8
  %181 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = mul i64 %179, %182
  %184 = add i64 %178, %183
  %185 = load %struct.wahc*, %struct.wahc** %3, align 8
  %186 = getelementptr inbounds %struct.wahc, %struct.wahc* %185, i32 0, i32 1
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 3
  store i64 %184, i64* %188, align 8
  %189 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %190 = xor i32 %189, -1
  %191 = load %struct.wahc*, %struct.wahc** %3, align 8
  %192 = getelementptr inbounds %struct.wahc, %struct.wahc* %191, i32 0, i32 1
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = and i32 %195, %190
  store i32 %196, i32* %194, align 8
  br label %197

197:                                              ; preds = %173, %150
  %198 = load %struct.wa_xfer_result*, %struct.wa_xfer_result** %11, align 8
  %199 = getelementptr inbounds %struct.wa_xfer_result, %struct.wa_xfer_result* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = call i8* @le32_to_cpu(i32 %200)
  %202 = load %struct.wahc*, %struct.wahc** %3, align 8
  %203 = getelementptr inbounds %struct.wahc, %struct.wahc* %202, i32 0, i32 1
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 1
  store i8* %201, i8** %205, align 8
  %206 = load %struct.wa_seg*, %struct.wa_seg** %9, align 8
  %207 = load %struct.wahc*, %struct.wahc** %3, align 8
  %208 = getelementptr inbounds %struct.wahc, %struct.wahc* %207, i32 0, i32 1
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  store %struct.wa_seg* %206, %struct.wa_seg** %210, align 8
  %211 = load %struct.wahc*, %struct.wahc** %3, align 8
  %212 = getelementptr inbounds %struct.wahc, %struct.wahc* %211, i32 0, i32 1
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %212, align 8
  %214 = load i32, i32* @GFP_ATOMIC, align 4
  %215 = call i32 @usb_submit_urb(%struct.TYPE_8__* %213, i32 %214)
  store i32 %215, i32* %5, align 4
  %216 = load i32, i32* %5, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %197
  br label %256

219:                                              ; preds = %197
  br label %239

220:                                              ; preds = %127
  %221 = load i64, i64* @WA_SEG_DONE, align 8
  %222 = load %struct.wa_seg*, %struct.wa_seg** %9, align 8
  %223 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %222, i32 0, i32 0
  store i64 %221, i64* %223, align 8
  %224 = load %struct.wa_xfer_result*, %struct.wa_xfer_result** %11, align 8
  %225 = getelementptr inbounds %struct.wa_xfer_result, %struct.wa_xfer_result* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = call i8* @le32_to_cpu(i32 %226)
  %228 = ptrtoint i8* %227 to i32
  %229 = load %struct.wa_seg*, %struct.wa_seg** %9, align 8
  %230 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %229, i32 0, i32 1
  store i32 %228, i32* %230, align 8
  %231 = load %struct.wa_xfer*, %struct.wa_xfer** %4, align 8
  %232 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 8
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %232, align 8
  %235 = load %struct.wa_rpipe*, %struct.wa_rpipe** %10, align 8
  %236 = call i32 @rpipe_avail_inc(%struct.wa_rpipe* %235)
  store i32 %236, i32* %14, align 4
  %237 = load %struct.wa_xfer*, %struct.wa_xfer** %4, align 8
  %238 = call i64 @__wa_xfer_is_done(%struct.wa_xfer* %237)
  store i64 %238, i64* %12, align 8
  br label %239

239:                                              ; preds = %220, %219
  %240 = load %struct.wa_xfer*, %struct.wa_xfer** %4, align 8
  %241 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %240, i32 0, i32 2
  %242 = load i64, i64* %7, align 8
  %243 = call i32 @spin_unlock_irqrestore(i32* %241, i64 %242)
  %244 = load i64, i64* %12, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %239
  %247 = load %struct.wa_xfer*, %struct.wa_xfer** %4, align 8
  %248 = call i32 @wa_xfer_completion(%struct.wa_xfer* %247)
  br label %249

249:                                              ; preds = %246, %239
  %250 = load i32, i32* %14, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %249
  %253 = load %struct.wa_rpipe*, %struct.wa_rpipe** %10, align 8
  %254 = call i32 @wa_xfer_delayed_run(%struct.wa_rpipe* %253)
  br label %255

255:                                              ; preds = %252, %249
  br label %346

256:                                              ; preds = %218
  %257 = load %struct.wahc*, %struct.wahc** %3, align 8
  %258 = getelementptr inbounds %struct.wahc, %struct.wahc* %257, i32 0, i32 0
  %259 = load i32, i32* @EDC_MAX_ERRORS, align 4
  %260 = load i32, i32* @EDC_ERROR_TIMEFRAME, align 4
  %261 = call i64 @edc_inc(i32* %258, i32 %259, i32 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %256
  %264 = load %struct.device*, %struct.device** %6, align 8
  %265 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %264, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  %266 = load %struct.wahc*, %struct.wahc** %3, align 8
  %267 = call i32 @wa_reset_all(%struct.wahc* %266)
  br label %268

268:                                              ; preds = %263, %256
  %269 = call i64 (...) @printk_ratelimit()
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %277

271:                                              ; preds = %268
  %272 = load %struct.device*, %struct.device** %6, align 8
  %273 = load %struct.wa_xfer*, %struct.wa_xfer** %4, align 8
  %274 = load i64, i64* %8, align 8
  %275 = load i32, i32* %5, align 4
  %276 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %272, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), %struct.wa_xfer* %273, i64 %274, i32 %275)
  br label %277

277:                                              ; preds = %271, %268
  %278 = load i32, i32* %5, align 4
  %279 = load %struct.wa_seg*, %struct.wa_seg** %9, align 8
  %280 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %279, i32 0, i32 1
  store i32 %278, i32* %280, align 8
  br label %281

281:                                              ; preds = %277, %110
  %282 = load i64, i64* @WA_SEG_ERROR, align 8
  %283 = load %struct.wa_seg*, %struct.wa_seg** %9, align 8
  %284 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %283, i32 0, i32 0
  store i64 %282, i64* %284, align 8
  %285 = load %struct.wa_xfer*, %struct.wa_xfer** %4, align 8
  %286 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %285, i32 0, i32 4
  %287 = load i32, i32* %286, align 8
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %286, align 8
  %289 = load %struct.wa_rpipe*, %struct.wa_rpipe** %10, align 8
  %290 = call i32 @rpipe_avail_inc(%struct.wa_rpipe* %289)
  store i32 %290, i32* %14, align 4
  %291 = load %struct.wa_xfer*, %struct.wa_xfer** %4, align 8
  %292 = call i32 @__wa_xfer_abort(%struct.wa_xfer* %291)
  %293 = load %struct.wa_xfer*, %struct.wa_xfer** %4, align 8
  %294 = call i64 @__wa_xfer_is_done(%struct.wa_xfer* %293)
  store i64 %294, i64* %12, align 8
  %295 = load %struct.wa_xfer*, %struct.wa_xfer** %4, align 8
  %296 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %295, i32 0, i32 2
  %297 = load i64, i64* %7, align 8
  %298 = call i32 @spin_unlock_irqrestore(i32* %296, i64 %297)
  %299 = load i64, i64* %12, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %281
  %302 = load %struct.wa_xfer*, %struct.wa_xfer** %4, align 8
  %303 = call i32 @wa_xfer_completion(%struct.wa_xfer* %302)
  br label %304

304:                                              ; preds = %301, %281
  %305 = load i32, i32* %14, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %310

307:                                              ; preds = %304
  %308 = load %struct.wa_rpipe*, %struct.wa_rpipe** %10, align 8
  %309 = call i32 @wa_xfer_delayed_run(%struct.wa_rpipe* %308)
  br label %310

310:                                              ; preds = %307, %304
  br label %346

311:                                              ; preds = %39
  %312 = load %struct.wa_xfer*, %struct.wa_xfer** %4, align 8
  %313 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %312, i32 0, i32 2
  %314 = load i64, i64* %7, align 8
  %315 = call i32 @spin_unlock_irqrestore(i32* %313, i64 %314)
  %316 = load %struct.wahc*, %struct.wahc** %3, align 8
  %317 = load %struct.wa_xfer*, %struct.wa_xfer** %4, align 8
  %318 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %317, i32 0, i32 3
  %319 = load %struct.TYPE_7__*, %struct.TYPE_7__** %318, align 8
  %320 = call i32 @wa_urb_dequeue(%struct.wahc* %316, %struct.TYPE_7__* %319)
  %321 = call i64 (...) @printk_ratelimit()
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %328

323:                                              ; preds = %311
  %324 = load %struct.device*, %struct.device** %6, align 8
  %325 = load %struct.wa_xfer*, %struct.wa_xfer** %4, align 8
  %326 = load i64, i64* %8, align 8
  %327 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %324, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), %struct.wa_xfer* %325, i64 %326)
  br label %328

328:                                              ; preds = %323, %311
  %329 = load %struct.wahc*, %struct.wahc** %3, align 8
  %330 = getelementptr inbounds %struct.wahc, %struct.wahc* %329, i32 0, i32 0
  %331 = load i32, i32* @EDC_MAX_ERRORS, align 4
  %332 = load i32, i32* @EDC_ERROR_TIMEFRAME, align 4
  %333 = call i64 @edc_inc(i32* %330, i32 %331, i32 %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %340

335:                                              ; preds = %328
  %336 = load %struct.device*, %struct.device** %6, align 8
  %337 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %336, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  %338 = load %struct.wahc*, %struct.wahc** %3, align 8
  %339 = call i32 @wa_reset_all(%struct.wahc* %338)
  br label %340

340:                                              ; preds = %335, %328
  br label %346

341:                                              ; preds = %74
  %342 = load %struct.wa_xfer*, %struct.wa_xfer** %4, align 8
  %343 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %342, i32 0, i32 2
  %344 = load i64, i64* %7, align 8
  %345 = call i32 @spin_unlock_irqrestore(i32* %343, i64 %344)
  br label %346

346:                                              ; preds = %341, %340, %310, %255
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.wa_xfer*, i64, i64, i64) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @wa_xfer_status_to_errno(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @rpipe_avail_inc(%struct.wa_rpipe*) #1

declare dso_local i64 @__wa_xfer_is_done(%struct.wa_xfer*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wa_xfer_completion(%struct.wa_xfer*) #1

declare dso_local i32 @wa_xfer_delayed_run(%struct.wa_rpipe*) #1

declare dso_local i64 @edc_inc(i32*, i32, i32) #1

declare dso_local i32 @wa_reset_all(%struct.wahc*) #1

declare dso_local i32 @__wa_xfer_abort(%struct.wa_xfer*) #1

declare dso_local i32 @wa_urb_dequeue(%struct.wahc*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
