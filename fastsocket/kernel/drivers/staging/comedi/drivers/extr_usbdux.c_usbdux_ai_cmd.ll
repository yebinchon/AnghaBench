; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_ai_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_usbdux.c_usbdux_ai_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.usbduxsub* }
%struct.usbduxsub = type { i32, i32*, i32, i32, i32, i32, i32, i64, %struct.TYPE_3__*, i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.comedi_subdevice = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i64, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32, i64, i64, i64, i32* }

@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"comedi%d: usbdux_ai_cmd\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"comedi%d: ai_cmd not possible. Another ai_cmd is running.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@NUMCHANNELS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"comedi%d: channel list too long\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"comedi %d: sending commands to the usb device: size=%u\0A\00", align 1
@SENDADCOMMANDS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [80 x i8] c"comedi%d: ai_cmd: timer=%d, scan_begin_arg=%d. Not properly tested by cmdtest?\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i64 0, align 8
@TRIG_NOW = common dso_local global i64 0, align 8
@usbdux_ai_inttrig = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @usbdux_ai_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbdux_ai_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.usbduxsub*, align 8
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %14 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  store %struct.comedi_cmd* %16, %struct.comedi_cmd** %6, align 8
  %17 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 1
  %19 = load %struct.usbduxsub*, %struct.usbduxsub** %18, align 8
  store %struct.usbduxsub* %19, %struct.usbduxsub** %11, align 8
  %20 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  %21 = icmp ne %struct.usbduxsub* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EFAULT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %274

25:                                               ; preds = %2
  %26 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  %27 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %26, i32 0, i32 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  %35 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %34, i32 0, i32 6
  %36 = call i32 @down(i32* %35)
  %37 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  %38 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %37, i32 0, i32 10
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %25
  %42 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  %43 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %42, i32 0, i32 6
  %44 = call i32 @up(i32* %43)
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %274

47:                                               ; preds = %25
  %48 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  %49 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %47
  %53 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  %54 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %53, i32 0, i32 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %58 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %56, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  %62 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %61, i32 0, i32 6
  %63 = call i32 @up(i32* %62)
  %64 = load i32, i32* @EBUSY, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %274

66:                                               ; preds = %47
  %67 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %68 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %72 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  %75 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 %73, i32* %77, align 4
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %124, %66
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %81 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %127

84:                                               ; preds = %78
  %85 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %86 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %85, i32 0, i32 5
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @CR_CHAN(i32 %91)
  store i32 %92, i32* %7, align 4
  %93 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %94 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %93, i32 0, i32 5
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @CR_RANGE(i32 %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @NUMCHANNELS, align 4
  %103 = icmp sge i32 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %84
  %105 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  %106 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %105, i32 0, i32 8
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %110 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %108, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  br label %127

113:                                              ; preds = %84
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @create_adc_command(i32 %114, i32 %115)
  %117 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  %118 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 2
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  store i32 %116, i32* %123, align 4
  br label %124

124:                                              ; preds = %113
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %78

127:                                              ; preds = %104, %78
  %128 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  %129 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %128, i32 0, i32 8
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %133 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @NUMCHANNELS, align 4
  %136 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %131, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %134, i32 %135)
  %137 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  %138 = load i32, i32* @SENDADCOMMANDS, align 4
  %139 = call i32 @send_dux_commands(%struct.usbduxsub* %137, i32 %138)
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %12, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %127
  %143 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  %144 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %143, i32 0, i32 6
  %145 = call i32 @up(i32* %144)
  %146 = load i32, i32* %12, align 4
  store i32 %146, i32* %3, align 4
  br label %274

147:                                              ; preds = %127
  %148 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  %149 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %148, i32 0, i32 9
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %181

152:                                              ; preds = %147
  %153 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  %154 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %153, i32 0, i32 2
  store i32 1, i32* %154, align 8
  br label %155

155:                                              ; preds = %163, %152
  %156 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  %157 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %160 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp slt i32 %158, %161
  br i1 %162, label %163, label %170

163:                                              ; preds = %155
  %164 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  %165 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = mul nsw i32 %166, 2
  %168 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  %169 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 8
  br label %155

