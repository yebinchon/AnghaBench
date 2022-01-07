; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_config.c_usb_parse_configuration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_config.c_usb_parse_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.usb_host_config = type { i8*, i32, %struct.usb_interface_cache**, %struct.TYPE_6__, %struct.usb_interface_assoc_descriptor** }
%struct.usb_interface_cache = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64, i32, i32, i32 }
%struct.usb_interface_assoc_descriptor = type { i32 }
%struct.usb_descriptor_header = type { i32, i64 }
%struct.usb_interface_descriptor = type { i32, i32 }

@USB_MAXINTERFACES = common dso_local global i32 0, align 4
@USB_DT_CONFIG_SIZE = common dso_local global i64 0, align 8
@USB_DT_CONFIG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"invalid descriptor for config index %d: type = 0x%X, length = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"config %d has too many interfaces: %d, using maximum allowed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"config %d descriptor has %d excess byte%s, ignoring\0A\00", align 1
@.str.3 = private unnamed_addr constant [84 x i8] c"config %d has an invalid descriptor of length %d, skipping remainder of the config\0A\00", align 1
@USB_DT_INTERFACE = common dso_local global i64 0, align 8
@USB_DT_INTERFACE_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [70 x i8] c"config %d has an invalid interface descriptor of length %d, skipping\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"config %d has an invalid interface number: %d but max is %d\0A\00", align 1
@USB_DT_INTERFACE_ASSOCIATION = common dso_local global i64 0, align 8
@USB_MAXIADS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [85 x i8] c"found more Interface Association Descriptors than allocated for in configuration %d\0A\00", align 1
@USB_DT_DEVICE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [68 x i8] c"config %d contains an unexpected descriptor of type 0x%X, skipping\0A\00", align 1
@.str.8 = private unnamed_addr constant [73 x i8] c"config %d has %d interface%s, different from the descriptor's value: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"config %d has no interfaces?\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"config %d has no interface number %d\0A\00", align 1
@USB_MAXALTSETTING = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [87 x i8] c"too many alternate settings for config %d interface %d: %d, using maximum allowed: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [34 x i8] c"skipped %d descriptor%s after %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"configuration\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"config %d interface %d has no altsetting %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, %struct.usb_host_config*, i8*, i32)* @usb_parse_configuration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_parse_configuration(%struct.device* %0, i32 %1, %struct.usb_host_config* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_host_config*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.usb_interface_cache*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.usb_descriptor_header*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.usb_interface_descriptor*, align 8
  %31 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.usb_host_config* %2, %struct.usb_host_config** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %32 = load i8*, i8** %10, align 8
  store i8* %32, i8** %12, align 8
  %33 = load i32, i32* @USB_MAXINTERFACES, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %25, align 8
  %36 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %26, align 8
  %37 = load i32, i32* @USB_MAXINTERFACES, align 4
  %38 = zext i32 %37 to i64
  %39 = alloca i32, i64 %38, align 16
  store i64 %38, i64* %27, align 8
  store i32 0, i32* %28, align 4
  %40 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %41 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %40, i32 0, i32 3
  %42 = load i8*, i8** %10, align 8
  %43 = load i64, i64* @USB_DT_CONFIG_SIZE, align 8
  %44 = call i32 @memcpy(%struct.TYPE_6__* %41, i8* %42, i64 %43)
  %45 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %46 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @USB_DT_CONFIG, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %58, label %51

51:                                               ; preds = %5
  %52 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %53 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @USB_DT_CONFIG_SIZE, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %51, %5
  %59 = load %struct.device*, %struct.device** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %62 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %66 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @dev_err(%struct.device* %59, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %60, i64 %64, i64 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  store i32 1, i32* %29, align 4
  br label %533

72:                                               ; preds = %51
  %73 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %74 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %13, align 4
  %77 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %78 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 %80
  store i8* %82, i8** %10, align 8
  %83 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %84 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = sub nsw i64 %88, %86
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %11, align 4
  %91 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %92 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %15, align 4
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* @USB_MAXINTERFACES, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %72
  %99 = load %struct.device*, %struct.device** %7, align 8
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* @USB_MAXINTERFACES, align 4
  %103 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %99, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %100, i32 %101, i32 %102)
  %104 = load i32, i32* @USB_MAXINTERFACES, align 4
  store i32 %104, i32* %14, align 4
  br label %105

105:                                              ; preds = %98, %72
  store i32 0, i32* %18, align 4
  %106 = load i8*, i8** %10, align 8
  store i8* %106, i8** %20, align 8
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %21, align 4
  br label %108

108:                                              ; preds = %275, %105
  %109 = load i32, i32* %21, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %287

111:                                              ; preds = %108
  %112 = load i32, i32* %21, align 4
  %113 = sext i32 %112 to i64
  %114 = icmp ult i64 %113, 16
  br i1 %114, label %115, label %122

115:                                              ; preds = %111
  %116 = load %struct.device*, %struct.device** %7, align 8
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %21, align 4
  %119 = load i32, i32* %21, align 4
  %120 = call i32 @plural(i32 %119)
  %121 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %116, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %117, i32 %118, i32 %120)
  br label %287

