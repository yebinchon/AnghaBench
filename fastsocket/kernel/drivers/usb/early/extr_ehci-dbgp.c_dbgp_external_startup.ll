; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/early/extr_ehci-dbgp.c_dbgp_external_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/early/extr_ehci-dbgp.c_dbgp_external_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.usb_debug_descriptor = type { i32 }

@dbgp_phys_port = common dso_local global i32 0, align 4
@ehci_regs = common dso_local global %struct.TYPE_3__* null, align 8
@PORT_CONNECT = common dso_local global i32 0, align 4
@CMD_RUN = common dso_local global i32 0, align 4
@PORT_TEST_PKT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Trying to force debug port online\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"No device found in debug port\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"wait for port done\00", align 1
@ehci_debug = common dso_local global %struct.TYPE_4__* null, align 8
@DBGP_CLAIM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"No device in debug port\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"debug ported enabled\00", align 1
@PORT_PE = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_STANDARD = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_REQ_GET_DESCRIPTOR = common dso_local global i32 0, align 4
@USB_DT_DEBUG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"Could not find attached debug device\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Attached device is not a debug device\0A\00", align 1
@dbgp_endpoint_out = common dso_local global i32 0, align 4
@USB_DEBUG_DEVNUM = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_REQ_SET_ADDRESS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"Could not move attached device to %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"debug device renamed to 127\0A\00", align 1
@USB_REQ_SET_FEATURE = common dso_local global i32 0, align 4
@USB_DEVICE_DEBUG_MODE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c" Could not enable the debug device\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"debug interface enabled\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"dbgp_bulk_write failed: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"small write doned\0A\00", align 1
@dbgp_not_safe = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbgp_external_startup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_debug_descriptor, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = load i32, i32* @dbgp_phys_port, align 4
  store i32 %12, i32* %8, align 4
  store i32 3, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %13

13:                                               ; preds = %79, %40, %0
  %14 = call i32 (...) @dbgp_ehci_startup()
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %1, align 4
  br label %230