170:                                              ; preds = %155
  %171 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %172 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  %175 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = mul nsw i32 125000, %176
  %178 = sdiv i32 %173, %177
  %179 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  %180 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 4
  br label %190

181:                                              ; preds = %147
  %182 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  %183 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %182, i32 0, i32 2
  store i32 1, i32* %183, align 8
  %184 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %185 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = sdiv i32 %186, 1000000
  %188 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  %189 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %188, i32 0, i32 3
  store i32 %187, i32* %189, align 4
  br label %190

190:                                              ; preds = %181, %170
  %191 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  %192 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = icmp slt i32 %193, 1
  br i1 %194, label %195, label %215

195:                                              ; preds = %190
  %196 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  %197 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %196, i32 0, i32 8
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 0
  %200 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %201 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  %204 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %207 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %199, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.4, i64 0, i64 0), i32 %202, i32 %205, i32 %208)
  %210 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  %211 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %210, i32 0, i32 6
  %212 = call i32 @up(i32* %211)
  %213 = load i32, i32* @EINVAL, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %3, align 4
  br label %274

215:                                              ; preds = %190
  %216 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  %217 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  %220 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %219, i32 0, i32 4
  store i32 %218, i32* %220, align 8
  %221 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %222 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %221, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @TRIG_COUNT, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %234

226:                                              ; preds = %215
  %227 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %228 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %227, i32 0, i32 4
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  %231 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %230, i32 0, i32 7
  store i64 %229, i64* %231, align 8
  %232 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  %233 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %232, i32 0, i32 5
  store i32 0, i32* %233, align 4
  br label %239

234:                                              ; preds = %215
  %235 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  %236 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %235, i32 0, i32 5
  store i32 1, i32* %236, align 4
  %237 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  %238 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %237, i32 0, i32 7
  store i64 0, i64* %238, align 8
  br label %239

239:                                              ; preds = %234, %226
  %240 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %241 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %240, i32 0, i32 3
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @TRIG_NOW, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %264

245:                                              ; preds = %239
  %246 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  %247 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %246, i32 0, i32 0
  store i32 1, i32* %247, align 8
  %248 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  %249 = call i32 @usbduxsub_submit_InURBs(%struct.usbduxsub* %248)
  store i32 %249, i32* %10, align 4
  %250 = load i32, i32* %10, align 4
  %251 = icmp slt i32 %250, 0
  br i1 %251, label %252, label %259

252:                                              ; preds = %245
  %253 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  %254 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %253, i32 0, i32 0
  store i32 0, i32* %254, align 8
  %255 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  %256 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %255, i32 0, i32 6
  %257 = call i32 @up(i32* %256)
  %258 = load i32, i32* %10, align 4
  store i32 %258, i32* %3, align 4
  br label %274

259:                                              ; preds = %245
  %260 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %261 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %260, i32 0, i32 0
  %262 = load %struct.TYPE_4__*, %struct.TYPE_4__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 0
  store i32* null, i32** %263, align 8
  br label %270

264:                                              ; preds = %239
  %265 = load i32*, i32** @usbdux_ai_inttrig, align 8
  %266 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %267 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %266, i32 0, i32 0
  %268 = load %struct.TYPE_4__*, %struct.TYPE_4__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 0
  store i32* %265, i32** %269, align 8
  br label %270

270:                                              ; preds = %264, %259
  %271 = load %struct.usbduxsub*, %struct.usbduxsub** %11, align 8
  %272 = getelementptr inbounds %struct.usbduxsub, %struct.usbduxsub* %271, i32 0, i32 6
  %273 = call i32 @up(i32* %272)
  store i32 0, i32* %3, align 4
  br label %274

274:                                              ; preds = %270, %252, %195, %142, %52, %41, %22
  %275 = load i32, i32* %3, align 4
  ret i32 %275
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @create_adc_command(i32, i32) #1

declare dso_local i32 @send_dux_commands(%struct.usbduxsub*, i32) #1

declare dso_local i32 @usbduxsub_submit_InURBs(%struct.usbduxsub*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
