; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_gen_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_gen_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, i32, i64 }
%struct.TYPE_6__ = type { i32, %struct.device*, %struct.TYPE_4__*, i32 }
%struct.device = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.device.0 = type opaque
%struct.xhci_hcd = type opaque
%struct.xhci_hcd.1 = type { i32, i32, i32, i32, %struct.TYPE_5__*, i32, %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.usb_hcd* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HCD_USB2 = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Enabling 64-bit DMA addresses.\0A\00", align 1
@RTSOFF_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Resetting HCD\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Reset complete\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Calling HCD init\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Called HCD init\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xhci_gen_setup(%struct.usb_hcd* %0, i32 (%struct.device.0*, %struct.xhci_hcd*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca i32 (%struct.device.0*, %struct.xhci_hcd*)*, align 8
  %6 = alloca %struct.xhci_hcd.1*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %4, align 8
  store i32 (%struct.device.0*, %struct.xhci_hcd*)* %1, i32 (%struct.device.0*, %struct.xhci_hcd*)** %5, align 8
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %11 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %7, align 8
  %14 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %15 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 3
  store i32 -1, i32* %16, align 8
  %17 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %18 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %21 = call i64 @usb_hcd_is_primary_hcd(%struct.usb_hcd* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %2
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.xhci_hcd.1* @kzalloc(i32 56, i32 %24)
  store %struct.xhci_hcd.1* %25, %struct.xhci_hcd.1** %6, align 8
  %26 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %27 = icmp ne %struct.xhci_hcd.1* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %225

31:                                               ; preds = %23
  %32 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %33 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %34 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.xhci_hcd.1**
  store %struct.xhci_hcd.1* %32, %struct.xhci_hcd.1** %36, align 8
  %37 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %38 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %39 = getelementptr inbounds %struct.xhci_hcd.1, %struct.xhci_hcd.1* %38, i32 0, i32 8
  store %struct.usb_hcd* %37, %struct.usb_hcd** %39, align 8
  %40 = load i32, i32* @HCD_USB2, align 4
  %41 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %42 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @USB_SPEED_HIGH, align 4
  %44 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %45 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 %43, i32* %48, align 4
  %49 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %50 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  br label %80

51:                                               ; preds = %2
  %52 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %53 = call %struct.xhci_hcd.1* @hcd_to_xhci(%struct.usb_hcd* %52)
  store %struct.xhci_hcd.1* %53, %struct.xhci_hcd.1** %6, align 8
  %54 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %55 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %56 = getelementptr inbounds %struct.xhci_hcd.1, %struct.xhci_hcd.1* %55, i32 0, i32 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = call i32 @xhci_readl(%struct.xhci_hcd.1* %54, i32* %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i64 @HCC_64BIT_ADDR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %51
  %64 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %65 = call i32 @xhci_dbg(%struct.xhci_hcd.1* %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %66 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %67 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load %struct.device*, %struct.device** %68, align 8
  %70 = call i32 @DMA_BIT_MASK(i32 64)
  %71 = call i32 @dma_set_mask(%struct.device* %69, i32 %70)
  br label %79

72:                                               ; preds = %51
  %73 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %74 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load %struct.device*, %struct.device** %75, align 8
  %77 = call i32 @DMA_BIT_MASK(i32 32)
  %78 = call i32 @dma_set_mask(%struct.device* %76, i32 %77)
  br label %79

79:                                               ; preds = %72, %63
  store i32 0, i32* %3, align 4
  br label %225

80:                                               ; preds = %31
  %81 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %82 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %81, i32 0, i32 2
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %85 = getelementptr inbounds %struct.xhci_hcd.1, %struct.xhci_hcd.1* %84, i32 0, i32 4
  store %struct.TYPE_5__* %83, %struct.TYPE_5__** %85, align 8
  %86 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %87 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %86, i32 0, i32 2
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %90 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %91 = getelementptr inbounds %struct.xhci_hcd.1, %struct.xhci_hcd.1* %90, i32 0, i32 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = call i32 @xhci_readl(%struct.xhci_hcd.1* %89, i32* %93)
  %95 = call i32 @HC_LENGTH(i32 %94)
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %96
  %98 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %99 = getelementptr inbounds %struct.xhci_hcd.1, %struct.xhci_hcd.1* %98, i32 0, i32 7
  store %struct.TYPE_5__* %97, %struct.TYPE_5__** %99, align 8
  %100 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %101 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %100, i32 0, i32 2
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %104 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %105 = getelementptr inbounds %struct.xhci_hcd.1, %struct.xhci_hcd.1* %104, i32 0, i32 4
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 5
  %108 = call i32 @xhci_readl(%struct.xhci_hcd.1* %103, i32* %107)
  %109 = load i32, i32* @RTSOFF_MASK, align 4
  %110 = and i32 %108, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %111
  %113 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %114 = getelementptr inbounds %struct.xhci_hcd.1, %struct.xhci_hcd.1* %113, i32 0, i32 6
  store %struct.TYPE_5__* %112, %struct.TYPE_5__** %114, align 8
  %115 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %116 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %117 = getelementptr inbounds %struct.xhci_hcd.1, %struct.xhci_hcd.1* %116, i32 0, i32 4
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 4
  %120 = call i32 @xhci_readl(%struct.xhci_hcd.1* %115, i32* %119)
  %121 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %122 = getelementptr inbounds %struct.xhci_hcd.1, %struct.xhci_hcd.1* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %124 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %125 = getelementptr inbounds %struct.xhci_hcd.1, %struct.xhci_hcd.1* %124, i32 0, i32 4
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 3
  %128 = call i32 @xhci_readl(%struct.xhci_hcd.1* %123, i32* %127)
  %129 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %130 = getelementptr inbounds %struct.xhci_hcd.1, %struct.xhci_hcd.1* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %132 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %133 = getelementptr inbounds %struct.xhci_hcd.1, %struct.xhci_hcd.1* %132, i32 0, i32 4
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 2
  %136 = call i32 @xhci_readl(%struct.xhci_hcd.1* %131, i32* %135)
  %137 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %138 = getelementptr inbounds %struct.xhci_hcd.1, %struct.xhci_hcd.1* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  %139 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %140 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %141 = getelementptr inbounds %struct.xhci_hcd.1, %struct.xhci_hcd.1* %140, i32 0, i32 4
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  %144 = call i32 @xhci_readl(%struct.xhci_hcd.1* %139, i32* %143)
  %145 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %146 = getelementptr inbounds %struct.xhci_hcd.1, %struct.xhci_hcd.1* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 4
  %147 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %148 = getelementptr inbounds %struct.xhci_hcd.1, %struct.xhci_hcd.1* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @HC_VERSION(i32 %149)
  %151 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %152 = getelementptr inbounds %struct.xhci_hcd.1, %struct.xhci_hcd.1* %151, i32 0, i32 5
  store i32 %150, i32* %152, align 8
  %153 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %154 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %155 = getelementptr inbounds %struct.xhci_hcd.1, %struct.xhci_hcd.1* %154, i32 0, i32 4
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = call i32 @xhci_readl(%struct.xhci_hcd.1* %153, i32* %157)
  %159 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %160 = getelementptr inbounds %struct.xhci_hcd.1, %struct.xhci_hcd.1* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 4
  %161 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %162 = call i32 @xhci_print_registers(%struct.xhci_hcd.1* %161)
  %163 = load i32 (%struct.device.0*, %struct.xhci_hcd*)*, i32 (%struct.device.0*, %struct.xhci_hcd*)** %5, align 8
  %164 = load %struct.device*, %struct.device** %7, align 8
  %165 = bitcast %struct.device* %164 to %struct.device.0*
  %166 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %167 = bitcast %struct.xhci_hcd.1* %166 to %struct.xhci_hcd*
  %168 = call i32 %163(%struct.device.0* %165, %struct.xhci_hcd* %167)
  %169 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %170 = call i32 @xhci_halt(%struct.xhci_hcd.1* %169)
  store i32 %170, i32* %8, align 4
  %171 = load i32, i32* %8, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %80
  br label %221

174:                                              ; preds = %80
  %175 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %176 = call i32 @xhci_dbg(%struct.xhci_hcd.1* %175, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %177 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %178 = call i32 @xhci_reset(%struct.xhci_hcd.1* %177)
  store i32 %178, i32* %8, align 4
  %179 = load i32, i32* %8, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %174
  br label %221

182:                                              ; preds = %174
  %183 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %184 = call i32 @xhci_dbg(%struct.xhci_hcd.1* %183, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %185 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %186 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %187 = getelementptr inbounds %struct.xhci_hcd.1, %struct.xhci_hcd.1* %186, i32 0, i32 4
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  %190 = call i32 @xhci_readl(%struct.xhci_hcd.1* %185, i32* %189)
  store i32 %190, i32* %9, align 4
  %191 = load i32, i32* %9, align 4
  %192 = call i64 @HCC_64BIT_ADDR(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %203

194:                                              ; preds = %182
  %195 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %196 = call i32 @xhci_dbg(%struct.xhci_hcd.1* %195, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %197 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %198 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 1
  %200 = load %struct.device*, %struct.device** %199, align 8
  %201 = call i32 @DMA_BIT_MASK(i32 64)
  %202 = call i32 @dma_set_mask(%struct.device* %200, i32 %201)
  br label %210

203:                                              ; preds = %182
  %204 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %205 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 1
  %207 = load %struct.device*, %struct.device** %206, align 8
  %208 = call i32 @DMA_BIT_MASK(i32 32)
  %209 = call i32 @dma_set_mask(%struct.device* %207, i32 %208)
  br label %210

210:                                              ; preds = %203, %194
  %211 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %212 = call i32 @xhci_dbg(%struct.xhci_hcd.1* %211, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %213 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %214 = call i32 @xhci_init(%struct.usb_hcd* %213)
  store i32 %214, i32* %8, align 4
  %215 = load i32, i32* %8, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %210
  br label %221

218:                                              ; preds = %210
  %219 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %220 = call i32 @xhci_dbg(%struct.xhci_hcd.1* %219, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %225

221:                                              ; preds = %217, %181, %173
  %222 = load %struct.xhci_hcd.1*, %struct.xhci_hcd.1** %6, align 8
  %223 = call i32 @kfree(%struct.xhci_hcd.1* %222)
  %224 = load i32, i32* %8, align 4
  store i32 %224, i32* %3, align 4
  br label %225

225:                                              ; preds = %221, %218, %79, %28
  %226 = load i32, i32* %3, align 4
  ret i32 %226
}

declare dso_local i64 @usb_hcd_is_primary_hcd(%struct.usb_hcd*) #1

declare dso_local %struct.xhci_hcd.1* @kzalloc(i32, i32) #1

declare dso_local %struct.xhci_hcd.1* @hcd_to_xhci(%struct.usb_hcd*) #1

declare dso_local i32 @xhci_readl(%struct.xhci_hcd.1*, i32*) #1

declare dso_local i64 @HCC_64BIT_ADDR(i32) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd.1*, i8*) #1

declare dso_local i32 @dma_set_mask(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @HC_LENGTH(i32) #1

declare dso_local i32 @HC_VERSION(i32) #1

declare dso_local i32 @xhci_print_registers(%struct.xhci_hcd.1*) #1

declare dso_local i32 @xhci_halt(%struct.xhci_hcd.1*) #1

declare dso_local i32 @xhci_reset(%struct.xhci_hcd.1*) #1

declare dso_local i32 @xhci_init(%struct.usb_hcd*) #1

declare dso_local i32 @kfree(%struct.xhci_hcd.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
