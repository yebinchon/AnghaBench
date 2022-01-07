; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_rx.c_et131x_rx_dma_memory_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_rx.c_et131x_rx_dma_memory_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_10__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, %struct.TYPE_6__**, i8**, i8**, i8*, i8* }
%struct.TYPE_6__ = type { i32*, i32*, i32**, i32**, i32** }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Cannot alloc memory for Free Buffer Ring 1\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@FBR_CHUNKS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Could not alloc memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Cannot alloc memory for Packet Status Ring\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Cannot alloc memory for Status Block\0A\00", align 1
@NIC_DEFAULT_NUM_RFD = common dso_local global i32 0, align 4
@SLAB_CACHE_DMA = common dso_local global i32 0, align 4
@SLAB_HWCACHE_ALIGN = common dso_local global i32 0, align 4
@fMP_ADAPTER_RECV_LOOKASIDE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @et131x_rx_dma_memory_alloc(%struct.et131x_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.et131x_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %3, align 8
  %14 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %14, i32 0, i32 4
  %16 = bitcast %struct.TYPE_7__* %15 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %9, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kmalloc(i32 4, i32 %17)
  %19 = bitcast i8* %18 to %struct.TYPE_6__*
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 24
  %22 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %22, i64 1
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %23, align 8
  %24 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %26, 2048
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  store i32 2048, i32* %30, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 3
  store i32 512, i32* %32, align 4
  br label %49

33:                                               ; preds = %1
  %34 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %36, 4096
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 2
  store i32 4096, i32* %40, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 3
  store i32 512, i32* %42, align 4
  br label %48

43:                                               ; preds = %33
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  store i32 16384, i32* %45, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 3
  store i32 128, i32* %47, align 4
  br label %48

48:                                               ; preds = %43, %38
  br label %49

49:                                               ; preds = %48, %28
  %50 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %51 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %55 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 4, %60
  %62 = add i64 %61, 4095
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %6, align 4
  %64 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %65 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %64, i32 0, i32 3
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 4
  %70 = call i8* @pci_alloc_consistent(%struct.TYPE_10__* %66, i32 %67, i32* %69)
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 28
  store i8* %70, i8** %72, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 28
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %85, label %77

77:                                               ; preds = %49
  %78 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %79 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %78, i32 0, i32 3
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = call i32 @dev_err(i32* %81, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %420

85:                                               ; preds = %49
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 5
  store i32 %88, i32* %90, align 4
  %91 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 5
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 6
  %96 = call i32 @et131x_align_allocated_memory(%struct.et131x_adapter* %91, i32* %93, i32* %95, i32 4095)
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 28
  %99 = load i8*, i8** %98, align 8
  %100 = bitcast i8* %99 to i32*
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %100, i64 %104
  %106 = bitcast i32* %105 to i8*
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 28
  store i8* %106, i8** %108, align 8
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %294, %85
  %110 = load i32, i32* %4, align 4
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @FBR_CHUNKS, align 4
  %115 = sdiv i32 %113, %114
  %116 = icmp slt i32 %110, %115
  br i1 %116, label %117, label %297

117:                                              ; preds = %109
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = icmp sgt i32 %120, 4096
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  store i32 4096, i32* %12, align 4
  br label %127

123:                                              ; preds = %117
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  store i32 %126, i32* %12, align 4
  br label %127

127:                                              ; preds = %123, %122
  %128 = load i32, i32* @FBR_CHUNKS, align 4
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = mul nsw i32 %128, %131
  %133 = load i32, i32* %12, align 4
  %134 = add nsw i32 %132, %133
  %135 = sub nsw i32 %134, 1
  store i32 %135, i32* %8, align 4
  %136 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %137 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %136, i32 0, i32 3
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 10
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %4, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = call i8* @pci_alloc_consistent(%struct.TYPE_10__* %138, i32 %139, i32* %145)
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 26
  %149 = load i8**, i8*** %148, align 8
  %150 = load i32, i32* %4, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8*, i8** %149, i64 %151
  store i8* %146, i8** %152, align 8
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 26
  %155 = load i8**, i8*** %154, align 8
  %156 = load i32, i32* %4, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8*, i8** %155, i64 %157
  %159 = load i8*, i8** %158, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %169, label %161

161:                                              ; preds = %127
  %162 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %163 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %162, i32 0, i32 3
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = call i32 @dev_err(i32* %165, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %167 = load i32, i32* @ENOMEM, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %2, align 4
  br label %420

169:                                              ; preds = %127
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 10
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %4, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %11, align 4
  %177 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %178 = load i32, i32* %12, align 4
  %179 = sub nsw i32 %178, 1
  %180 = call i32 @et131x_align_allocated_memory(%struct.et131x_adapter* %177, i32* %11, i32* %10, i32 %179)
  store i32 0, i32* %5, align 4
  br label %181

181:                                              ; preds = %290, %169
  %182 = load i32, i32* %5, align 4
  %183 = load i32, i32* @FBR_CHUNKS, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %293

185:                                              ; preds = %181
  %186 = load i32, i32* %4, align 4
  %187 = load i32, i32* @FBR_CHUNKS, align 4
  %188 = mul nsw i32 %186, %187
  %189 = load i32, i32* %5, align 4
  %190 = add nsw i32 %188, %189
  store i32 %190, i32* %13, align 4
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 26
  %193 = load i8**, i8*** %192, align 8
  %194 = load i32, i32* %4, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8*, i8** %193, i64 %195
  %197 = load i8*, i8** %196, align 8
  %198 = bitcast i8* %197 to i32*
  %199 = load i32, i32* %5, align 4
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = mul nsw i32 %199, %202
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %198, i64 %204
  %206 = load i32, i32* %10, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 24
  %211 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %211, i64 1
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 2
  %215 = load i32**, i32*** %214, align 8
  %216 = load i32, i32* %13, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32*, i32** %215, i64 %217
  store i32* %208, i32** %218, align 8
  %219 = load i32, i32* %11, align 4
  %220 = ashr i32 %219, 32
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 24
  %223 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %223, i64 1
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 0
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %13, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  store i32 %220, i32* %230, align 4
  %231 = load i32, i32* %11, align 4
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 24
  %234 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %234, i64 1
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %13, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  store i32 %231, i32* %241, align 4
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* %11, align 4
  %246 = add nsw i32 %245, %244
  store i32 %246, i32* %11, align 4
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 24
  %249 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %249, i64 1
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 2
  %253 = load i32**, i32*** %252, align 8
  %254 = load i32, i32* %13, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32*, i32** %253, i64 %255
  %257 = load i32*, i32** %256, align 8
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 24
  %260 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %260, i64 1
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 4
  %264 = load i32**, i32*** %263, align 8
  %265 = load i32, i32* %13, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32*, i32** %264, i64 %266
  store i32* %257, i32** %267, align 8
  %268 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 24
  %270 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %270, i64 1
  %272 = load %struct.TYPE_6__*, %struct.TYPE_6__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 2
  %274 = load i32**, i32*** %273, align 8
  %275 = load i32, i32* %13, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32*, i32** %274, i64 %276
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 -4
  %280 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 24
  %282 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %282, i64 1
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 3
  %286 = load i32**, i32*** %285, align 8
  %287 = load i32, i32* %13, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32*, i32** %286, i64 %288
  store i32* %279, i32** %289, align 8
  br label %290

290:                                              ; preds = %185
  %291 = load i32, i32* %5, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %5, align 4
  br label %181

293:                                              ; preds = %181
  br label %294

294:                                              ; preds = %293
  %295 = load i32, i32* %4, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %4, align 4
  br label %109

297:                                              ; preds = %109
  %298 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %299 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %298, i32 0, i32 4
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = sext i32 %301 to i64
  %303 = mul i64 4, %302
  %304 = trunc i64 %303 to i32
  store i32 %304, i32* %7, align 4
  %305 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %306 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %305, i32 0, i32 3
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** %306, align 8
  %308 = load i32, i32* %7, align 4
  %309 = add nsw i32 %308, 4095
  %310 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i32 0, i32 12
  %312 = call i8* @pci_alloc_consistent(%struct.TYPE_10__* %307, i32 %309, i32* %311)
  %313 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 23
  store i8* %312, i8** %314, align 8
  %315 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %316 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %315, i32 0, i32 23
  %317 = load i8*, i8** %316, align 8
  %318 = icmp ne i8* %317, null
  br i1 %318, label %327, label %319

319:                                              ; preds = %297
  %320 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %321 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %320, i32 0, i32 3
  %322 = load %struct.TYPE_10__*, %struct.TYPE_10__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i32 0, i32 0
  %324 = call i32 @dev_err(i32* %323, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %325 = load i32, i32* @ENOMEM, align 4
  %326 = sub nsw i32 0, %325
  store i32 %326, i32* %2, align 4
  br label %420

327:                                              ; preds = %297
  %328 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %329 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %328, i32 0, i32 12
  %330 = load i32, i32* %329, align 8
  %331 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %332 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %331, i32 0, i32 13
  store i32 %330, i32* %332, align 4
  %333 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %334 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %335 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %334, i32 0, i32 13
  %336 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %337 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %336, i32 0, i32 14
  %338 = call i32 @et131x_align_allocated_memory(%struct.et131x_adapter* %333, i32* %335, i32* %337, i32 4095)
  %339 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %340 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %339, i32 0, i32 23
  %341 = load i8*, i8** %340, align 8
  %342 = bitcast i8* %341 to i32*
  %343 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %344 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %343, i32 0, i32 14
  %345 = load i32, i32* %344, align 8
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %342, i64 %346
  %348 = bitcast i32* %347 to i8*
  %349 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %350 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %349, i32 0, i32 23
  store i8* %348, i8** %350, align 8
  %351 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %352 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %351, i32 0, i32 3
  %353 = load %struct.TYPE_10__*, %struct.TYPE_10__** %352, align 8
  %354 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %355 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %354, i32 0, i32 15
  %356 = call i8* @pci_alloc_consistent(%struct.TYPE_10__* %353, i32 11, i32* %355)
  %357 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %358 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %357, i32 0, i32 22
  store i8* %356, i8** %358, align 8
  %359 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %360 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %359, i32 0, i32 22
  %361 = load i8*, i8** %360, align 8
  %362 = icmp ne i8* %361, null
  br i1 %362, label %371, label %363

363:                                              ; preds = %327
  %364 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %365 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %364, i32 0, i32 3
  %366 = load %struct.TYPE_10__*, %struct.TYPE_10__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %366, i32 0, i32 0
  %368 = call i32 @dev_err(i32* %367, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %369 = load i32, i32* @ENOMEM, align 4
  %370 = sub nsw i32 0, %369
  store i32 %370, i32* %2, align 4
  br label %420

371:                                              ; preds = %327
  %372 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %373 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %372, i32 0, i32 15
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %376 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %375, i32 0, i32 16
  store i32 %374, i32* %376, align 8
  %377 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %378 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %379 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %378, i32 0, i32 16
  %380 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %381 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %380, i32 0, i32 17
  %382 = call i32 @et131x_align_allocated_memory(%struct.et131x_adapter* %377, i32* %379, i32* %381, i32 7)
  %383 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %384 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %383, i32 0, i32 22
  %385 = load i8*, i8** %384, align 8
  %386 = bitcast i8* %385 to i32*
  %387 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %388 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %387, i32 0, i32 17
  %389 = load i32, i32* %388, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i32, i32* %386, i64 %390
  %392 = bitcast i32* %391 to i8*
  %393 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %394 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %393, i32 0, i32 22
  store i8* %392, i8** %394, align 8
  %395 = load i32, i32* @NIC_DEFAULT_NUM_RFD, align 4
  %396 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %397 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %396, i32 0, i32 21
  store i32 %395, i32* %397, align 4
  %398 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %399 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %398, i32 0, i32 2
  %400 = load %struct.TYPE_8__*, %struct.TYPE_8__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 4
  %403 = load i32, i32* @SLAB_CACHE_DMA, align 4
  %404 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %405 = or i32 %403, %404
  %406 = call i32 @kmem_cache_create(i32 %402, i32 4, i32 0, i32 %405, i32* null)
  %407 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %408 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %407, i32 0, i32 20
  store i32 %406, i32* %408, align 8
  %409 = load i32, i32* @fMP_ADAPTER_RECV_LOOKASIDE, align 4
  %410 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %411 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %410, i32 0, i32 1
  %412 = load i32, i32* %411, align 4
  %413 = or i32 %412, %409
  store i32 %413, i32* %411, align 4
  %414 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %415 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %414, i32 0, i32 19
  %416 = call i32 @INIT_LIST_HEAD(i32* %415)
  %417 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %418 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %417, i32 0, i32 18
  %419 = call i32 @INIT_LIST_HEAD(i32* %418)
  store i32 0, i32* %2, align 4
  br label %420

420:                                              ; preds = %371, %363, %319, %161, %77
  %421 = load i32, i32* %2, align 4
  ret i32 %421
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i8* @pci_alloc_consistent(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @et131x_align_allocated_memory(%struct.et131x_adapter*, i32*, i32*, i32) #1

declare dso_local i32 @kmem_cache_create(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