122:                                              ; preds = %111
  %123 = load i8*, i8** %20, align 8
  %124 = bitcast i8* %123 to %struct.usb_descriptor_header*
  store %struct.usb_descriptor_header* %124, %struct.usb_descriptor_header** %22, align 8
  %125 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %22, align 8
  %126 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %21, align 4
  %129 = icmp sgt i32 %127, %128
  br i1 %129, label %135, label %130

130:                                              ; preds = %122
  %131 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %22, align 8
  %132 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp slt i32 %133, 2
  br i1 %134, label %135, label %142

135:                                              ; preds = %130, %122
  %136 = load %struct.device*, %struct.device** %7, align 8
  %137 = load i32, i32* %13, align 4
  %138 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %22, align 8
  %139 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %136, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0), i32 %137, i32 %140)
  br label %287

142:                                              ; preds = %130
  %143 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %22, align 8
  %144 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @USB_DT_INTERFACE, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %227

148:                                              ; preds = %142
  %149 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %22, align 8
  %150 = bitcast %struct.usb_descriptor_header* %149 to %struct.usb_interface_descriptor*
  store %struct.usb_interface_descriptor* %150, %struct.usb_interface_descriptor** %30, align 8
  %151 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %30, align 8
  %152 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @USB_DT_INTERFACE_SIZE, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %163

156:                                              ; preds = %148
  %157 = load %struct.device*, %struct.device** %7, align 8
  %158 = load i32, i32* %13, align 4
  %159 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %30, align 8
  %160 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %157, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0), i32 %158, i32 %161)
  br label %275

163:                                              ; preds = %148
  %164 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %30, align 8
  %165 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %31, align 4
  %167 = load i32, i32* %31, align 4
  %168 = load i32, i32* %15, align 4
  %169 = icmp sge i32 %167, %168
  br i1 %169, label %170, label %177

170:                                              ; preds = %163
  %171 = load %struct.device*, %struct.device** %7, align 8
  %172 = load i32, i32* %13, align 4
  %173 = load i32, i32* %31, align 4
  %174 = load i32, i32* %15, align 4
  %175 = sub nsw i32 %174, 1
  %176 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %171, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i32 %172, i32 %173, i32 %175)
  br label %177

177:                                              ; preds = %170, %163
  store i32 0, i32* %16, align 4
  br label %178

178:                                              ; preds = %191, %177
  %179 = load i32, i32* %16, align 4
  %180 = load i32, i32* %18, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %194

182:                                              ; preds = %178
  %183 = load i32, i32* %16, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %36, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %31, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %182
  br label %194

190:                                              ; preds = %182
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %16, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %16, align 4
  br label %178

194:                                              ; preds = %189, %178
  %195 = load i32, i32* %16, align 4
  %196 = load i32, i32* %18, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %211

198:                                              ; preds = %194
  %199 = load i32, i32* %16, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %39, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = icmp slt i32 %202, 255
  br i1 %203, label %204, label %210

204:                                              ; preds = %198
  %205 = load i32, i32* %16, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %39, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %207, align 4
  br label %210

210:                                              ; preds = %204, %198
  br label %226

211:                                              ; preds = %194
  %212 = load i32, i32* %18, align 4
  %213 = load i32, i32* @USB_MAXINTERFACES, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %225

215:                                              ; preds = %211
  %216 = load i32, i32* %31, align 4
  %217 = load i32, i32* %18, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %36, i64 %218
  store i32 %216, i32* %219, align 4
  %220 = load i32, i32* %18, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %39, i64 %221
  store i32 1, i32* %222, align 4
  %223 = load i32, i32* %18, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %18, align 4
  br label %225

