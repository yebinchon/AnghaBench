; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hcd-pci.c_usb_hcd_pci_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hcd-pci.c_usb_hcd_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32 }
%struct.pci_device_id = type { i64 }
%struct.hc_driver = type { i32, i32 }
%struct.usb_hcd = type { i8*, i8*, i32* }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PCI_D0 = common dso_local global i32 0, align 4
@HCD_MASK = common dso_local global i32 0, align 4
@HCD_USB3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Found HC with no IRQ. Check BIOS/PCI %s setup!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HCD_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"controller already in use\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"error mapping memory\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@PCI_ROM_RESOURCE = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"no i/o regions available\0A\00", align 1
@IRQF_DISABLED = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"init %s fail, %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_hcd_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.hc_driver*, align 8
  %7 = alloca %struct.usb_hcd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %9, align 4
  %11 = call i64 (...) @usb_disabled()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %240

16:                                               ; preds = %2
  %17 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %18 = icmp ne %struct.pci_device_id* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %240

22:                                               ; preds = %16
  %23 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %24 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.hc_driver*
  store %struct.hc_driver* %26, %struct.hc_driver** %6, align 8
  %27 = load %struct.hc_driver*, %struct.hc_driver** %6, align 8
  %28 = icmp ne %struct.hc_driver* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %240

32:                                               ; preds = %22
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = call i64 @pci_enable_device(%struct.pci_dev* %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %240

39:                                               ; preds = %32
  %40 = load i32, i32* @PCI_D0, align 4
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.hc_driver*, %struct.hc_driver** %6, align 8
  %44 = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @HCD_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @HCD_USB3, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %39
  %51 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %50
  %56 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %57 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %56, i32 0, i32 1
  %58 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %59 = call i32 @pci_name(%struct.pci_dev* %58)
  %60 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %57, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %8, align 4
  br label %230

63:                                               ; preds = %50
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %63, %39
  %68 = load %struct.hc_driver*, %struct.hc_driver** %6, align 8
  %69 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %70 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %69, i32 0, i32 1
  %71 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %72 = call i32 @pci_name(%struct.pci_dev* %71)
  %73 = call %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver* %68, i32* %70, i32 %72)
  store %struct.usb_hcd* %73, %struct.usb_hcd** %7, align 8
  %74 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %75 = icmp ne %struct.usb_hcd* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %67
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %8, align 4
  br label %230

79:                                               ; preds = %67
  %80 = load %struct.hc_driver*, %struct.hc_driver** %6, align 8
  %81 = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @HCD_MEMORY, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %133

