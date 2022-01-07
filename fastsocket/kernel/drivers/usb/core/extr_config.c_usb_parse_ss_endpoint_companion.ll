; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_config.c_usb_parse_ss_endpoint_companion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_config.c_usb_parse_ss_endpoint_companion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.usb_host_endpoint = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i8*, i32, %struct.usb_ss_ep_comp_descriptor }
%struct.usb_ss_ep_comp_descriptor = type { i64, i32, i32, i32, i64 }

@USB_DT_SS_ENDPOINT_COMP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [104 x i8] c"No SuperSpeed endpoint companion for config %d  interface %d altsetting %d ep %d: using minimum values\0A\00", align 1
@USB_DT_SS_EP_COMP_SIZE = common dso_local global i32 0, align 4
@USB_DT_ENDPOINT = common dso_local global i32 0, align 4
@USB_DT_INTERFACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"skipped %d descriptor%s after %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"SuperSpeed endpoint companion\00", align 1
@.str.3 = private unnamed_addr constant [101 x i8] c"Control endpoint with bMaxBurst = %d in config %d interface %d altsetting %d ep %d: setting to zero\0A\00", align 1
@.str.4 = private unnamed_addr constant [91 x i8] c"Endpoint with bMaxBurst = %d in config %d interface %d altsetting %d ep %d: setting to 15\0A\00", align 1
@.str.5 = private unnamed_addr constant [99 x i8] c"%s endpoint with bmAttributes = %d in config %d interface %d altsetting %d ep %d: setting to zero\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Control\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Bulk\00", align 1
@.str.8 = private unnamed_addr constant [106 x i8] c"Bulk endpoint with more than 65536 streams in config %d interface %d altsetting %d ep %d: setting to max\0A\00", align 1
@.str.9 = private unnamed_addr constant [90 x i8] c"Isoc endpoint has Mult of %d in config %d interface %d altsetting %d ep %d: setting to 3\0A\00", align 1
@.str.10 = private unnamed_addr constant [103 x i8] c"%s endpoint with wBytesPerInterval of %d in config %d interface %d altsetting %d ep %d: setting to %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"Isoc\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"Int\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i32, %struct.usb_host_endpoint*, i32, i8*, i32)* @usb_parse_ss_endpoint_companion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_parse_ss_endpoint_companion(%struct.device* %0, i32 %1, i32 %2, i32 %3, %struct.usb_host_endpoint* %4, i32 %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.usb_host_endpoint*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.usb_ss_ep_comp_descriptor*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store %struct.usb_host_endpoint* %4, %struct.usb_host_endpoint** %14, align 8
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %24 = load i8*, i8** %16, align 8
  store i8* %24, i8** %18, align 8
  %25 = load i8*, i8** %16, align 8
  %26 = bitcast i8* %25 to %struct.usb_ss_ep_comp_descriptor*
  store %struct.usb_ss_ep_comp_descriptor* %26, %struct.usb_ss_ep_comp_descriptor** %19, align 8
  %27 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %19, align 8
  %28 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @USB_DT_SS_ENDPOINT_COMP, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %8
  %33 = load %struct.device*, %struct.device** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %38 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %33, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35, i32 %36, i32 %40)
  store i32 0, i32* %9, align 4
  br label %305

