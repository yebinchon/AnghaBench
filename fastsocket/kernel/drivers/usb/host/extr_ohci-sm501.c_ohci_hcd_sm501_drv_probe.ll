; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-sm501.c_ohci_hcd_sm501_drv_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-sm501.c_ohci_hcd_sm501_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hc_driver = type { i32 }
%struct.platform_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.usb_hcd = type { i64, i64, i32* }

@ohci_sm501_hc_driver = common dso_local global %struct.hc_driver zeroinitializer, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"no resource definition for memory\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"request_mem_region failed\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@DMA_MEMORY_MAP = common dso_local global i32 0, align 4
@DMA_MEMORY_EXCLUSIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"cannot declare coherent memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"no resource definition for registers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"cannot remap registers\0A\00", align 1
@IRQF_DISABLED = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@SM501_GATE_USB_HOST = common dso_local global i32 0, align 4
@SM501_IRQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ohci_hcd_sm501_drv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_hcd_sm501_drv_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.hc_driver*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_hcd*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.hc_driver* @ohci_sm501_hc_driver, %struct.hc_driver** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 1
  store %struct.device* %12, %struct.device** %5, align 8
  store %struct.usb_hcd* null, %struct.usb_hcd** %10, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = call i32 @platform_get_irq(%struct.platform_device* %13, i32 0)
  store i32 %14, i32* %8, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %209

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load i32, i32* @IORESOURCE_MEM, align 4
  %21 = call %struct.resource* @platform_get_resource(%struct.platform_device* %19, i32 %20, i32 1)
  store %struct.resource* %21, %struct.resource** %7, align 8
  %22 = load %struct.resource*, %struct.resource** %7, align 8
  %23 = icmp eq %struct.resource* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %209