225:                                              ; preds = %215, %211
  br label %226

226:                                              ; preds = %225, %210
  br label %274

227:                                              ; preds = %142
  %228 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %22, align 8
  %229 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @USB_DT_INTERFACE_ASSOCIATION, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %253

233:                                              ; preds = %227
  %234 = load i32, i32* %28, align 4
  %235 = load i32, i32* @USB_MAXIADS, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %241

237:                                              ; preds = %233
  %238 = load %struct.device*, %struct.device** %7, align 8
  %239 = load i32, i32* %13, align 4
  %240 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %238, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.6, i64 0, i64 0), i32 %239)
  br label %252

241:                                              ; preds = %233
  %242 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %22, align 8
  %243 = bitcast %struct.usb_descriptor_header* %242 to %struct.usb_interface_assoc_descriptor*
  %244 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %245 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %244, i32 0, i32 4
  %246 = load %struct.usb_interface_assoc_descriptor**, %struct.usb_interface_assoc_descriptor*** %245, align 8
  %247 = load i32, i32* %28, align 4
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %246, i64 %248
  store %struct.usb_interface_assoc_descriptor* %243, %struct.usb_interface_assoc_descriptor** %249, align 8
  %250 = load i32, i32* %28, align 4
  %251 = add i32 %250, 1
  store i32 %251, i32* %28, align 4
  br label %252

252:                                              ; preds = %241, %237
  br label %273

253:                                              ; preds = %227
  %254 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %22, align 8
  %255 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @USB_DT_DEVICE, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %265, label %259

259:                                              ; preds = %253
  %260 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %22, align 8
  %261 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @USB_DT_CONFIG, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %272

265:                                              ; preds = %259, %253
  %266 = load %struct.device*, %struct.device** %7, align 8
  %267 = load i32, i32* %13, align 4
  %268 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %22, align 8
  %269 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %266, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i64 0, i64 0), i32 %267, i64 %270)
  br label %272

272:                                              ; preds = %265, %259
  br label %273

273:                                              ; preds = %272, %252
  br label %274

274:                                              ; preds = %273, %226
  br label %275

275:                                              ; preds = %274, %156
  %276 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %22, align 8
  %277 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load i8*, i8** %20, align 8
  %280 = sext i32 %278 to i64
  %281 = getelementptr inbounds i8, i8* %279, i64 %280
  store i8* %281, i8** %20, align 8
  %282 = load %struct.usb_descriptor_header*, %struct.usb_descriptor_header** %22, align 8
  %283 = getelementptr inbounds %struct.usb_descriptor_header, %struct.usb_descriptor_header* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* %21, align 4
  %286 = sub nsw i32 %285, %284
  store i32 %286, i32* %21, align 4
  br label %108

287:                                              ; preds = %135, %115, %108
  %288 = load i8*, i8** %20, align 8
  %289 = load i8*, i8** %10, align 8
  %290 = ptrtoint i8* %288 to i64
  %291 = ptrtoint i8* %289 to i64
  %292 = sub i64 %290, %291
  %293 = trunc i64 %292 to i32
  store i32 %293, i32* %11, align 4
  %294 = load i8*, i8** %20, align 8
  %295 = load i8*, i8** %12, align 8
  %296 = ptrtoint i8* %294 to i64
  %297 = ptrtoint i8* %295 to i64
  %298 = sub i64 %296, %297
  %299 = trunc i64 %298 to i32
  %300 = call i32 @cpu_to_le16(i32 %299)
  %301 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %302 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %301, i32 0, i32 3
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 4
  store i32 %300, i32* %303, align 8
  %304 = load i32, i32* %18, align 4
  %305 = load i32, i32* %14, align 4
  %306 = icmp ne i32 %304, %305
  br i1 %306, label %307, label %315

307:                                              ; preds = %287
  %308 = load %struct.device*, %struct.device** %7, align 8
  %309 = load i32, i32* %13, align 4
  %310 = load i32, i32* %18, align 4
  %311 = load i32, i32* %18, align 4
  %312 = call i32 @plural(i32 %311)
  %313 = load i32, i32* %15, align 4
  %314 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %308, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8, i64 0, i64 0), i32 %309, i32 %310, i32 %312, i32 %313)
  br label %323

315:                                              ; preds = %287
  %316 = load i32, i32* %18, align 4
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %322

318:                                              ; preds = %315
  %319 = load %struct.device*, %struct.device** %7, align 8
  %320 = load i32, i32* %13, align 4
  %321 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %319, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %320)
  br label %322