42:                                               ; preds = %8
  %43 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %44 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %19, align 8
  %48 = load i32, i32* @USB_DT_SS_EP_COMP_SIZE, align 4
  %49 = call i32 @memcpy(%struct.usb_ss_ep_comp_descriptor* %46, %struct.usb_ss_ep_comp_descriptor* %47, i32 %48)
  %50 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %51 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  store %struct.usb_ss_ep_comp_descriptor* %53, %struct.usb_ss_ep_comp_descriptor** %19, align 8
  %54 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %19, align 8
  %55 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = load i8*, i8** %16, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 %56
  store i8* %58, i8** %16, align 8
  %59 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %19, align 8
  %60 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %17, align 4
  %63 = sext i32 %62 to i64
  %64 = sub nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %17, align 4
  %66 = load i8*, i8** %16, align 8
  %67 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %68 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i8* %66, i8** %70, align 8
  %71 = load i8*, i8** %16, align 8
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* @USB_DT_ENDPOINT, align 4
  %74 = load i32, i32* @USB_DT_INTERFACE, align 4
  %75 = call i32 @find_next_descriptor(i8* %71, i32 %72, i32 %73, i32 %74, i32* %21)
  store i32 %75, i32* %23, align 4
  %76 = load i32, i32* %23, align 4
  %77 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %78 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %77, i32 0, i32 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  store i32 %76, i32* %80, align 8
  %81 = load i32, i32* %23, align 4
  %82 = load i8*, i8** %16, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8* %84, i8** %16, align 8
  %85 = load i32, i32* %23, align 4
  %86 = load i32, i32* %17, align 4
  %87 = sub nsw i32 %86, %85
  store i32 %87, i32* %17, align 4
  %88 = load i8*, i8** %16, align 8
  %89 = load i8*, i8** %18, align 8
  %90 = ptrtoint i8* %88 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %20, align 4
  %94 = load i32, i32* %21, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %42
  %97 = load %struct.device*, %struct.device** %10, align 8
  %98 = load i32, i32* %21, align 4
  %99 = load i32, i32* %21, align 4
  %100 = call i32 @plural(i32 %99)
  %101 = call i32 @dev_dbg(%struct.device* %97, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %98, i32 %100, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %102

102:                                              ; preds = %96, %42
  %103 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %104 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %103, i32 0, i32 0
  %105 = call i64 @usb_endpoint_xfer_control(%struct.TYPE_7__* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %127

107:                                              ; preds = %102
  %108 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %19, align 8
  %109 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %127

112:                                              ; preds = %107
  %113 = load %struct.device*, %struct.device** %10, align 8
  %114 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %19, align 8
  %115 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %13, align 4
  %120 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %121 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %113, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.3, i64 0, i64 0), i32 %116, i32 %117, i32 %118, i32 %119, i32 %123)
  %125 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %19, align 8
  %126 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %125, i32 0, i32 1
  store i32 0, i32* %126, align 8
  br label %127

127:                                              ; preds = %112, %107, %102
  %128 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %19, align 8
  %129 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = icmp sgt i32 %130, 15
  br i1 %131, label %132, label %147

132:                                              ; preds = %127
  %133 = load %struct.device*, %struct.device** %10, align 8
  %134 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %19, align 8
  %135 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* %13, align 4
  %140 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %141 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %133, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.4, i64 0, i64 0), i32 %136, i32 %137, i32 %138, i32 %139, i32 %143)
  %145 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %19, align 8
  %146 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %145, i32 0, i32 1
  store i32 15, i32* %146, align 8
  br label %147

147:                                              ; preds = %132, %127
  %148 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %149 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %148, i32 0, i32 0
  %150 = call i64 @usb_endpoint_xfer_control(%struct.TYPE_7__* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %147
  %153 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %154 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %153, i32 0, i32 0
  %155 = call i64 @usb_endpoint_xfer_int(%struct.TYPE_7__* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %183

157:                                              ; preds = %152, %147
  %158 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %19, align 8
  %159 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %183

162:                                              ; preds = %157
  %163 = load %struct.device*, %struct.device** %10, align 8
  %164 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %165 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %164, i32 0, i32 0
  %166 = call i64 @usb_endpoint_xfer_control(%struct.TYPE_7__* %165)
  %167 = icmp ne i64 %166, 0
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)
  %170 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %19, align 8
  %171 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* %13, align 4
  %176 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %177 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %163, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.5, i64 0, i64 0), i8* %169, i32 %172, i32 %173, i32 %174, i32 %175, i32 %179)
  %181 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %19, align 8
  %182 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %181, i32 0, i32 2
  store i32 0, i32* %182, align 4
  br label %183

183:                                              ; preds = %162, %157, %152
  %184 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %185 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %184, i32 0, i32 0
  %186 = call i64 @usb_endpoint_xfer_bulk(%struct.TYPE_7__* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %205

188:                                              ; preds = %183
  %189 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %19, align 8
  %190 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = icmp sgt i32 %191, 16
  br i1 %192, label %193, label %205

193:                                              ; preds = %188
  %194 = load %struct.device*, %struct.device** %10, align 8
  %195 = load i32, i32* %11, align 4
  %196 = load i32, i32* %12, align 4
  %197 = load i32, i32* %13, align 4
  %198 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %199 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %194, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.8, i64 0, i64 0), i32 %195, i32 %196, i32 %197, i32 %201)
  %203 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %19, align 8
  %204 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %203, i32 0, i32 2
  store i32 16, i32* %204, align 4
  br label %205

