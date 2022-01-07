; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_alloc_virt_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_alloc_virt_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { %struct.TYPE_7__*, %struct.xhci_virt_device** }
%struct.TYPE_7__ = type { i32* }
%struct.xhci_virt_device = type { %struct.TYPE_6__*, %struct.usb_device*, i32, i32, i64, i8*, %struct.TYPE_8__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.usb_device = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Bad Slot ID %d\0A\00", align 1
@XHCI_CTX_TYPE_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Slot %d output ctx = 0x%llx (dma)\0A\00", align 1
@XHCI_CTX_TYPE_INPUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Slot %d input ctx = 0x%llx (dma)\0A\00", align 1
@TYPE_CTRL = common dso_local global i32 0, align 4
@XHCI_MAX_RINGS_CACHED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Set slot id %d dcbaa entry %p to 0x%llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xhci_alloc_virt_device(%struct.xhci_hcd* %0, i32 %1, %struct.usb_device* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xhci_hcd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xhci_virt_device*, align 8
  %11 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.usb_device* %2, %struct.usb_device** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %4
  %15 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %16 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %15, i32 0, i32 1
  %17 = load %struct.xhci_virt_device**, %struct.xhci_virt_device*** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.xhci_virt_device*, %struct.xhci_virt_device** %17, i64 %19
  %21 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %20, align 8
  %22 = icmp ne %struct.xhci_virt_device* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %14, %4
  %24 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @xhci_warn(%struct.xhci_hcd* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 0, i32* %5, align 4
  br label %211

27:                                               ; preds = %14
  %28 = load i32, i32* %9, align 4
  %29 = call i8* @kzalloc(i32 56, i32 %28)
  %30 = bitcast i8* %29 to %struct.xhci_virt_device*
  %31 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %32 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %31, i32 0, i32 1
  %33 = load %struct.xhci_virt_device**, %struct.xhci_virt_device*** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.xhci_virt_device*, %struct.xhci_virt_device** %33, i64 %35
  store %struct.xhci_virt_device* %30, %struct.xhci_virt_device** %36, align 8
  %37 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %38 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %37, i32 0, i32 1
  %39 = load %struct.xhci_virt_device**, %struct.xhci_virt_device*** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.xhci_virt_device*, %struct.xhci_virt_device** %39, i64 %41
  %43 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %42, align 8
  %44 = icmp ne %struct.xhci_virt_device* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %211

46:                                               ; preds = %27
  %47 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %48 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %47, i32 0, i32 1
  %49 = load %struct.xhci_virt_device**, %struct.xhci_virt_device*** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.xhci_virt_device*, %struct.xhci_virt_device** %49, i64 %51
  %53 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %52, align 8
  store %struct.xhci_virt_device* %53, %struct.xhci_virt_device** %10, align 8
  %54 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %55 = load i32, i32* @XHCI_CTX_TYPE_DEVICE, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i8* @xhci_alloc_container_ctx(%struct.xhci_hcd* %54, i32 %55, i32 %56)
  %58 = bitcast i8* %57 to %struct.TYPE_6__*
  %59 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %10, align 8
  %60 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %59, i32 0, i32 0
  store %struct.TYPE_6__* %58, %struct.TYPE_6__** %60, align 8
  %61 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %10, align 8
  %62 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = icmp ne %struct.TYPE_6__* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %46
  br label %207

66:                                               ; preds = %46
  %67 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %10, align 8
  %70 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 (%struct.xhci_hcd*, i8*, i32, i64, ...) @xhci_dbg(%struct.xhci_hcd* %67, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %68, i64 %73)
  %75 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %76 = load i32, i32* @XHCI_CTX_TYPE_INPUT, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i8* @xhci_alloc_container_ctx(%struct.xhci_hcd* %75, i32 %76, i32 %77)
  %79 = bitcast i8* %78 to %struct.TYPE_5__*
  %80 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %10, align 8
  %81 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %80, i32 0, i32 7
  store %struct.TYPE_5__* %79, %struct.TYPE_5__** %81, align 8
  %82 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %10, align 8
  %83 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %82, i32 0, i32 7
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = icmp ne %struct.TYPE_5__* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %66
  br label %207

87:                                               ; preds = %66
  %88 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %10, align 8
  %91 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %90, i32 0, i32 7
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 (%struct.xhci_hcd*, i8*, i32, i64, ...) @xhci_dbg(%struct.xhci_hcd* %88, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %89, i64 %94)
  store i32 0, i32* %11, align 4
  br label %96

96:                                               ; preds = %124, %87
  %97 = load i32, i32* %11, align 4
  %98 = icmp slt i32 %97, 31
  br i1 %98, label %99, label %127

99:                                               ; preds = %96
  %100 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %101 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %10, align 8
  %102 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %101, i32 0, i32 6
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i64 %105
  %107 = call i32 @xhci_init_endpoint_timer(%struct.xhci_hcd* %100, %struct.TYPE_8__* %106)
  %108 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %10, align 8
  %109 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %108, i32 0, i32 6
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 2
  %115 = call i32 @INIT_LIST_HEAD(i32* %114)
  %116 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %10, align 8
  %117 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %116, i32 0, i32 6
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = call i32 @INIT_LIST_HEAD(i32* %122)
  br label %124

124:                                              ; preds = %99
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %11, align 4
  br label %96

127:                                              ; preds = %96
  %128 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %129 = load i32, i32* @TYPE_CTRL, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @xhci_ring_alloc(%struct.xhci_hcd* %128, i32 2, i32 1, i32 %129, i32 %130)
  %132 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %10, align 8
  %133 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %132, i32 0, i32 6
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i64 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  store i32 %131, i32* %136, align 4
  %137 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %10, align 8
  %138 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %137, i32 0, i32 6
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i64 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %127
  br label %207

145:                                              ; preds = %127
  %146 = load i32, i32* @XHCI_MAX_RINGS_CACHED, align 4
  %147 = sext i32 %146 to i64
  %148 = mul i64 8, %147
  %149 = trunc i64 %148 to i32
  %150 = load i32, i32* %9, align 4
  %151 = call i8* @kzalloc(i32 %149, i32 %150)
  %152 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %10, align 8
  %153 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %152, i32 0, i32 5
  store i8* %151, i8** %153, align 8
  %154 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %10, align 8
  %155 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %154, i32 0, i32 5
  %156 = load i8*, i8** %155, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %159, label %158

158:                                              ; preds = %145
  br label %207

159:                                              ; preds = %145
  %160 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %10, align 8
  %161 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %160, i32 0, i32 4
  store i64 0, i64* %161, align 8
  %162 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %10, align 8
  %163 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %162, i32 0, i32 3
  %164 = call i32 @init_completion(i32* %163)
  %165 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %10, align 8
  %166 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %165, i32 0, i32 2
  %167 = call i32 @INIT_LIST_HEAD(i32* %166)
  %168 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %169 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %10, align 8
  %170 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %169, i32 0, i32 1
  store %struct.usb_device* %168, %struct.usb_device** %170, align 8
  %171 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %10, align 8
  %172 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %171, i32 0, i32 0
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @cpu_to_le64(i64 %175)
  %177 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %178 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %177, i32 0, i32 0
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %7, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  store i32 %176, i32* %184, align 4
  %185 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %186 = load i32, i32* %7, align 4
  %187 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %188 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %187, i32 0, i32 0
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %7, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = ptrtoint i32* %194 to i64
  %196 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %197 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %196, i32 0, i32 0
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %7, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @le64_to_cpu(i32 %204)
  %206 = call i32 (%struct.xhci_hcd*, i8*, i32, i64, ...) @xhci_dbg(%struct.xhci_hcd* %185, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %186, i64 %195, i32 %205)
  store i32 1, i32* %5, align 4
  br label %211

207:                                              ; preds = %158, %144, %86, %65
  %208 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %209 = load i32, i32* %7, align 4
  %210 = call i32 @xhci_free_virt_device(%struct.xhci_hcd* %208, i32 %209)
  store i32 0, i32* %5, align 4
  br label %211

211:                                              ; preds = %207, %159, %45, %23
  %212 = load i32, i32* %5, align 4
  ret i32 %212
}

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i8* @xhci_alloc_container_ctx(%struct.xhci_hcd*, i32, i32) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, i32, i64, ...) #1

declare dso_local i32 @xhci_init_endpoint_timer(%struct.xhci_hcd*, %struct.TYPE_8__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @xhci_ring_alloc(%struct.xhci_hcd*, i32, i32, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @xhci_free_virt_device(%struct.xhci_hcd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