322:                                              ; preds = %318, %315
  br label %323

323:                                              ; preds = %322, %307
  %324 = load i32, i32* %18, align 4
  store i32 %324, i32* %14, align 4
  %325 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %326 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %325, i32 0, i32 3
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 3
  store i32 %324, i32* %327, align 4
  store i32 0, i32* %16, align 4
  br label %328

328:                                              ; preds = %359, %323
  %329 = load i32, i32* %16, align 4
  %330 = load i32, i32* %14, align 4
  %331 = icmp slt i32 %329, %330
  br i1 %331, label %332, label %362

332:                                              ; preds = %328
  store i32 0, i32* %17, align 4
  br label %333

333:                                              ; preds = %346, %332
  %334 = load i32, i32* %17, align 4
  %335 = load i32, i32* %14, align 4
  %336 = icmp slt i32 %334, %335
  br i1 %336, label %337, label %349

337:                                              ; preds = %333
  %338 = load i32, i32* %17, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %36, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* %16, align 4
  %343 = icmp eq i32 %341, %342
  br i1 %343, label %344, label %345

344:                                              ; preds = %337
  br label %349

345:                                              ; preds = %337
  br label %346

346:                                              ; preds = %345
  %347 = load i32, i32* %17, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %17, align 4
  br label %333

349:                                              ; preds = %344, %333
  %350 = load i32, i32* %17, align 4
  %351 = load i32, i32* %14, align 4
  %352 = icmp sge i32 %350, %351
  br i1 %352, label %353, label %358

353:                                              ; preds = %349
  %354 = load %struct.device*, %struct.device** %7, align 8
  %355 = load i32, i32* %13, align 4
  %356 = load i32, i32* %16, align 4
  %357 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %354, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i32 %355, i32 %356)
  br label %358

358:                                              ; preds = %353, %349
  br label %359

359:                                              ; preds = %358
  %360 = load i32, i32* %16, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %16, align 4
  br label %328

362:                                              ; preds = %328
  store i32 0, i32* %16, align 4
  br label %363

363:                                              ; preds = %413, %362
  %364 = load i32, i32* %16, align 4
  %365 = load i32, i32* %14, align 4
  %366 = icmp slt i32 %364, %365
  br i1 %366, label %367, label %416

367:                                              ; preds = %363
  %368 = load i32, i32* %16, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %39, i64 %369
  %371 = load i32, i32* %370, align 4
  store i32 %371, i32* %17, align 4
  %372 = load i32, i32* %17, align 4
  %373 = load i32, i32* @USB_MAXALTSETTING, align 4
  %374 = icmp sgt i32 %372, %373
  br i1 %374, label %375, label %389

375:                                              ; preds = %367
  %376 = load %struct.device*, %struct.device** %7, align 8
  %377 = load i32, i32* %13, align 4
  %378 = load i32, i32* %16, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i32, i32* %36, i64 %379
  %381 = load i32, i32* %380, align 4
  %382 = load i32, i32* %17, align 4
  %383 = load i32, i32* @USB_MAXALTSETTING, align 4
  %384 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %376, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.11, i64 0, i64 0), i32 %377, i32 %381, i32 %382, i32 %383)
  %385 = load i32, i32* @USB_MAXALTSETTING, align 4
  store i32 %385, i32* %17, align 4
  %386 = load i32, i32* %16, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %39, i64 %387
  store i32 %385, i32* %388, align 4
  br label %389

389:                                              ; preds = %375, %367
  %390 = load i32, i32* %17, align 4
  %391 = sext i32 %390 to i64
  %392 = mul i64 4, %391
  %393 = add i64 24, %392
  %394 = trunc i64 %393 to i32
  store i32 %394, i32* %23, align 4
  %395 = load i32, i32* %23, align 4
  %396 = load i32, i32* @GFP_KERNEL, align 4
  %397 = call %struct.usb_interface_cache* @kzalloc(i32 %395, i32 %396)
  store %struct.usb_interface_cache* %397, %struct.usb_interface_cache** %19, align 8
  %398 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %399 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %398, i32 0, i32 2
  %400 = load %struct.usb_interface_cache**, %struct.usb_interface_cache*** %399, align 8
  %401 = load i32, i32* %16, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds %struct.usb_interface_cache*, %struct.usb_interface_cache** %400, i64 %402
  store %struct.usb_interface_cache* %397, %struct.usb_interface_cache** %403, align 8
  %404 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %19, align 8
  %405 = icmp ne %struct.usb_interface_cache* %404, null
  br i1 %405, label %409, label %406