86:                                               ; preds = %79
  %87 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %88 = call i8* @pci_resource_start(%struct.pci_dev* %87, i32 0)
  %89 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %90 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  %91 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %92 = call i8* @pci_resource_len(%struct.pci_dev* %91, i32 0)
  %93 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %94 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  %95 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %96 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %99 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.hc_driver*, %struct.hc_driver** %6, align 8
  %102 = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @request_mem_region(i8* %97, i8* %100, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %86
  %107 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %108 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %107, i32 0, i32 1
  %109 = call i32 @dev_dbg(i32* %108, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %110 = load i32, i32* @EBUSY, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %8, align 4
  br label %227

112:                                              ; preds = %86
  %113 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %114 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %117 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i32* @ioremap_nocache(i8* %115, i8* %118)
  %120 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %121 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %120, i32 0, i32 2
  store i32* %119, i32** %121, align 8
  %122 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %123 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %132

126:                                              ; preds = %112
  %127 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %128 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %127, i32 0, i32 1
  %129 = call i32 @dev_dbg(i32* %128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %130 = load i32, i32* @EFAULT, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %8, align 4
  br label %210

132:                                              ; preds = %112
  br label %184

133:                                              ; preds = %79
  store i32 0, i32* %10, align 4
  br label %134

134:                                              ; preds = %170, %133
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* @PCI_ROM_RESOURCE, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %173

138:                                              ; preds = %134
  %139 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @pci_resource_flags(%struct.pci_dev* %139, i32 %140)
  %142 = load i32, i32* @IORESOURCE_IO, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %138
  br label %170

146:                                              ; preds = %138
  %147 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %148 = load i32, i32* %10, align 4
  %149 = call i8* @pci_resource_start(%struct.pci_dev* %147, i32 %148)
  %150 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %151 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %150, i32 0, i32 1
  store i8* %149, i8** %151, align 8
  %152 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %153 = load i32, i32* %10, align 4
  %154 = call i8* @pci_resource_len(%struct.pci_dev* %152, i32 %153)
  %155 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %156 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %155, i32 0, i32 0
  store i8* %154, i8** %156, align 8
  %157 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %158 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %157, i32 0, i32 1
  %159 = load i8*, i8** %158, align 8
  %160 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %161 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = load %struct.hc_driver*, %struct.hc_driver** %6, align 8
  %164 = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i64 @request_region(i8* %159, i8* %162, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %146
  br label %173

169:                                              ; preds = %146
  br label %170

170:                                              ; preds = %169, %145
  %171 = load i32, i32* %10, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %10, align 4
  br label %134

173:                                              ; preds = %168, %134
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* @PCI_ROM_RESOURCE, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %183

177:                                              ; preds = %173
  %178 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %179 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %178, i32 0, i32 1
  %180 = call i32 @dev_dbg(i32* %179, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %181 = load i32, i32* @EBUSY, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %8, align 4
  br label %230

183:                                              ; preds = %173
  br label %184

184:                                              ; preds = %183, %132
  %185 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %186 = call i32 @pci_set_master(%struct.pci_dev* %185)
  %187 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %188 = load i32, i32* %9, align 4
  %189 = load i32, i32* @IRQF_DISABLED, align 4
  %190 = load i32, i32* @IRQF_SHARED, align 4
  %191 = or i32 %189, %190
  %192 = call i32 @usb_add_hcd(%struct.usb_hcd* %187, i32 %188, i32 %191)
  store i32 %192, i32* %8, align 4
  %193 = load i32, i32* %8, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %184
  br label %198

196:                                              ; preds = %184
  %197 = load i32, i32* %8, align 4
  store i32 %197, i32* %3, align 4
  br label %240

198:                                              ; preds = %195
  %199 = load %struct.hc_driver*, %struct.hc_driver** %6, align 8
  %200 = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @HCD_MEMORY, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %218

205:                                              ; preds = %198
  %206 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %207 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %206, i32 0, i32 2
  %208 = load i32*, i32** %207, align 8
  %209 = call i32 @iounmap(i32* %208)
  br label %210

210:                                              ; preds = %205, %126
  %211 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %212 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %211, i32 0, i32 1
  %213 = load i8*, i8** %212, align 8
  %214 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %215 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %214, i32 0, i32 0
  %216 = load i8*, i8** %215, align 8
  %217 = call i32 @release_mem_region(i8* %213, i8* %216)
  br label %226

218:                                              ; preds = %198
  %219 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %220 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %219, i32 0, i32 1
  %221 = load i8*, i8** %220, align 8
  %222 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %223 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %222, i32 0, i32 0
  %224 = load i8*, i8** %223, align 8
  %225 = call i32 @release_region(i8* %221, i8* %224)
  br label %226

226:                                              ; preds = %218, %210
  br label %227

227:                                              ; preds = %226, %106
  %228 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %229 = call i32 @usb_put_hcd(%struct.usb_hcd* %228)
  br label %230

230:                                              ; preds = %227, %177, %76, %55
  %231 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %232 = call i32 @pci_disable_device(%struct.pci_dev* %231)
  %233 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %234 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %233, i32 0, i32 1
  %235 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %236 = call i32 @pci_name(%struct.pci_dev* %235)
  %237 = load i32, i32* %8, align 4
  %238 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %234, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %236, i32 %237)
  %239 = load i32, i32* %8, align 4
  store i32 %239, i32* %3, align 4
  br label %240

240:                                              ; preds = %230, %196, %36, %29, %19, %13
  %241 = load i32, i32* %3, align 4
  ret i32 %241
}

declare dso_local i64 @usb_disabled(...) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local %struct.usb_hcd* @usb_create_hcd(%struct.hc_driver*, i32*, i32) #1

declare dso_local i8* @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i8* @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @request_mem_region(i8*, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32* @ioremap_nocache(i8*, i8*) #1

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i64 @request_region(i8*, i8*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i32) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @release_mem_region(i8*, i8*) #1

declare dso_local i32 @release_region(i8*, i8*) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