29:                                               ; preds = %18
  %30 = load %struct.resource*, %struct.resource** %7, align 8
  %31 = getelementptr inbounds %struct.resource, %struct.resource* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.resource*, %struct.resource** %7, align 8
  %34 = getelementptr inbounds %struct.resource, %struct.resource* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.resource*, %struct.resource** %7, align 8
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %35, %38
  %40 = add nsw i64 %39, 1
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @request_mem_region(i64 %32, i64 %40, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %29
  %47 = load %struct.device*, %struct.device** %5, align 8
  %48 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EBUSY, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %8, align 4
  br label %209

51:                                               ; preds = %29
  %52 = load %struct.device*, %struct.device** %5, align 8
  %53 = load %struct.resource*, %struct.resource** %7, align 8
  %54 = getelementptr inbounds %struct.resource, %struct.resource* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.resource*, %struct.resource** %7, align 8
  %57 = getelementptr inbounds %struct.resource, %struct.resource* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.resource*, %struct.resource** %7, align 8
  %60 = getelementptr inbounds %struct.resource, %struct.resource* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %58, %63
  %65 = load %struct.resource*, %struct.resource** %7, align 8
  %66 = getelementptr inbounds %struct.resource, %struct.resource* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.resource*, %struct.resource** %7, align 8
  %69 = getelementptr inbounds %struct.resource, %struct.resource* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %67, %70
  %72 = add nsw i64 %71, 1
  %73 = load i32, i32* @DMA_MEMORY_MAP, align 4
  %74 = load i32, i32* @DMA_MEMORY_EXCLUSIVE, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @dma_declare_coherent_memory(%struct.device* %52, i64 %55, i64 %64, i64 %72, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %51
  %79 = load %struct.device*, %struct.device** %5, align 8
  %80 = call i32 @dev_err(%struct.device* %79, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* @ENXIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %8, align 4
  br label %196

83:                                               ; preds = %51
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = load i32, i32* @IORESOURCE_MEM, align 4
  %86 = call %struct.resource* @platform_get_resource(%struct.platform_device* %84, i32 %85, i32 0)
  store %struct.resource* %86, %struct.resource** %6, align 8
  %87 = load %struct.resource*, %struct.resource** %6, align 8
  %88 = icmp eq %struct.resource* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = load %struct.device*, %struct.device** %5, align 8
  %91 = call i32 @dev_err(%struct.device* %90, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %92 = load i32, i32* @ENOENT, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %8, align 4
  br label %193

94:                                               ; preds = %83
  %95 = load %struct.hc_driver*, %struct.hc_driver** %4, align 8
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 1
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 1
  %100 = call i32 @dev_name(%struct.device* %99)
  %101 = call %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver* %95, %struct.device* %97, i32 %100)
  store %struct.usb_hcd* %101, %struct.usb_hcd** %10, align 8
  %102 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %103 = icmp ne %struct.usb_hcd* %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %94
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %8, align 4
  br label %193

107:                                              ; preds = %94
  %108 = load %struct.resource*, %struct.resource** %6, align 8
  %109 = getelementptr inbounds %struct.resource, %struct.resource* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %112 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  %113 = load %struct.resource*, %struct.resource** %6, align 8
  %114 = getelementptr inbounds %struct.resource, %struct.resource* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.resource*, %struct.resource** %6, align 8
  %117 = getelementptr inbounds %struct.resource, %struct.resource* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = sub nsw i64 %115, %118
  %120 = add nsw i64 %119, 1
  %121 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %122 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  %123 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %124 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %127 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @request_mem_region(i64 %125, i64 %128, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %107
  %135 = load %struct.device*, %struct.device** %5, align 8
  %136 = call i32 @dev_err(%struct.device* %135, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %137 = load i32, i32* @EBUSY, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %8, align 4
  br label %190

139:                                              ; preds = %107
  %140 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %141 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %144 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = call i32* @ioremap(i64 %142, i64 %145)
  %147 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %148 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %147, i32 0, i32 2
  store i32* %146, i32** %148, align 8
  %149 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %150 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = icmp eq i32* %151, null
  br i1 %152, label %153, label %158

153:                                              ; preds = %139
  %154 = load %struct.device*, %struct.device** %5, align 8
  %155 = call i32 @dev_err(%struct.device* %154, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %156 = load i32, i32* @ENXIO, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %8, align 4
  br label %182

158:                                              ; preds = %139
  %159 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %160 = call i32 @hcd_to_ohci(%struct.usb_hcd* %159)
  %161 = call i32 @ohci_hcd_init(i32 %160)
  %162 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* @IRQF_DISABLED, align 4
  %165 = load i32, i32* @IRQF_SHARED, align 4
  %166 = or i32 %164, %165
  %167 = call i32 @usb_add_hcd(%struct.usb_hcd* %162, i32 %163, i32 %166)
  store i32 %167, i32* %8, align 4
  %168 = load i32, i32* %8, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %158
  br label %182

171:                                              ; preds = %158
  %172 = load %struct.device*, %struct.device** %5, align 8
  %173 = getelementptr inbounds %struct.device, %struct.device* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @SM501_GATE_USB_HOST, align 4
  %176 = call i32 @sm501_unit_power(i32 %174, i32 %175, i32 1)
  %177 = load %struct.device*, %struct.device** %5, align 8
  %178 = getelementptr inbounds %struct.device, %struct.device* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @SM501_IRQ_MASK, align 4
  %181 = call i32 @sm501_modify_reg(i32 %179, i32 %180, i32 64, i32 0)
  store i32 0, i32* %2, align 4
  br label %211

182:                                              ; preds = %170, %153
  %183 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %184 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %187 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @release_mem_region(i64 %185, i64 %188)
  br label %190

190:                                              ; preds = %182, %134
  %191 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  %192 = call i32 @usb_put_hcd(%struct.usb_hcd* %191)
  br label %193

193:                                              ; preds = %190, %104, %89
  %194 = load %struct.device*, %struct.device** %5, align 8
  %195 = call i32 @dma_release_declared_memory(%struct.device* %194)
  br label %196

196:                                              ; preds = %193, %78
  %197 = load %struct.resource*, %struct.resource** %7, align 8
  %198 = getelementptr inbounds %struct.resource, %struct.resource* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.resource*, %struct.resource** %7, align 8
  %201 = getelementptr inbounds %struct.resource, %struct.resource* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.resource*, %struct.resource** %7, align 8
  %204 = getelementptr inbounds %struct.resource, %struct.resource* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = sub nsw i64 %202, %205
  %207 = add nsw i64 %206, 1
  %208 = call i32 @release_mem_region(i64 %199, i64 %207)
  br label %209

209:                                              ; preds = %196, %46, %24, %17
  %210 = load i32, i32* %8, align 4
  store i32 %210, i32* %2, align 4
  br label %211

211:                                              ; preds = %209, %171
  %212 = load i32, i32* %2, align 4
  ret i32 %212
}

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @request_mem_region(i64, i64, i32) #1

declare dso_local i32 @dma_declare_coherent_memory(%struct.device*, i64, i64, i64, i32) #1

declare dso_local %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver*, %struct.device*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32* @ioremap(i64, i64) #1

declare dso_local i32 @ohci_hcd_init(i32) #1

declare dso_local i32 @hcd_to_ohci(%struct.usb_hcd*) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i32) #1

declare dso_local i32 @sm501_unit_power(i32, i32, i32) #1

declare dso_local i32 @sm501_modify_reg(i32, i32, i32, i32) #1

declare dso_local i32 @release_mem_region(i64, i64) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @dma_release_declared_memory(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