406:                                              ; preds = %389
  %407 = load i32, i32* @ENOMEM, align 4
  %408 = sub nsw i32 0, %407
  store i32 %408, i32* %6, align 4
  store i32 1, i32* %29, align 4
  br label %533

409:                                              ; preds = %389
  %410 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %19, align 8
  %411 = getelementptr inbounds %struct.usb_interface_cache, %struct.usb_interface_cache* %410, i32 0, i32 2
  %412 = call i32 @kref_init(i32* %411)
  br label %413

413:                                              ; preds = %409
  %414 = load i32, i32* %16, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %16, align 4
  br label %363

416:                                              ; preds = %363
  %417 = load i8*, i8** %10, align 8
  %418 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %419 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %418, i32 0, i32 0
  store i8* %417, i8** %419, align 8
  %420 = load i8*, i8** %10, align 8
  %421 = load i32, i32* %11, align 4
  %422 = load i64, i64* @USB_DT_INTERFACE, align 8
  %423 = load i64, i64* @USB_DT_INTERFACE, align 8
  %424 = call i32 @find_next_descriptor(i8* %420, i32 %421, i64 %422, i64 %423, i32* %18)
  store i32 %424, i32* %16, align 4
  %425 = load i32, i32* %16, align 4
  %426 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %427 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %426, i32 0, i32 1
  store i32 %425, i32* %427, align 8
  %428 = load i32, i32* %18, align 4
  %429 = icmp sgt i32 %428, 0
  br i1 %429, label %430, label %436