205:                                              ; preds = %193, %188, %183
  %206 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %207 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %206, i32 0, i32 0
  %208 = call i64 @usb_endpoint_xfer_isoc(%struct.TYPE_7__* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %231

210:                                              ; preds = %205
  %211 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %19, align 8
  %212 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = icmp sgt i32 %213, 2
  br i1 %214, label %215, label %231

215:                                              ; preds = %210
  %216 = load %struct.device*, %struct.device** %10, align 8
  %217 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %19, align 8
  %218 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = add nsw i32 %219, 1
  %221 = load i32, i32* %11, align 4
  %222 = load i32, i32* %12, align 4
  %223 = load i32, i32* %13, align 4
  %224 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %225 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %216, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.9, i64 0, i64 0), i32 %220, i32 %221, i32 %222, i32 %223, i32 %227)
  %229 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %19, align 8
  %230 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %229, i32 0, i32 2
  store i32 2, i32* %230, align 4
  br label %231

231:                                              ; preds = %215, %210, %205
  %232 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %233 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %232, i32 0, i32 0
  %234 = call i64 @usb_endpoint_xfer_isoc(%struct.TYPE_7__* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %252

236:                                              ; preds = %231
  %237 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %19, align 8
  %238 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = add nsw i32 %239, 1
  %241 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %19, align 8
  %242 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = add nsw i32 %243, 1
  %245 = mul nsw i32 %240, %244
  %246 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %247 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @le16_to_cpu(i32 %249)
  %251 = mul nsw i32 %245, %250
  store i32 %251, i32* %22, align 4
  br label %270

252:                                              ; preds = %231
  %253 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %254 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %253, i32 0, i32 0
  %255 = call i64 @usb_endpoint_xfer_int(%struct.TYPE_7__* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %268

257:                                              ; preds = %252
  %258 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %259 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @le16_to_cpu(i32 %261)
  %263 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %19, align 8
  %264 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = add nsw i32 %265, 1
  %267 = mul nsw i32 %262, %266
  store i32 %267, i32* %22, align 4
  br label %269

268:                                              ; preds = %252
  br label %303

269:                                              ; preds = %257
  br label %270

270:                                              ; preds = %269, %236
  %271 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %19, align 8
  %272 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @le16_to_cpu(i32 %273)
  %275 = load i32, i32* %22, align 4
  %276 = icmp sgt i32 %274, %275
  br i1 %276, label %277, label %302

277:                                              ; preds = %270
  %278 = load %struct.device*, %struct.device** %10, align 8
  %279 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %280 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %279, i32 0, i32 0
  %281 = call i64 @usb_endpoint_xfer_isoc(%struct.TYPE_7__* %280)
  %282 = icmp ne i64 %281, 0
  %283 = zext i1 %282 to i64
  %284 = select i1 %282, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)
  %285 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %19, align 8
  %286 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 8
  %288 = call i32 @le16_to_cpu(i32 %287)
  %289 = load i32, i32* %11, align 4
  %290 = load i32, i32* %12, align 4
  %291 = load i32, i32* %13, align 4
  %292 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %14, align 8
  %293 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* %22, align 4
  %297 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %278, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.10, i64 0, i64 0), i8* %284, i32 %288, i32 %289, i32 %290, i32 %291, i32 %295, i32 %296)
  %298 = load i32, i32* %22, align 4
  %299 = call i32 @cpu_to_le16(i32 %298)
  %300 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %19, align 8
  %301 = getelementptr inbounds %struct.usb_ss_ep_comp_descriptor, %struct.usb_ss_ep_comp_descriptor* %300, i32 0, i32 3
  store i32 %299, i32* %301, align 8
  br label %302

302:                                              ; preds = %277, %270
  br label %303

303:                                              ; preds = %302, %268
  %304 = load i32, i32* %20, align 4
  store i32 %304, i32* %9, align 4
  br label %305

305:                                              ; preds = %303, %32
  %306 = load i32, i32* %9, align 4
  ret i32 %306
}

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i32 @memcpy(%struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor*, i32) #1

declare dso_local i32 @find_next_descriptor(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i8*) #1

declare dso_local i32 @plural(i32) #1

declare dso_local i64 @usb_endpoint_xfer_control(%struct.TYPE_7__*) #1

declare dso_local i64 @usb_endpoint_xfer_int(%struct.TYPE_7__*) #1

declare dso_local i64 @usb_endpoint_xfer_bulk(%struct.TYPE_7__*) #1

declare dso_local i64 @usb_endpoint_xfer_isoc(%struct.TYPE_7__*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
