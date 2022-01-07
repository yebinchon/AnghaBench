; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_tx.c_nic_send_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_tx.c_nic_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { i64, i32, %struct.TYPE_22__*, %struct.TYPE_19__, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i64, i32, i64, i32, %struct.TYPE_15__*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_15__*, i64, %struct.sk_buff* }
%struct.sk_buff = type { i32, i32, i64 }
%struct.TYPE_25__ = type { %struct.TYPE_18__, i8*, %struct.TYPE_24__, i64 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }
%struct.skb_frag_struct = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.skb_frag_struct* }

@EIO = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@TRUEPHY_SPEED_1000MBPS = common dso_local global i64 0, align 8
@PARM_TX_NUM_BUFS_DEF = common dso_local global i64 0, align 8
@NUM_DESC_PER_RING_TX = common dso_local global i32 0, align 4
@ET_DMA10_MASK = common dso_local global i32 0, align 4
@ET_DMA10_WRAP = common dso_local global i32 0, align 4
@PARM_TX_TIME_INT_DEF = common dso_local global i32 0, align 4
@NANO_IN_A_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.et131x_adapter*, %struct.TYPE_15__*)* @nic_send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nic_send_packet(%struct.et131x_adapter* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.et131x_adapter*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [24 x %struct.TYPE_25__], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.skb_frag_struct*, align 8
  %14 = alloca i64, align 8
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  store %struct.sk_buff* %17, %struct.sk_buff** %11, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %19 = call %struct.TYPE_16__* @skb_shinfo(%struct.sk_buff* %18)
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %12, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %24 = call %struct.TYPE_16__* @skb_shinfo(%struct.sk_buff* %23)
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 1
  %26 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %25, align 8
  %27 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %26, i64 0
  store %struct.skb_frag_struct* %27, %struct.skb_frag_struct** %13, align 8
  %28 = load i32, i32* %12, align 4
  %29 = icmp sgt i32 %28, 23
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %495

33:                                               ; preds = %2
  %34 = getelementptr inbounds [24 x %struct.TYPE_25__], [24 x %struct.TYPE_25__]* %7, i64 0, i64 0
  %35 = load i32, i32* %12, align 4
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = mul i64 32, %37
  %39 = trunc i64 %38 to i32
  %40 = call i32 @memset(%struct.TYPE_25__* %34, i32 0, i32 %39)
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %235, %33
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %238

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %185

48:                                               ; preds = %45
  %49 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %51, %54
  %56 = icmp sle i32 %55, 1514
  br i1 %56, label %57, label %95

57:                                               ; preds = %48
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [24 x %struct.TYPE_25__], [24 x %struct.TYPE_25__]* %7, i64 0, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 3
  store i64 0, i64* %61, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %64, %67
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [24 x %struct.TYPE_25__], [24 x %struct.TYPE_25__]* %7, i64 0, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 0
  store i32 %68, i32* %74, align 16
  %75 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %76 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %83, %86
  %88 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %89 = call i8* @pci_map_single(i32 %77, i64 %80, i32 %87, i32 %88)
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds [24 x %struct.TYPE_25__], [24 x %struct.TYPE_25__]* %7, i64 0, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 1
  store i8* %89, i8** %94, align 8
  br label %184

95:                                               ; preds = %48
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [24 x %struct.TYPE_25__], [24 x %struct.TYPE_25__]* %7, i64 0, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %98, i32 0, i32 3
  store i64 0, i64* %99, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %104 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %102, %105
  %107 = sdiv i32 %106, 2
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [24 x %struct.TYPE_25__], [24 x %struct.TYPE_25__]* %7, i64 0, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 0
  store i32 %107, i32* %113, align 16
  %114 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %115 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 %122, %125
  %127 = sdiv i32 %126, 2
  %128 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %129 = call i8* @pci_map_single(i32 %116, i64 %119, i32 %127, i32 %128)
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %8, align 4
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds [24 x %struct.TYPE_25__], [24 x %struct.TYPE_25__]* %7, i64 0, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 1
  store i8* %129, i8** %134, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [24 x %struct.TYPE_25__], [24 x %struct.TYPE_25__]* %7, i64 0, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 3
  store i64 0, i64* %138, align 8
  %139 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %140 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %143 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = sub nsw i32 %141, %144
  %146 = sdiv i32 %145, 2
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [24 x %struct.TYPE_25__], [24 x %struct.TYPE_25__]* %7, i64 0, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 0
  store i32 %146, i32* %152, align 16
  %153 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %154 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %157 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %160 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %163 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = sub nsw i32 %161, %164
  %166 = sdiv i32 %165, 2
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %158, %167
  %169 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %170 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %173 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = sub nsw i32 %171, %174
  %176 = sdiv i32 %175, 2
  %177 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %178 = call i8* @pci_map_single(i32 %155, i64 %168, i32 %176, i32 %177)
  %179 = load i32, i32* %8, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %8, align 4
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds [24 x %struct.TYPE_25__], [24 x %struct.TYPE_25__]* %7, i64 0, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %182, i32 0, i32 1
  store i8* %178, i8** %183, align 8
  br label %184

184:                                              ; preds = %95, %57
  br label %234

185:                                              ; preds = %45
  %186 = load i32, i32* %8, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [24 x %struct.TYPE_25__], [24 x %struct.TYPE_25__]* %7, i64 0, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %188, i32 0, i32 3
  store i64 0, i64* %189, align 8
  %190 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %13, align 8
  %191 = load i32, i32* %6, align 4
  %192 = sub nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %190, i64 %193
  %195 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %8, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [24 x %struct.TYPE_25__], [24 x %struct.TYPE_25__]* %7, i64 0, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 0
  store i32 %196, i32* %202, align 16
  %203 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %204 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %13, align 8
  %207 = load i32, i32* %6, align 4
  %208 = sub nsw i32 %207, 1
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %206, i64 %209
  %211 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %13, align 8
  %214 = load i32, i32* %6, align 4
  %215 = sub nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %213, i64 %216
  %218 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %13, align 8
  %221 = load i32, i32* %6, align 4
  %222 = sub nsw i32 %221, 1
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %220, i64 %223
  %225 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %228 = call i8* @pci_map_page(i32 %205, i32 %212, i32 %219, i32 %226, i32 %227)
  %229 = load i32, i32* %8, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %8, align 4
  %231 = sext i32 %229 to i64
  %232 = getelementptr inbounds [24 x %struct.TYPE_25__], [24 x %struct.TYPE_25__]* %7, i64 0, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %232, i32 0, i32 1
  store i8* %228, i8** %233, align 8
  br label %234

234:                                              ; preds = %185, %184
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %6, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %6, align 4
  br label %41

238:                                              ; preds = %41
  %239 = load i32, i32* %8, align 4
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %238
  %242 = load i32, i32* @EIO, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %3, align 4
  br label %495

244:                                              ; preds = %238
  %245 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %246 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @TRUEPHY_SPEED_1000MBPS, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %276

250:                                              ; preds = %244
  %251 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %252 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %251, i32 0, i32 3
  %253 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = add nsw i64 %254, 1
  store i64 %255, i64* %253, align 8
  %256 = load i64, i64* @PARM_TX_NUM_BUFS_DEF, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %268

258:                                              ; preds = %250
  %259 = load i32, i32* %8, align 4
  %260 = sub nsw i32 %259, 1
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [24 x %struct.TYPE_25__], [24 x %struct.TYPE_25__]* %7, i64 0, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %263, i32 0, i32 0
  store i32 5, i32* %264, align 16
  %265 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %266 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %265, i32 0, i32 3
  %267 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %266, i32 0, i32 0
  store i64 0, i64* %267, align 8
  br label %275

268:                                              ; preds = %250
  %269 = load i32, i32* %8, align 4
  %270 = sub nsw i32 %269, 1
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [24 x %struct.TYPE_25__], [24 x %struct.TYPE_25__]* %7, i64 0, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %273, i32 0, i32 0
  store i32 1, i32* %274, align 16
  br label %275

275:                                              ; preds = %268, %258
  br label %283

276:                                              ; preds = %244
  %277 = load i32, i32* %8, align 4
  %278 = sub nsw i32 %277, 1
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [24 x %struct.TYPE_25__], [24 x %struct.TYPE_25__]* %7, i64 0, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 0
  store i32 5, i32* %282, align 16
  br label %283

283:                                              ; preds = %276, %275
  %284 = getelementptr inbounds [24 x %struct.TYPE_25__], [24 x %struct.TYPE_25__]* %7, i64 0, i64 0
  %285 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %286, i32 0, i32 0
  store i32 1, i32* %287, align 4
  %288 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %289 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %288, i32 0, i32 3
  %290 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 8
  %292 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %292, i32 0, i32 0
  store i32 %291, i32* %293, align 8
  %294 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %294, i32 0, i32 3
  store i64 0, i64* %295, align 8
  %296 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %297 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %296, i32 0, i32 1
  %298 = load i64, i64* %14, align 8
  %299 = call i32 @spin_lock_irqsave(i32* %297, i64 %298)
  %300 = load i32, i32* @NUM_DESC_PER_RING_TX, align 4
  %301 = sext i32 %300 to i64
  %302 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %303 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %302, i32 0, i32 3
  %304 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 8
  %306 = call i64 @INDEX10(i32 %305)
  %307 = sub nsw i64 %301, %306
  %308 = trunc i64 %307 to i32
  store i32 %308, i32* %9, align 4
  %309 = load i32, i32* %9, align 4
  %310 = load i32, i32* %8, align 4
  %311 = icmp sge i32 %309, %310
  br i1 %311, label %312, label %314

312:                                              ; preds = %283
  store i32 0, i32* %10, align 4
  %313 = load i32, i32* %8, align 4
  store i32 %313, i32* %9, align 4
  br label %318

314:                                              ; preds = %283
  %315 = load i32, i32* %8, align 4
  %316 = load i32, i32* %9, align 4
  %317 = sub nsw i32 %315, %316
  store i32 %317, i32* %10, align 4
  br label %318

318:                                              ; preds = %314, %312
  %319 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %320 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %319, i32 0, i32 3
  %321 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %320, i32 0, i32 2
  %322 = load i64, i64* %321, align 8
  %323 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %324 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %323, i32 0, i32 3
  %325 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 8
  %327 = call i64 @INDEX10(i32 %326)
  %328 = add nsw i64 %322, %327
  %329 = getelementptr inbounds [24 x %struct.TYPE_25__], [24 x %struct.TYPE_25__]* %7, i64 0, i64 0
  %330 = load i32, i32* %9, align 4
  %331 = sext i32 %330 to i64
  %332 = mul i64 32, %331
  %333 = trunc i64 %332 to i32
  %334 = call i32 @memcpy(i64 %328, %struct.TYPE_25__* %329, i32 %333)
  %335 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %336 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %335, i32 0, i32 3
  %337 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %336, i32 0, i32 1
  %338 = load i32, i32* %9, align 4
  %339 = call i32 @add_10bit(i32* %337, i32 %338)
  %340 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %341 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %340, i32 0, i32 3
  %342 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 8
  %344 = call i64 @INDEX10(i32 %343)
  %345 = icmp eq i64 %344, 0
  br i1 %345, label %355, label %346

346:                                              ; preds = %318
  %347 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %348 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %347, i32 0, i32 3
  %349 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 8
  %351 = call i64 @INDEX10(i32 %350)
  %352 = load i32, i32* @NUM_DESC_PER_RING_TX, align 4
  %353 = sext i32 %352 to i64
  %354 = icmp eq i64 %351, %353
  br i1 %354, label %355, label %369

355:                                              ; preds = %346, %318
  %356 = load i32, i32* @ET_DMA10_MASK, align 4
  %357 = xor i32 %356, -1
  %358 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %359 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %358, i32 0, i32 3
  %360 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 8
  %362 = and i32 %361, %357
  store i32 %362, i32* %360, align 8
  %363 = load i32, i32* @ET_DMA10_WRAP, align 4
  %364 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %365 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %364, i32 0, i32 3
  %366 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 8
  %368 = xor i32 %367, %363
  store i32 %368, i32* %366, align 8
  br label %369

369:                                              ; preds = %355, %346
  %370 = load i32, i32* %10, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %391

372:                                              ; preds = %369
  %373 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %374 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %373, i32 0, i32 3
  %375 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %374, i32 0, i32 2
  %376 = load i64, i64* %375, align 8
  %377 = getelementptr inbounds [24 x %struct.TYPE_25__], [24 x %struct.TYPE_25__]* %7, i64 0, i64 0
  %378 = load i32, i32* %9, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %377, i64 %379
  %381 = load i32, i32* %10, align 4
  %382 = sext i32 %381 to i64
  %383 = mul i64 32, %382
  %384 = trunc i64 %383 to i32
  %385 = call i32 @memcpy(i64 %376, %struct.TYPE_25__* %380, i32 %384)
  %386 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %387 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %386, i32 0, i32 3
  %388 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %387, i32 0, i32 1
  %389 = load i32, i32* %10, align 4
  %390 = call i32 @add_10bit(i32* %388, i32 %389)
  br label %391

391:                                              ; preds = %372, %369
  %392 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %393 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %392, i32 0, i32 3
  %394 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 8
  %396 = call i64 @INDEX10(i32 %395)
  %397 = icmp eq i64 %396, 0
  br i1 %397, label %398, label %417

398:                                              ; preds = %391
  %399 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %400 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %399, i32 0, i32 3
  %401 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 8
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %409

404:                                              ; preds = %398
  %405 = load i32, i32* @NUM_DESC_PER_RING_TX, align 4
  %406 = sub nsw i32 %405, 1
  %407 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %408 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %407, i32 0, i32 1
  store i32 %406, i32* %408, align 4
  br label %416

409:                                              ; preds = %398
  %410 = load i32, i32* @ET_DMA10_WRAP, align 4
  %411 = load i32, i32* @NUM_DESC_PER_RING_TX, align 4
  %412 = sub nsw i32 %411, 1
  %413 = or i32 %410, %412
  %414 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %415 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %414, i32 0, i32 1
  store i32 %413, i32* %415, align 4
  br label %416

416:                                              ; preds = %409, %404
  br label %425

417:                                              ; preds = %391
  %418 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %419 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %418, i32 0, i32 3
  %420 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 8
  %422 = sub nsw i32 %421, 1
  %423 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %424 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %423, i32 0, i32 1
  store i32 %422, i32* %424, align 4
  br label %425

425:                                              ; preds = %417, %416
  %426 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %427 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %426, i32 0, i32 4
  %428 = call i32 @spin_lock(i32* %427)
  %429 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %430 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %429, i32 0, i32 3
  %431 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %430, i32 0, i32 4
  %432 = load %struct.TYPE_15__*, %struct.TYPE_15__** %431, align 8
  %433 = icmp ne %struct.TYPE_15__* %432, null
  br i1 %433, label %434, label %441

434:                                              ; preds = %425
  %435 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %436 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %437 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %436, i32 0, i32 3
  %438 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %437, i32 0, i32 4
  %439 = load %struct.TYPE_15__*, %struct.TYPE_15__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %439, i32 0, i32 2
  store %struct.TYPE_15__* %435, %struct.TYPE_15__** %440, align 8
  br label %446

441:                                              ; preds = %425
  %442 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %443 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %444 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %443, i32 0, i32 3
  %445 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %444, i32 0, i32 5
  store %struct.TYPE_15__* %442, %struct.TYPE_15__** %445, align 8
  br label %446

446:                                              ; preds = %441, %434
  %447 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %448 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %449 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %448, i32 0, i32 3
  %450 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %449, i32 0, i32 4
  store %struct.TYPE_15__* %447, %struct.TYPE_15__** %450, align 8
  %451 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %452 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %451, i32 0, i32 2
  %453 = load %struct.TYPE_15__*, %struct.TYPE_15__** %452, align 8
  %454 = icmp ne %struct.TYPE_15__* %453, null
  %455 = zext i1 %454 to i32
  %456 = call i32 @WARN_ON(i32 %455)
  %457 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %458 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %457, i32 0, i32 3
  %459 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %458, i32 0, i32 3
  %460 = load i32, i32* %459, align 8
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %459, align 8
  %462 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %463 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %462, i32 0, i32 4
  %464 = call i32 @spin_unlock(i32* %463)
  %465 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %466 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %465, i32 0, i32 3
  %467 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %466, i32 0, i32 1
  %468 = load i32, i32* %467, align 8
  %469 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %470 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %469, i32 0, i32 2
  %471 = load %struct.TYPE_22__*, %struct.TYPE_22__** %470, align 8
  %472 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %471, i32 0, i32 1
  %473 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %472, i32 0, i32 0
  %474 = call i32 @writel(i32 %468, i32* %473)
  %475 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %476 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %475, i32 0, i32 0
  %477 = load i64, i64* %476, align 8
  %478 = load i64, i64* @TRUEPHY_SPEED_1000MBPS, align 8
  %479 = icmp eq i64 %477, %478
  br i1 %479, label %480, label %490

480:                                              ; preds = %446
  %481 = load i32, i32* @PARM_TX_TIME_INT_DEF, align 4
  %482 = load i32, i32* @NANO_IN_A_MICRO, align 4
  %483 = mul nsw i32 %481, %482
  %484 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %485 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %484, i32 0, i32 2
  %486 = load %struct.TYPE_22__*, %struct.TYPE_22__** %485, align 8
  %487 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %486, i32 0, i32 0
  %488 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %487, i32 0, i32 0
  %489 = call i32 @writel(i32 %483, i32* %488)
  br label %490

490:                                              ; preds = %480, %446
  %491 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %492 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %491, i32 0, i32 1
  %493 = load i64, i64* %14, align 8
  %494 = call i32 @spin_unlock_irqrestore(i32* %492, i64 %493)
  store i32 0, i32* %3, align 4
  br label %495

495:                                              ; preds = %490, %241, %30
  %496 = load i32, i32* %3, align 4
  ret i32 %496
}

declare dso_local %struct.TYPE_16__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i8* @pci_map_single(i32, i64, i32, i32) #1

declare dso_local i8* @pci_map_page(i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @INDEX10(i32) #1

declare dso_local i32 @memcpy(i64, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @add_10bit(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