19:                                               ; preds = %13
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @ehci_wait_for_port(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %85

24:                                               ; preds = %19
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ehci_regs, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = call i32 @readl(i32* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @PORT_CONNECT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %75, label %37

37:                                               ; preds = %24
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %75

40:                                               ; preds = %37
  store i32 0, i32* %11, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ehci_regs, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = call i32 @readl(i32* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* @CMD_RUN, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ehci_regs, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = call i32 @writel(i32 %48, i32* %50)
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ehci_regs, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = call i32 @readl(i32* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* @PORT_TEST_PKT, align 4
  %61 = load i32, i32* %6, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ehci_regs, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = call i32 @writel(i32 %63, i32* %70)
  %72 = call i32 @dbgp_ehci_status(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %73 = call i32 @mdelay(i32 50)
  %74 = call i32 (...) @dbgp_ehci_controller_reset()
  br label %13

75:                                               ; preds = %37, %24
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %10, align 4
  %78 = icmp ne i32 %76, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %13

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %80
  %82 = call i32 (i8*, ...) @dbgp_printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* @EIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %1, align 4
  br label %230

85:                                               ; preds = %19
  %86 = call i32 @dbgp_ehci_status(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ehci_debug, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = call i32 @readl(i32* %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* @DBGP_CLAIM, align 4
  %91 = load i32, i32* %5, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ehci_debug, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = call i32 @writel(i32 %93, i32* %95)
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ehci_debug, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = call i32 @readl(i32* %98)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @DBGP_CLAIM, align 4
  %102 = and i32 %100, %101
  %103 = load i32, i32* @DBGP_CLAIM, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %85
  %106 = call i32 (i8*, ...) @dbgp_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @DBGP_CLAIM, align 4
  %109 = xor i32 %108, -1
  %110 = and i32 %107, %109
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ehci_debug, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = call i32 @writel(i32 %110, i32* %112)
  %114 = load i32, i32* @ENODEV, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %1, align 4
  br label %230

116:                                              ; preds = %85
  %117 = call i32 @dbgp_ehci_status(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ehci_regs, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = call i32 @readl(i32* %124)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* @PORT_PE, align 4
  %127 = xor i32 %126, -1
  %128 = load i32, i32* %6, align 4
  %129 = and i32 %128, %127
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ehci_regs, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  %138 = call i32 @writel(i32 %130, i32* %137)
  %139 = call i32 @dbgp_mdelay(i32 100)
  br label %140

140:                                              ; preds = %226, %116
  store i32 0, i32* %2, align 4
  br label %141

141:                                              ; preds = %159, %140
  %142 = load i32, i32* %2, align 4
  %143 = icmp sle i32 %142, 127
  br i1 %143, label %144, label %162

144:                                              ; preds = %141
  %145 = load i32, i32* %2, align 4
  %146 = load i32, i32* @USB_DIR_IN, align 4
  %147 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @USB_REQ_GET_DESCRIPTOR, align 4
  %152 = load i32, i32* @USB_DT_DEBUG, align 4
  %153 = shl i32 %152, 8
  %154 = call i32 @dbgp_control_msg(i32 %145, i32 %150, i32 %151, i32 %153, i32 0, %struct.usb_debug_descriptor* %3, i32 4)
  store i32 %154, i32* %4, align 4
  %155 = load i32, i32* %4, align 4
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %144
  br label %162

158:                                              ; preds = %144
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %2, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %2, align 4
  br label %141

162:                                              ; preds = %157, %141
  %163 = load i32, i32* %2, align 4
  %164 = icmp sgt i32 %163, 127
  br i1 %164, label %165, label %167

165:                                              ; preds = %162
  %166 = call i32 (i8*, ...) @dbgp_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %222

167:                                              ; preds = %162
  %168 = load i32, i32* %4, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %167
  %171 = call i32 (i8*, ...) @dbgp_printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  br label %222

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct.usb_debug_descriptor, %struct.usb_debug_descriptor* %3, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* @dbgp_endpoint_out, align 4
  %175 = load i32, i32* %2, align 4
  %176 = load i32, i32* @USB_DEBUG_DEVNUM, align 4
  %177 = icmp ne i32 %175, %176
  br i1 %177, label %178, label %196

178:                                              ; preds = %172
  %179 = load i32, i32* %2, align 4
  %180 = load i32, i32* @USB_DIR_OUT, align 4
  %181 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @USB_REQ_SET_ADDRESS, align 4
  %186 = load i32, i32* @USB_DEBUG_DEVNUM, align 4
  %187 = call i32 @dbgp_control_msg(i32 %179, i32 %184, i32 %185, i32 %186, i32 0, %struct.usb_debug_descriptor* null, i32 0)
  store i32 %187, i32* %4, align 4
  %188 = load i32, i32* %4, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %178
  %191 = load i32, i32* @USB_DEBUG_DEVNUM, align 4
  %192 = call i32 (i8*, ...) @dbgp_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %191)
  br label %222

193:                                              ; preds = %178
  %194 = load i32, i32* @USB_DEBUG_DEVNUM, align 4
  store i32 %194, i32* %2, align 4
  %195 = call i32 (i8*, ...) @dbgp_printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  br label %196

196:                                              ; preds = %193, %172
  %197 = load i32, i32* @USB_DEBUG_DEVNUM, align 4
  %198 = load i32, i32* @USB_DIR_OUT, align 4
  %199 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* @USB_REQ_SET_FEATURE, align 4
  %204 = load i32, i32* @USB_DEVICE_DEBUG_MODE, align 4
  %205 = call i32 @dbgp_control_msg(i32 %197, i32 %202, i32 %203, i32 %204, i32 0, %struct.usb_debug_descriptor* null, i32 0)
  store i32 %205, i32* %4, align 4
  %206 = load i32, i32* %4, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %196
  %209 = call i32 (i8*, ...) @dbgp_printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  br label %222

210:                                              ; preds = %196
  %211 = call i32 (i8*, ...) @dbgp_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %212 = load i32, i32* @USB_DEBUG_DEVNUM, align 4
  %213 = load i32, i32* @dbgp_endpoint_out, align 4
  %214 = call i32 @dbgp_bulk_write(i32 %212, i32 %213, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32 1)
  store i32 %214, i32* %4, align 4
  %215 = load i32, i32* %4, align 4
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %210
  %218 = load i32, i32* %4, align 4
  %219 = call i32 (i8*, ...) @dbgp_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i32 %218)
  br label %222

220:                                              ; preds = %210
  %221 = call i32 (i8*, ...) @dbgp_printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  store i64 0, i64* @dbgp_not_safe, align 8
  store i32 0, i32* %1, align 4
  br label %230

222:                                              ; preds = %217, %208, %190, %170, %165
  %223 = load i32, i32* %9, align 4
  %224 = add nsw i32 %223, -1
  store i32 %224, i32* %9, align 4
  %225 = icmp ne i32 %223, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %222
  br label %140

227:                                              ; preds = %222
  %228 = load i32, i32* @ENODEV, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %1, align 4
  br label %230

230:                                              ; preds = %227, %220, %105, %81, %17
  %231 = load i32, i32* %1, align 4
  ret i32 %231
}

declare dso_local i32 @dbgp_ehci_startup(...) #1

declare dso_local i32 @ehci_wait_for_port(i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @dbgp_ehci_status(i8*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @dbgp_ehci_controller_reset(...) #1

declare dso_local i32 @dbgp_printk(i8*, ...) #1

declare dso_local i32 @dbgp_mdelay(i32) #1

declare dso_local i32 @dbgp_control_msg(i32, i32, i32, i32, i32, %struct.usb_debug_descriptor*, i32) #1

declare dso_local i32 @dbgp_bulk_write(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