430:                                              ; preds = %416
  %431 = load %struct.device*, %struct.device** %7, align 8
  %432 = load i32, i32* %18, align 4
  %433 = load i32, i32* %18, align 4
  %434 = call i32 @plural(i32 %433)
  %435 = call i32 @dev_dbg(%struct.device* %431, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i32 %432, i32 %434, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  br label %436

436:                                              ; preds = %430, %416
  %437 = load i32, i32* %16, align 4
  %438 = load i8*, i8** %10, align 8
  %439 = sext i32 %437 to i64
  %440 = getelementptr inbounds i8, i8* %438, i64 %439
  store i8* %440, i8** %10, align 8
  %441 = load i32, i32* %16, align 4
  %442 = load i32, i32* %11, align 4
  %443 = sub nsw i32 %442, %441
  store i32 %443, i32* %11, align 4
  br label %444

444:                                              ; preds = %458, %436
  %445 = load i32, i32* %11, align 4
  %446 = icmp sgt i32 %445, 0
  br i1 %446, label %447, label %466

447:                                              ; preds = %444
  %448 = load %struct.device*, %struct.device** %7, align 8
  %449 = load i32, i32* %13, align 4
  %450 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %451 = load i8*, i8** %10, align 8
  %452 = load i32, i32* %11, align 4
  %453 = call i32 @usb_parse_interface(%struct.device* %448, i32 %449, %struct.usb_host_config* %450, i8* %451, i32 %452, i32* %36, i32* %39)
  store i32 %453, i32* %24, align 4
  %454 = load i32, i32* %24, align 4
  %455 = icmp slt i32 %454, 0
  br i1 %455, label %456, label %458

456:                                              ; preds = %447
  %457 = load i32, i32* %24, align 4
  store i32 %457, i32* %6, align 4
  store i32 1, i32* %29, align 4
  br label %533

458:                                              ; preds = %447
  %459 = load i32, i32* %24, align 4
  %460 = load i8*, i8** %10, align 8
  %461 = sext i32 %459 to i64
  %462 = getelementptr inbounds i8, i8* %460, i64 %461
  store i8* %462, i8** %10, align 8
  %463 = load i32, i32* %24, align 4
  %464 = load i32, i32* %11, align 4
  %465 = sub nsw i32 %464, %463
  store i32 %465, i32* %11, align 4
  br label %444

466:                                              ; preds = %444
  store i32 0, i32* %16, align 4
  br label %467

467:                                              ; preds = %529, %466
  %468 = load i32, i32* %16, align 4
  %469 = load i32, i32* %14, align 4
  %470 = icmp slt i32 %468, %469
  br i1 %470, label %471, label %532

471:                                              ; preds = %467
  %472 = load %struct.usb_host_config*, %struct.usb_host_config** %9, align 8
  %473 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %472, i32 0, i32 2
  %474 = load %struct.usb_interface_cache**, %struct.usb_interface_cache*** %473, align 8
  %475 = load i32, i32* %16, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds %struct.usb_interface_cache*, %struct.usb_interface_cache** %474, i64 %476
  %478 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %477, align 8
  store %struct.usb_interface_cache* %478, %struct.usb_interface_cache** %19, align 8
  store i32 0, i32* %17, align 4
  br label %479

479:                                              ; preds = %525, %471
  %480 = load i32, i32* %17, align 4
  %481 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %19, align 8
  %482 = getelementptr inbounds %struct.usb_interface_cache, %struct.usb_interface_cache* %481, i32 0, i32 0
  %483 = load i32, i32* %482, align 8
  %484 = icmp slt i32 %480, %483
  br i1 %484, label %485, label %528

485:                                              ; preds = %479
  store i32 0, i32* %18, align 4
  br label %486

486:                                              ; preds = %506, %485
  %487 = load i32, i32* %18, align 4
  %488 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %19, align 8
  %489 = getelementptr inbounds %struct.usb_interface_cache, %struct.usb_interface_cache* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 8
  %491 = icmp slt i32 %487, %490
  br i1 %491, label %492, label %509

492:                                              ; preds = %486
  %493 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %19, align 8
  %494 = getelementptr inbounds %struct.usb_interface_cache, %struct.usb_interface_cache* %493, i32 0, i32 1
  %495 = load %struct.TYPE_5__*, %struct.TYPE_5__** %494, align 8
  %496 = load i32, i32* %18, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %495, i64 %497
  %499 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %498, i32 0, i32 0
  %500 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 4
  %502 = load i32, i32* %17, align 4
  %503 = icmp eq i32 %501, %502
  br i1 %503, label %504, label %505

504:                                              ; preds = %492
  br label %509

505:                                              ; preds = %492
  br label %506

506:                                              ; preds = %505
  %507 = load i32, i32* %18, align 4
  %508 = add nsw i32 %507, 1
  store i32 %508, i32* %18, align 4
  br label %486

509:                                              ; preds = %504, %486
  %510 = load i32, i32* %18, align 4
  %511 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %19, align 8
  %512 = getelementptr inbounds %struct.usb_interface_cache, %struct.usb_interface_cache* %511, i32 0, i32 0
  %513 = load i32, i32* %512, align 8
  %514 = icmp sge i32 %510, %513
  br i1 %514, label %515, label %524

515:                                              ; preds = %509
  %516 = load %struct.device*, %struct.device** %7, align 8
  %517 = load i32, i32* %13, align 4
  %518 = load i32, i32* %16, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds i32, i32* %36, i64 %519
  %521 = load i32, i32* %520, align 4
  %522 = load i32, i32* %17, align 4
  %523 = call i32 (%struct.device*, i8*, i32, ...) @dev_warn(%struct.device* %516, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0), i32 %517, i32 %521, i32 %522)
  br label %524

524:                                              ; preds = %515, %509
  br label %525

525:                                              ; preds = %524
  %526 = load i32, i32* %17, align 4
  %527 = add nsw i32 %526, 1
  store i32 %527, i32* %17, align 4
  br label %479

528:                                              ; preds = %479
  br label %529

529:                                              ; preds = %528
  %530 = load i32, i32* %16, align 4
  %531 = add nsw i32 %530, 1
  store i32 %531, i32* %16, align 4
  br label %467

532:                                              ; preds = %467
  store i32 0, i32* %6, align 4
  store i32 1, i32* %29, align 4
  br label %533

533:                                              ; preds = %532, %456, %406, %58
  %534 = load i8*, i8** %25, align 8
  call void @llvm.stackrestore(i8* %534)
  %535 = load i32, i32* %6, align 4
  ret i32 %535
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, i8*, i64) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i64, i64) #2

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, ...) #2

declare dso_local i32 @plural(i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local %struct.usb_interface_cache* @kzalloc(i32, i32) #2

declare dso_local i32 @kref_init(i32*) #2

declare dso_local i32 @find_next_descriptor(i8*, i32, i64, i64, i32*) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i8*) #2

declare dso_local i32 @usb_parse_interface(%struct.device*, i32, %struct.usb_host_config*, i8*, i32, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
