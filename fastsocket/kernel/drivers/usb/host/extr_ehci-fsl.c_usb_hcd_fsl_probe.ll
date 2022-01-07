; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-fsl.c_usb_hcd_fsl_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-fsl.c_usb_hcd_fsl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hc_driver = type { i32 }
%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.fsl_usb2_platform_data = type { i64 }
%struct.usb_hcd = type { i32, i32, i32* }
%struct.resource = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"initializing FSL-SOC USB Controller\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"No platform data for %s.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@FSL_USB2_DR_HOST = common dso_local global i64 0, align 8
@FSL_USB2_MPH_HOST = common dso_local global i64 0, align 8
@FSL_USB2_DR_OTG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [55 x i8] c"Non Host Mode configured for %s. Wrong driver linked.\0A\00", align 1
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Found HC with no IRQ. Check %s setup!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"Found HC with no register addr. Check %s setup!\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"controller already in use\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"error mapping memory\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"init %s fail, %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_hcd_fsl_probe(%struct.hc_driver* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hc_driver*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.fsl_usb2_platform_data*, align 8
  %7 = alloca %struct.usb_hcd*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hc_driver* %0, %struct.hc_driver** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.fsl_usb2_platform_data*
  store %struct.fsl_usb2_platform_data* %17, %struct.fsl_usb2_platform_data** %6, align 8
  %18 = load %struct.fsl_usb2_platform_data*, %struct.fsl_usb2_platform_data** %6, align 8
  %19 = icmp ne %struct.fsl_usb2_platform_data* %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %2
  %21 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i32 @dev_name(%struct.TYPE_5__* %24)
  %26 = call i32 (%struct.TYPE_5__*, i8*, i32, ...) @dev_err(%struct.TYPE_5__* %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %216

29:                                               ; preds = %2
  %30 = load %struct.fsl_usb2_platform_data*, %struct.fsl_usb2_platform_data** %6, align 8
  %31 = getelementptr inbounds %struct.fsl_usb2_platform_data, %struct.fsl_usb2_platform_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @FSL_USB2_DR_HOST, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %56, label %35

35:                                               ; preds = %29
  %36 = load %struct.fsl_usb2_platform_data*, %struct.fsl_usb2_platform_data** %6, align 8
  %37 = getelementptr inbounds %struct.fsl_usb2_platform_data, %struct.fsl_usb2_platform_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @FSL_USB2_MPH_HOST, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %56, label %41

41:                                               ; preds = %35
  %42 = load %struct.fsl_usb2_platform_data*, %struct.fsl_usb2_platform_data** %6, align 8
  %43 = getelementptr inbounds %struct.fsl_usb2_platform_data, %struct.fsl_usb2_platform_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @FSL_USB2_DR_OTG, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %56, label %47

47:                                               ; preds = %41
  %48 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call i32 @dev_name(%struct.TYPE_5__* %51)
  %53 = call i32 (%struct.TYPE_5__*, i8*, i32, ...) @dev_err(%struct.TYPE_5__* %49, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %216

56:                                               ; preds = %41, %35, %29
  %57 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %58 = load i32, i32* @IORESOURCE_IRQ, align 4
  %59 = call %struct.resource* @platform_get_resource(%struct.platform_device* %57, i32 %58, i32 0)
  store %struct.resource* %59, %struct.resource** %8, align 8
  %60 = load %struct.resource*, %struct.resource** %8, align 8
  %61 = icmp ne %struct.resource* %60, null
  br i1 %61, label %71, label %62

62:                                               ; preds = %56
  %63 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = call i32 @dev_name(%struct.TYPE_5__* %66)
  %68 = call i32 (%struct.TYPE_5__*, i8*, i32, ...) @dev_err(%struct.TYPE_5__* %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %216

71:                                               ; preds = %56
  %72 = load %struct.resource*, %struct.resource** %8, align 8
  %73 = getelementptr inbounds %struct.resource, %struct.resource* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %9, align 4
  %75 = load %struct.hc_driver*, %struct.hc_driver** %4, align 8
  %76 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = call i32 @dev_name(%struct.TYPE_5__* %79)
  %81 = call %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver* %75, %struct.TYPE_5__* %77, i32 %80)
  store %struct.usb_hcd* %81, %struct.usb_hcd** %7, align 8
  %82 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %83 = icmp ne %struct.usb_hcd* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %71
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %10, align 4
  br label %207

87:                                               ; preds = %71
  %88 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %89 = load i32, i32* @IORESOURCE_MEM, align 4
  %90 = call %struct.resource* @platform_get_resource(%struct.platform_device* %88, i32 %89, i32 0)
  store %struct.resource* %90, %struct.resource** %8, align 8
  %91 = load %struct.resource*, %struct.resource** %8, align 8
  %92 = icmp ne %struct.resource* %91, null
  br i1 %92, label %102, label %93

93:                                               ; preds = %87
  %94 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = call i32 @dev_name(%struct.TYPE_5__* %97)
  %99 = call i32 (%struct.TYPE_5__*, i8*, i32, ...) @dev_err(%struct.TYPE_5__* %95, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @ENODEV, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %10, align 4
  br label %204

102:                                              ; preds = %87
  %103 = load %struct.resource*, %struct.resource** %8, align 8
  %104 = getelementptr inbounds %struct.resource, %struct.resource* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %107 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.resource*, %struct.resource** %8, align 8
  %109 = getelementptr inbounds %struct.resource, %struct.resource* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.resource*, %struct.resource** %8, align 8
  %112 = getelementptr inbounds %struct.resource, %struct.resource* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = sub nsw i32 %110, %113
  %115 = add nsw i32 %114, 1
  %116 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %117 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %119 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %122 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.hc_driver*, %struct.hc_driver** %4, align 8
  %125 = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @request_mem_region(i32 %120, i32 %123, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %102
  %130 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = call i32 @dev_dbg(%struct.TYPE_5__* %131, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %133 = load i32, i32* @EBUSY, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %10, align 4
  br label %204

135:                                              ; preds = %102
  %136 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %137 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %140 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32* @ioremap(i32 %138, i32 %141)
  %143 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %144 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %143, i32 0, i32 2
  store i32* %142, i32** %144, align 8
  %145 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %146 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = icmp eq i32* %147, null
  br i1 %148, label %149, label %155

149:                                              ; preds = %135
  %150 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %151 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %150, i32 0, i32 0
  %152 = call i32 @dev_dbg(%struct.TYPE_5__* %151, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %153 = load i32, i32* @EFAULT, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %10, align 4
  br label %196

155:                                              ; preds = %135
  %156 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %157 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 1280
  %160 = call i32 @in_be32(i32* %159)
  store i32 %160, i32* %11, align 4
  %161 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %162 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 1280
  %165 = load i32, i32* %11, align 4
  %166 = or i32 %165, 4
  %167 = call i32 @out_be32(i32* %164, i32 %166)
  %168 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %169 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 424
  %172 = call i32 @in_le32(i32* %171)
  store i32 %172, i32* %11, align 4
  %173 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %174 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %173, i32 0, i32 2
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 424
  %177 = load i32, i32* %11, align 4
  %178 = or i32 %177, 3
  %179 = call i32 @out_le32(i32* %176, i32 %178)
  %180 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* @IRQF_DISABLED, align 4
  %183 = load i32, i32* @IRQF_SHARED, align 4
  %184 = or i32 %182, %183
  %185 = call i32 @usb_add_hcd(%struct.usb_hcd* %180, i32 %181, i32 %184)
  store i32 %185, i32* %10, align 4
  %186 = load i32, i32* %10, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %155
  br label %191

189:                                              ; preds = %155
  %190 = load i32, i32* %10, align 4
  store i32 %190, i32* %3, align 4
  br label %216

191:                                              ; preds = %188
  %192 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %193 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %192, i32 0, i32 2
  %194 = load i32*, i32** %193, align 8
  %195 = call i32 @iounmap(i32* %194)
  br label %196

196:                                              ; preds = %191, %149
  %197 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %198 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %201 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @release_mem_region(i32 %199, i32 %202)
  br label %204

204:                                              ; preds = %196, %129, %93
  %205 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %206 = call i32 @usb_put_hcd(%struct.usb_hcd* %205)
  br label %207

207:                                              ; preds = %204, %84
  %208 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %209 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %208, i32 0, i32 0
  %210 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %211 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %210, i32 0, i32 0
  %212 = call i32 @dev_name(%struct.TYPE_5__* %211)
  %213 = load i32, i32* %10, align 4
  %214 = call i32 (%struct.TYPE_5__*, i8*, i32, ...) @dev_err(%struct.TYPE_5__* %209, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %212, i32 %213)
  %215 = load i32, i32* %10, align 4
  store i32 %215, i32* %3, align 4
  br label %216

216:                                              ; preds = %207, %189, %62, %47, %20
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, i32, ...) #1

declare dso_local i32 @dev_name(%struct.TYPE_5__*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @request_mem_region(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_5__*, i8*) #1

declare dso_local i32* @ioremap(i32, i32) #1

declare dso_local i32 @in_be32(i32*) #1

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i32 @in_le32(i32*) #1

declare dso_local i32 @out_le32(i32*, i32) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i32) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
