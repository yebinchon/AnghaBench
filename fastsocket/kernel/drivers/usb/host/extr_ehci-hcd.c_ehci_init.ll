; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-hcd.c_ehci_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-hcd.c_ehci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.ehci_hcd = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, i32*, %struct.TYPE_6__*, i32, i32, %struct.TYPE_10__, %struct.TYPE_10__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32, i32, %struct.ehci_qh_hw*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.ehci_qh_hw = type { i32, i32, i8*, i8*, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32 }

@ehci_watchdog = common dso_local global i32 0, align 4
@ehci_iaa_watchdog = common dso_local global i32 0, align 4
@DEFAULT_I_TDPS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@QH_HEAD = common dso_local global i32 0, align 4
@QTD_STS_HALT = common dso_local global i32 0, align 4
@QH_STATE_LINKED = common dso_local global i32 0, align 4
@log2_irq_thresh = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"enable per-port change event\0A\00", align 1
@CMD_PPCEE = common dso_local global i32 0, align 4
@park = common dso_local global i32 0, align 4
@CMD_PARK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"park %d\0A\00", align 1
@EHCI_TUNE_FLS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"support lpm\0A\00", align 1
@hird = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"hird %d invalid, use default 0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @ehci_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehci_init(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.ehci_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ehci_qh_hw*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %10 = call %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd* %9)
  store %struct.ehci_hcd* %10, %struct.ehci_hcd** %4, align 8
  %11 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %12 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %11, i32 0, i32 15
  %13 = call i32 @spin_lock_init(i32* %12)
  %14 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %15 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %17 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %16, i32 0, i32 14
  %18 = call i32 @init_timer(%struct.TYPE_10__* %17)
  %19 = load i32, i32* @ehci_watchdog, align 4
  %20 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %21 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %20, i32 0, i32 14
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 8
  %23 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %24 = ptrtoint %struct.ehci_hcd* %23 to i64
  %25 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %26 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %25, i32 0, i32 14
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  store i64 %24, i64* %27, align 8
  %28 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %29 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %28, i32 0, i32 13
  %30 = call i32 @init_timer(%struct.TYPE_10__* %29)
  %31 = load i32, i32* @ehci_iaa_watchdog, align 4
  %32 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %33 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 8
  %35 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %36 = ptrtoint %struct.ehci_hcd* %35 to i64
  %37 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %38 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %37, i32 0, i32 13
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  store i64 %36, i64* %39, align 8
  %40 = load i32, i32* @DEFAULT_I_TDPS, align 4
  %41 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %42 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %44 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %43, i32 0, i32 12
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %47 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %46, i32 0, i32 11
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i32 @ehci_mem_init(%struct.ehci_hcd* %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %1
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %220

55:                                               ; preds = %1
  %56 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %57 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %58 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %57, i32 0, i32 10
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = call i32 @ehci_readl(%struct.ehci_hcd* %56, i32* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i64 @HCC_ISOC_CACHE(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %67 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %66, i32 0, i32 2
  store i32 8, i32* %67, align 8
  br label %74

68:                                               ; preds = %55
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @HCC_ISOC_THRES(i32 %69)
  %71 = add nsw i32 2, %70
  %72 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %73 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %68, %65
  %75 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %76 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %75, i32 0, i32 9
  store i32* null, i32** %76, align 8
  %77 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %78 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %77, i32 0, i32 3
  store i32 -1, i32* %78, align 4
  %79 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %80 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %79, i32 0, i32 4
  store i32 -1, i32* %80, align 8
  %81 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %82 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %81, i32 0, i32 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  store i32* null, i32** %85, align 8
  %86 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %87 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %86, i32 0, i32 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 3
  %90 = load %struct.ehci_qh_hw*, %struct.ehci_qh_hw** %89, align 8
  store %struct.ehci_qh_hw* %90, %struct.ehci_qh_hw** %8, align 8
  %91 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %92 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %93 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %92, i32 0, i32 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @QH_NEXT(%struct.ehci_hcd* %91, i32 %96)
  %98 = load %struct.ehci_qh_hw*, %struct.ehci_qh_hw** %8, align 8
  %99 = getelementptr inbounds %struct.ehci_qh_hw, %struct.ehci_qh_hw* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 8
  %100 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %101 = load i32, i32* @QH_HEAD, align 4
  %102 = call i8* @cpu_to_hc32(%struct.ehci_hcd* %100, i32 %101)
  %103 = load %struct.ehci_qh_hw*, %struct.ehci_qh_hw** %8, align 8
  %104 = getelementptr inbounds %struct.ehci_qh_hw, %struct.ehci_qh_hw* %103, i32 0, i32 3
  store i8* %102, i8** %104, align 8
  %105 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %106 = load i32, i32* @QTD_STS_HALT, align 4
  %107 = call i8* @cpu_to_hc32(%struct.ehci_hcd* %105, i32 %106)
  %108 = load %struct.ehci_qh_hw*, %struct.ehci_qh_hw** %8, align 8
  %109 = getelementptr inbounds %struct.ehci_qh_hw, %struct.ehci_qh_hw* %108, i32 0, i32 2
  store i8* %107, i8** %109, align 8
  %110 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %111 = call i32 @EHCI_LIST_END(%struct.ehci_hcd* %110)
  %112 = load %struct.ehci_qh_hw*, %struct.ehci_qh_hw** %8, align 8
  %113 = getelementptr inbounds %struct.ehci_qh_hw, %struct.ehci_qh_hw* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @QH_STATE_LINKED, align 4
  %115 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %116 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %115, i32 0, i32 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  store i32 %114, i32* %118, align 8
  %119 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %120 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %121 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %120, i32 0, i32 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @QTD_NEXT(%struct.ehci_hcd* %119, i32 %126)
  %128 = load %struct.ehci_qh_hw*, %struct.ehci_qh_hw** %8, align 8
  %129 = getelementptr inbounds %struct.ehci_qh_hw, %struct.ehci_qh_hw* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* @log2_irq_thresh, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %74
  %133 = load i32, i32* @log2_irq_thresh, align 4
  %134 = icmp sgt i32 %133, 6
  br i1 %134, label %135, label %136

135:                                              ; preds = %132, %74
  store i32 0, i32* @log2_irq_thresh, align 4
  br label %136

136:                                              ; preds = %135, %132
  %137 = load i32, i32* @log2_irq_thresh, align 4
  %138 = add nsw i32 16, %137
  %139 = shl i32 1, %138
  store i32 %139, i32* %5, align 4
  %140 = load i32, i32* %7, align 4
  %141 = call i64 @HCC_PER_PORT_CHANGE_EVENT(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %136
  %144 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %145 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %144, i32 0, i32 5
  store i32 1, i32* %145, align 4
  %146 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %147 = call i32 (%struct.ehci_hcd*, i8*, ...) @ehci_dbg(%struct.ehci_hcd* %146, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %148 = load i32, i32* @CMD_PPCEE, align 4
  %149 = load i32, i32* %5, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %143, %136
  %152 = load i32, i32* %7, align 4
  %153 = call i64 @HCC_CANPARK(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %172

155:                                              ; preds = %151
  %156 = load i32, i32* @park, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %155
  %159 = load i32, i32* @park, align 4
  %160 = call i32 @min(i32 %159, i32 3)
  store i32 %160, i32* @park, align 4
  %161 = load i32, i32* @CMD_PARK, align 4
  %162 = load i32, i32* %5, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %5, align 4
  %164 = load i32, i32* @park, align 4
  %165 = shl i32 %164, 8
  %166 = load i32, i32* %5, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %5, align 4
  br label %168

168:                                              ; preds = %158, %155
  %169 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %170 = load i32, i32* @park, align 4
  %171 = call i32 (%struct.ehci_hcd*, i8*, ...) @ehci_dbg(%struct.ehci_hcd* %169, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %170)
  br label %172

172:                                              ; preds = %168, %151
  %173 = load i32, i32* %7, align 4
  %174 = call i64 @HCC_PGM_FRAMELISTLEN(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %196

176:                                              ; preds = %172
  %177 = load i32, i32* %5, align 4
  %178 = and i32 %177, -13
  store i32 %178, i32* %5, align 4
  %179 = load i32, i32* @EHCI_TUNE_FLS, align 4
  %180 = shl i32 %179, 2
  %181 = load i32, i32* %5, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %5, align 4
  %183 = load i32, i32* @EHCI_TUNE_FLS, align 4
  switch i32 %183, label %193 [
    i32 0, label %184
    i32 1, label %187
    i32 2, label %190
  ]

184:                                              ; preds = %176
  %185 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %186 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %185, i32 0, i32 1
  store i32 1024, i32* %186, align 4
  br label %195

187:                                              ; preds = %176
  %188 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %189 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %188, i32 0, i32 1
  store i32 512, i32* %189, align 4
  br label %195

190:                                              ; preds = %176
  %191 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %192 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %191, i32 0, i32 1
  store i32 256, i32* %192, align 4
  br label %195

193:                                              ; preds = %176
  %194 = call i32 (...) @BUG()
  br label %195

195:                                              ; preds = %193, %190, %187, %184
  br label %196

196:                                              ; preds = %195, %172
  %197 = load i32, i32* %7, align 4
  %198 = call i64 @HCC_LPM(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %216

200:                                              ; preds = %196
  %201 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %202 = call i32 (%struct.ehci_hcd*, i8*, ...) @ehci_dbg(%struct.ehci_hcd* %201, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %203 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %204 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %203, i32 0, i32 6
  store i32 1, i32* %204, align 8
  %205 = load i32, i32* @hird, align 4
  %206 = icmp sgt i32 %205, 15
  br i1 %206, label %207, label %211

207:                                              ; preds = %200
  %208 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %209 = load i32, i32* @hird, align 4
  %210 = call i32 (%struct.ehci_hcd*, i8*, ...) @ehci_dbg(%struct.ehci_hcd* %208, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %209)
  store i32 0, i32* @hird, align 4
  br label %211

211:                                              ; preds = %207, %200
  %212 = load i32, i32* @hird, align 4
  %213 = shl i32 %212, 24
  %214 = load i32, i32* %5, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %5, align 4
  br label %216

216:                                              ; preds = %211, %196
  %217 = load i32, i32* %5, align 4
  %218 = load %struct.ehci_hcd*, %struct.ehci_hcd** %4, align 8
  %219 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %218, i32 0, i32 7
  store i32 %217, i32* %219, align 4
  store i32 0, i32* %2, align 4
  br label %220

220:                                              ; preds = %216, %53
  %221 = load i32, i32* %2, align 4
  ret i32 %221
}

declare dso_local %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_timer(%struct.TYPE_10__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ehci_mem_init(%struct.ehci_hcd*, i32) #1

declare dso_local i32 @ehci_readl(%struct.ehci_hcd*, i32*) #1

declare dso_local i64 @HCC_ISOC_CACHE(i32) #1

declare dso_local i32 @HCC_ISOC_THRES(i32) #1

declare dso_local i32 @QH_NEXT(%struct.ehci_hcd*, i32) #1

declare dso_local i8* @cpu_to_hc32(%struct.ehci_hcd*, i32) #1

declare dso_local i32 @EHCI_LIST_END(%struct.ehci_hcd*) #1

declare dso_local i32 @QTD_NEXT(%struct.ehci_hcd*, i32) #1

declare dso_local i64 @HCC_PER_PORT_CHANGE_EVENT(i32) #1

declare dso_local i32 @ehci_dbg(%struct.ehci_hcd*, i8*, ...) #1

declare dso_local i64 @HCC_CANPARK(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @HCC_PGM_FRAMELISTLEN(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @HCC_LPM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
